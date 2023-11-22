onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc"  -L xpm -L generic_baseblocks_v2_1_1 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_29 -L fifo_generator_v13_2_9 -L axi_data_fifo_v2_1_28 -L axi_crossbar_v2_1_30 -L xil_defaultlib -L axi_clock_converter_v2_1_28 -L axi_protocol_converter_v2_1_29 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_14 -L xlconstant_v1_1_8 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.axi_map xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {axi_map.udo}

run 1000ns

quit -force
