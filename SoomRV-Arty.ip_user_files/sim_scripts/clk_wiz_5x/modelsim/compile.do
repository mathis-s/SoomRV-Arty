vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm -64 -incr -mfcu  -sv  +define+den2048Mb= "+incdir+../../../ipstatic" \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../ipstatic" \
"../../../../SoomRV-Arty.gen/sources_1/ip/clk_wiz_5x/clk_wiz_5x_clk_wiz.v" \
"../../../../SoomRV-Arty.gen/sources_1/ip/clk_wiz_5x/clk_wiz_5x.v" \

vlog -work xil_defaultlib \
"glbl.v"

