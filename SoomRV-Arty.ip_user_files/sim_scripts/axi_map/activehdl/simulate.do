transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+axi_map  -L xpm -L generic_baseblocks_v2_1_2 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_31 -L fifo_generator_v13_2_10 -L axi_data_fifo_v2_1_30 -L axi_crossbar_v2_1_32 -L xil_defaultlib -L lib_cdc_v1_0_3 -L proc_sys_reset_v5_0_15 -L xlconstant_v1_1_9 -L xpm_cdc_gen_v1_0_4 -L jtag_axi -L axi_protocol_converter_v2_1_31 -L axi_clock_converter_v2_1_30 -L blk_mem_gen_v8_4_8 -L axi_dwidth_converter_v2_1_31 -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.axi_map xil_defaultlib.glbl

do {axi_map.udo}

run

endsim

quit -force
