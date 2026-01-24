transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

vlib work
vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -incr  +define+den2048Mb= "+incdir+../../../ipstatic" -l xpm -l xil_defaultlib \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  -incr \
"/opt/Xilinx/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -v2k5  +define+den2048Mb= "+incdir+../../../ipstatic" -l xpm -l xil_defaultlib \
"../../../../SoomRV-Arty.gen/sources_1/ip/clk_wiz_5x/clk_wiz_5x_clk_wiz.v" \
"../../../../SoomRV-Arty.gen/sources_1/ip/clk_wiz_5x/clk_wiz_5x.v" \

vlog -work xil_defaultlib \
"glbl.v"

