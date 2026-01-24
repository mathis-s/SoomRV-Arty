SOOMRV_DIR ?= SoomRV
SV2V ?= sv2v
YOSYS ?= yosys
YOSYS_SYNTH ?= synth

$(SOOMRV_DIR):
	git submodule update --init --recursive

.PHONY: bitstream
bitstream: SoomRV-Arty.runs/impl/Top_prog.bin

.PHONY: synth
synth: synth/SoC.edif
	cp -f synth/SoC.edif SoomRV-Arty.srcs/sources_1/new/SoC.edif

#	#$(SV2V) -E Logic -E Interface -E UnbasedUnsized -E Always
.PHONY: synth/SoC.v
synth/SoC.v: $(SOOMRV_DIR)
		$(SV2V) -E Logic -E Interface -E UnbasedUnsized -E Always \
			$(SOOMRV_DIR)/src/Config.sv \
			$(SOOMRV_DIR)/src/Include.sv \
			$(SOOMRV_DIR)/src/AGU.sv \
			$(SOOMRV_DIR)/src/BranchHandler.sv \
			$(SOOMRV_DIR)/src/BranchPredictionTable.sv \
			$(SOOMRV_DIR)/src/BranchPredictor.sv \
			$(SOOMRV_DIR)/src/BranchSelector.sv \
			$(SOOMRV_DIR)/src/BranchTargetBuffer.sv \
			$(SOOMRV_DIR)/src/BypassLSU.sv \
			$(SOOMRV_DIR)/src/CacheReadInterface.sv \
			$(SOOMRV_DIR)/src/CacheWriteInterface.sv \
			$(SOOMRV_DIR)/src/Core.sv \
			$(SOOMRV_DIR)/src/CSR.sv \
			$(SOOMRV_DIR)/src/Divide.sv \
			$(SOOMRV_DIR)/src/FDiv.sv \
			$(SOOMRV_DIR)/src/FIFO.sv \
			$(SOOMRV_DIR)/src/FMul.sv \
			$(SOOMRV_DIR)/src/FPU.sv \
			$(SOOMRV_DIR)/src/IFetchPipeline.sv \
			$(SOOMRV_DIR)/src/IFetch.sv \
			$(SOOMRV_DIR)/src/InstrDecoder.sv \
			$(SOOMRV_DIR)/src/IntALU.sv \
			$(SOOMRV_DIR)/src/IssueQueue.sv \
			$(SOOMRV_DIR)/src/LoadBuffer.sv \
			$(SOOMRV_DIR)/src/LoadResultBuffer.sv \
			$(SOOMRV_DIR)/src/LoadSelector.sv \
			$(SOOMRV_DIR)/src/LoadStoreUnit.sv \
			$(SOOMRV_DIR)/src/Load.sv \
			$(SOOMRV_DIR)/src/LZCnt.sv \
			$(SOOMRV_DIR)/src/MemoryController.sv \
			$(SOOMRV_DIR)/src/MemRTL2W.sv \
			$(SOOMRV_DIR)/src/MemRTL.sv \
			$(SOOMRV_DIR)/src/MMIO.sv \
			$(SOOMRV_DIR)/src/Multiply.sv \
			$(SOOMRV_DIR)/src/OHEncoder.sv \
			$(SOOMRV_DIR)/src/PageWalker.sv \
			$(SOOMRV_DIR)/src/Peripherals.sv \
			$(SOOMRV_DIR)/src/PopCnt.sv \
			$(SOOMRV_DIR)/src/PriorityEncoder.sv \
			$(SOOMRV_DIR)/src/RangeMaskGen.sv \
			$(SOOMRV_DIR)/src/RegFileRTL.sv \
			$(SOOMRV_DIR)/src/Rename.sv \
			$(SOOMRV_DIR)/src/RenameTable.sv \
			$(SOOMRV_DIR)/src/ReturnStack.sv \
			$(SOOMRV_DIR)/src/ROB.sv \
			$(SOOMRV_DIR)/src/SoC.sv \
			$(SOOMRV_DIR)/src/StoreDataIQ.sv \
			$(SOOMRV_DIR)/src/StoreDataLoad.sv \
			$(SOOMRV_DIR)/src/StoreQueueBackend.sv \
			$(SOOMRV_DIR)/src/StoreQueue.sv \
			$(SOOMRV_DIR)/src/TagBuffer.sv \
			$(SOOMRV_DIR)/src/TagePredictor.sv \
			$(SOOMRV_DIR)/src/TageTable.sv \
			$(SOOMRV_DIR)/src/TLBMissQueue.sv \
			$(SOOMRV_DIR)/src/TLB.sv \
			$(SOOMRV_DIR)/src/TrapHandler.sv \
			$(SOOMRV_DIR)/src/TValSelect.sv \
			$(SOOMRV_DIR)/src/Scheduler.sv \
			$(SOOMRV_DIR)/src/ResultFlagsSplit.sv \
			$(SOOMRV_DIR)/src/InstrAligner.sv \
			$(SOOMRV_DIR)/src/RFReadMux.sv \
			$(SOOMRV_DIR)/src/CacheArbiter.sv \
			$(SOOMRV_DIR)/src/MemRTL1RW.sv \
			| sed -re "s/(input|output) IF_/IF_/g" > $@

# ^ run a sed on the output to remove input/output from in front of interfaces

synth/SoC.edif: synth/SoC.v
	yosys -s synth.yosys

boot_image/boot_image.bin: $(SOOMRV_DIR)
	make -C $(SOOMRV_DIR)/test_programs/linux
	cp $(SOOMRV_DIR)/test_programs/linux/linux_image.bin boot_image/linux_image.bin
	make -C boot_image

# to create the final SPI flash image, we append the linux image to the FPGA bitstream
SoomRV-Arty.runs/impl/Top_prog.bin: SoomRV-Arty.runs/impl/Top.bin boot_image/boot_image.bin
	cp -f SoomRV-Arty.runs/impl/Top.bin $@
	cat boot_image/boot_image.bin >> $@

.PHONY: clean
clean:
	$(RM) -r synth/SoC.edif boot_image/boot_image.bin boot_image/linux_image.bin $(SOOMRV_DIR)
