vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/generic_baseblocks_v2_1_1
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_29
vlib questa_lib/msim/fifo_generator_v13_2_9
vlib questa_lib/msim/axi_data_fifo_v2_1_28
vlib questa_lib/msim/axi_crossbar_v2_1_30
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_clock_converter_v2_1_28
vlib questa_lib/msim/axi_protocol_converter_v2_1_29
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_14
vlib questa_lib/msim/xlconstant_v1_1_8

vmap xpm questa_lib/msim/xpm
vmap generic_baseblocks_v2_1_1 questa_lib/msim/generic_baseblocks_v2_1_1
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_29 questa_lib/msim/axi_register_slice_v2_1_29
vmap fifo_generator_v13_2_9 questa_lib/msim/fifo_generator_v13_2_9
vmap axi_data_fifo_v2_1_28 questa_lib/msim/axi_data_fifo_v2_1_28
vmap axi_crossbar_v2_1_30 questa_lib/msim/axi_crossbar_v2_1_30
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_clock_converter_v2_1_28 questa_lib/msim/axi_clock_converter_v2_1_28
vmap axi_protocol_converter_v2_1_29 questa_lib/msim/axi_protocol_converter_v2_1_29
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_14 questa_lib/msim/proc_sys_reset_v5_0_14
vmap xlconstant_v1_1_8 questa_lib/msim/xlconstant_v1_1_8

vlog -work xpm -64 -incr -mfcu  -sv  +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"/opt/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93  \
"/opt/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_1 -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/10ab/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_29 -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ff9f/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_9 -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ac72/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_9 -64 -93  \
"../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_9 -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ac72/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_28 -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/279e/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_30 -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/fb47/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"../../../bd/axi_map/ip/axi_map_xbar_0/sim/axi_map_xbar_0.v" \
"../../../bd/axi_map/ip/axi_map_s00_data_fifo_0/sim/axi_map_s00_data_fifo_0.v" \

vlog -work axi_clock_converter_v2_1_28 -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/769c/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"../../../bd/axi_map/ip/axi_map_auto_cc_0/sim/axi_map_auto_cc_0.v" \

vlog -work axi_protocol_converter_v2_1_29 -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/a63f/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"../../../bd/axi_map/ip/axi_map_auto_pc_0/sim/axi_map_auto_pc_0.v" \
"../../../bd/axi_map/ip/axi_map_clk_wiz_0_1/axi_map_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/axi_map/ip/axi_map_clk_wiz_0_1/axi_map_clk_wiz_0_1.v" \

vcom -work lib_cdc_v1_0_2 -64 -93  \
"../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_14 -64 -93  \
"../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/408c/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93  \
"../../../bd/axi_map/ip/axi_map_proc_sys_reset_0_1/sim/axi_map_proc_sys_reset_0_1.vhd" \

vlog -work xlconstant_v1_1_8 -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu   +define+den2048Mb= "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/ec67/hdl" "+incdir+../../../../SoomRV-Arty.gen/sources_1/bd/axi_map/ipshared/c2c6" \
"../../../bd/axi_map/ip/axi_map_xlconstant_0_0/sim/axi_map_xlconstant_0_0.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_tap_base.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_skip_calib_tap.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_samp.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_cntlr.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_top.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_lane.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_4lanes.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_prbs_gen.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_oclkdelay_cal.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_prbs_rdlvl.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_rdlvl.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_cc.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_calib_top.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_edge.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_of_pre_fifo.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrcal.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_top.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_mux.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_mc_phy_wrapper.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_edge_store.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_meta.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_if_post_fifo.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_data.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_init.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_ocd_lim.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_byte_group_io.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_poc_pd.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_wrlvl.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_2_ddr_phy_tempmon.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_cntrl.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_mux.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_select.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_queue.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_mach.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_state.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_rank_common.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_col_mach.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_mach.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_mc.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_compare.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_common.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_arb_row_col.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_bank_cntrl.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_2_round_robin_arb.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_gen.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_dec_fix.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_buf.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_fi_xor.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_2_ecc_merge_enc.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_memc_ui_top_axi.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_2_mem_intfc.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_incr_cmd.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wr_cmd_fsm.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_or.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_aw_channel.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_wrap_cmd.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axic_register_slice.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_r_channel.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_register_slice.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_r_upsizer.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_and.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_command_fifo.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_arbiter.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_simple_fifo.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_read.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_b_channel.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_latch_and.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_axi_upsizer.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_carry_or.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_translator.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_ar_channel.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_reg_bank.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_w_channel.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_fifo.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_top.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc_cmd_fsm.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_addr_decode.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_ctrl_write.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_w_upsizer.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_comparator_sel_static.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_axi_mc.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_2_ddr_a_upsizer.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_wr_data.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_top.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_rd_data.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_2_ui_cmd.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_infrastructure.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_clk_ibuf.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_iodelay_ctrl.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_2_tempmon.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi_map_mig_7series_0_0_mig_sim.v" \
"../../../bd/axi_map/ip/axi_map_mig_7series_0_0/axi_map_mig_7series_0_0/user_design/rtl/axi_map_mig_7series_0_0.v" \
"../../../bd/axi_map/ip/axi_map_UART8250Lite_0_0/sim/axi_map_UART8250Lite_0_0.v" \
"../../../bd/axi_map/sim/axi_map.v" \

vlog -work xil_defaultlib \
"glbl.v"

