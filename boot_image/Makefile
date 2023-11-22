
RV32_CC ?= riscv32-unknown-linux-gnu-gcc
RV32_OBJCOPY ?= riscv32-unknown-linux-gnu-objcopy
RV32_OBJDUMP ?= riscv32-unknown-linux-gnu-objdump

.PHONY: all
all: boot_image.bin

./host/compr: host/Main.c
	$(CC) -O2 $^ fastlz/fastlz.c -o $@

boot_image.bin: ./host/compr soomrv/kernel_decompress.S
# compress linux image
	./host/compr linux_image.bin image
# create device tree binary
	dtc -I dts -O dtb -o dtb soomrv/device_tree.dts
	riscv32-unknown-linux-gnu-gcc -march=rv32imac_zifencei_zicsr_zba_zbb -O1 -nostdlib -c soomrv/kernel_decompress.S fastlz/fastlz.c
# link linux image and device tree into dummy elf (can also be run by SoomRV testbench)
	riscv32-unknown-linux-gnu-ld -Tsoomrv/linker.ld -o linux_compr.elf kernel_decompress.o fastlz.o --format=binary image dtb --format=default
# extract elf sections into flat binary
	$(RV32_OBJCOPY) -I elf32-little -O binary linux_compr.elf $@
	$(RM) data.bin image dtb kernel_decompress.o fastlz.o

.PHONY: clean
clean:
	$(RM) ./host/compr boot_image.bin linux_compr.elf kernel_decompress.o fastlz.o
