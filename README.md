# SoomRV on the Genesys
This repo contains everything to synthesize SoomRV for the Genesys 2 devboard and run Linux on the synthesized core.

## Running
### Option 1: Precompiled Image
Simply write the included `Top_prog.bin` image onto the Arty's configuration SPI flash. This includes both FPGA configuration and a compressed Linux image.
After flashing, press the PROG button on the Arty. You can interact with the system via the built-in MicroUSB UART at 1152000 baud (1 stop cycle, no parity). You can log in as `root`, no password. There's no compiler, but `as` and `ld` are included in the image. Run `make` in the home directory to assemble a hello world program. For editing, use `vi`.

### Option 2: Re-build
- Run `make synth` to synthesize the SoomRV core with sv2v and Yosys. This generates the `SoC.edif` file.
- Open the project in Vivado. Vivado will automatically detect that `SoC.edif` has been modified, just re-run implementation to create a bitstream.
- Run `make bitstream` to compile and append the Linux image to the Vivado-generated bitstream.
- Flash the `Top_prog.bin` file to the configuration memory as in Option 1.

## General
SoomRV runs at 50 MHz using the configuration in `src/Config.sv`. The core is connected to DRAM and peripherals via an AXI4 bus. The on-board 256MiB of DDR3 is used as main memory via Xilinx's MIG. Currently, the only peripheral is a simple 8250-style UART.

### Boot Process
SoomRV is not connected to any flash memory directly. Instead, the boot image is copied from SPI flash to `0x80000000` (DRAM base address) after reset. SPI flash can then no longer be accessed. This copying process is performed by `QSPIReader`.

After copying, SoomRV will begin executing the copied image at `0x80000000`. Initial boot code can be found in `boot_image/soomrv/kernel_decompress.S`, which decompresses Linux and copies the device tree to an appropriate address. It then simply jumps to the base address of the Linux image (with the address of the device tree in `a1`), which begins the regular boot process.

## To Do
 - UART interrupt
 - Filesystem on SDCard or similar (instead of volatile ramfs)

## External Source Code
 - [verilog-uart](https://github.com/amclain/verilog-uart) by Alex McLain
 - [FastLZ](https://github.com/ariya/FastLZ) by Ariya Hidayat
 - s25fl128s SPI Flash Verilog model by Infineon Technologies AG
 - Micron SDRAM DDR3 Verilog model by Micron Technology, Inc.
