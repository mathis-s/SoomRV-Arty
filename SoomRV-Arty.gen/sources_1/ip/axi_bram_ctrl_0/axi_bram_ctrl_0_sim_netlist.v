// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Nov  3 18:07:49 2023
// Host        : m-desktop running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               SoomRV-Arty.gen/sources_1/ip/axi_bram_ctrl_0/axi_bram_ctrl_0_sim_netlist.v
// Design      : axi_bram_ctrl_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_bram_ctrl_0,axi_bram_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "axi_bram_ctrl,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module axi_bram_ctrl_0
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLKIF CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXI:S_AXI_CTRL, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input s_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RSTIF RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 2, ADDR_WIDTH 14, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [1:0]s_axi_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [13:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input s_axi_awlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [127:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [15:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [1:0]s_axi_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [1:0]s_axi_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [13:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input s_axi_arlock;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [1:0]s_axi_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [127:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input s_axi_rready;

  wire \<const0> ;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [1:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [1:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [1:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [1:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_bram_clk_a_UNCONNECTED;
  wire NLW_U0_bram_clk_b_UNCONNECTED;
  wire NLW_U0_bram_en_a_UNCONNECTED;
  wire NLW_U0_bram_en_b_UNCONNECTED;
  wire NLW_U0_bram_rst_a_UNCONNECTED;
  wire NLW_U0_bram_rst_b_UNCONNECTED;
  wire NLW_U0_ecc_interrupt_UNCONNECTED;
  wire NLW_U0_ecc_ue_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_arready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_awready_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_ctrl_wready_UNCONNECTED;
  wire [13:0]NLW_U0_bram_addr_a_UNCONNECTED;
  wire [13:0]NLW_U0_bram_addr_b_UNCONNECTED;
  wire [15:0]NLW_U0_bram_we_a_UNCONNECTED;
  wire [15:0]NLW_U0_bram_we_b_UNCONNECTED;
  wire [127:0]NLW_U0_bram_wrdata_a_UNCONNECTED;
  wire [127:0]NLW_U0_bram_wrdata_b_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_ctrl_rdata_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_ctrl_rresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_BRAM_ADDR_WIDTH = "10" *) 
  (* C_BRAM_INST_MODE = "INTERNAL" *) 
  (* C_ECC = "0" *) 
  (* C_ECC_ONOFF_RESET_VALUE = "0" *) 
  (* C_ECC_TYPE = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FAULT_INJECT = "0" *) 
  (* C_MEMORY_DEPTH = "1024" *) 
  (* C_RD_CMD_OPTIMIZATION = "0" *) 
  (* C_READ_LATENCY = "1" *) 
  (* C_SINGLE_PORT_BRAM = "1" *) 
  (* C_S_AXI_ADDR_WIDTH = "14" *) 
  (* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) 
  (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) 
  (* C_S_AXI_DATA_WIDTH = "128" *) 
  (* C_S_AXI_ID_WIDTH = "2" *) 
  (* C_S_AXI_PROTOCOL = "AXI4" *) 
  (* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  axi_bram_ctrl_0_axi_bram_ctrl U0
       (.bram_addr_a(NLW_U0_bram_addr_a_UNCONNECTED[13:0]),
        .bram_addr_b(NLW_U0_bram_addr_b_UNCONNECTED[13:0]),
        .bram_clk_a(NLW_U0_bram_clk_a_UNCONNECTED),
        .bram_clk_b(NLW_U0_bram_clk_b_UNCONNECTED),
        .bram_en_a(NLW_U0_bram_en_a_UNCONNECTED),
        .bram_en_b(NLW_U0_bram_en_b_UNCONNECTED),
        .bram_rddata_a({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bram_rddata_b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .bram_rst_a(NLW_U0_bram_rst_a_UNCONNECTED),
        .bram_rst_b(NLW_U0_bram_rst_b_UNCONNECTED),
        .bram_we_a(NLW_U0_bram_we_a_UNCONNECTED[15:0]),
        .bram_we_b(NLW_U0_bram_we_b_UNCONNECTED[15:0]),
        .bram_wrdata_a(NLW_U0_bram_wrdata_a_UNCONNECTED[127:0]),
        .bram_wrdata_b(NLW_U0_bram_wrdata_b_UNCONNECTED[127:0]),
        .ecc_interrupt(NLW_U0_ecc_interrupt_UNCONNECTED),
        .ecc_ue(NLW_U0_ecc_ue_UNCONNECTED),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_ctrl_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_arready(NLW_U0_s_axi_ctrl_arready_UNCONNECTED),
        .s_axi_ctrl_arvalid(1'b0),
        .s_axi_ctrl_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_awready(NLW_U0_s_axi_ctrl_awready_UNCONNECTED),
        .s_axi_ctrl_awvalid(1'b0),
        .s_axi_ctrl_bready(1'b0),
        .s_axi_ctrl_bresp(NLW_U0_s_axi_ctrl_bresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_bvalid(NLW_U0_s_axi_ctrl_bvalid_UNCONNECTED),
        .s_axi_ctrl_rdata(NLW_U0_s_axi_ctrl_rdata_UNCONNECTED[31:0]),
        .s_axi_ctrl_rready(1'b0),
        .s_axi_ctrl_rresp(NLW_U0_s_axi_ctrl_rresp_UNCONNECTED[1:0]),
        .s_axi_ctrl_rvalid(NLW_U0_s_axi_ctrl_rvalid_UNCONNECTED),
        .s_axi_ctrl_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_ctrl_wready(NLW_U0_s_axi_ctrl_wready_UNCONNECTED),
        .s_axi_ctrl_wvalid(1'b0),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "SRL_FIFO" *) 
module axi_bram_ctrl_0_SRL_FIFO
   (bid_gets_fifo_load,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ,
    s_axi_awid_1_sp_1,
    s_axi_awid_0_sp_1,
    \Addr_Counters[3].FDRE_I_0 ,
    s_axi_aclk,
    s_axi_awid,
    bid_gets_fifo_load_d1_reg,
    bid_gets_fifo_load_d1_reg_0,
    bid_gets_fifo_load_d1_reg_1,
    aw_active_re,
    bid_gets_fifo_load_d1,
    s_axi_bready,
    Data_Exists_DFF_0,
    bid_gets_fifo_load_d1_reg_2,
    s_axi_wlast,
    s_axi_wvalid,
    axi_wdata_full_reg,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ,
    axi_wr_burst,
    AW2Arb_BVALID_Cnt,
    s_axi_bid);
  output bid_gets_fifo_load;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  output s_axi_awid_1_sp_1;
  output s_axi_awid_0_sp_1;
  input \Addr_Counters[3].FDRE_I_0 ;
  input s_axi_aclk;
  input [1:0]s_axi_awid;
  input bid_gets_fifo_load_d1_reg;
  input bid_gets_fifo_load_d1_reg_0;
  input bid_gets_fifo_load_d1_reg_1;
  input aw_active_re;
  input bid_gets_fifo_load_d1;
  input s_axi_bready;
  input Data_Exists_DFF_0;
  input bid_gets_fifo_load_d1_reg_2;
  input s_axi_wlast;
  input s_axi_wvalid;
  input axi_wdata_full_reg;
  input \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ;
  input axi_wr_burst;
  input [2:0]AW2Arb_BVALID_Cnt;
  input [1:0]s_axi_bid;

  wire [2:0]AW2Arb_BVALID_Cnt;
  wire \Addr_Counters[0].FDRE_I_n_0 ;
  wire \Addr_Counters[1].FDRE_I_n_0 ;
  wire \Addr_Counters[2].FDRE_I_n_0 ;
  wire \Addr_Counters[3].FDRE_I_0 ;
  wire \Addr_Counters[3].FDRE_I_n_0 ;
  wire \Addr_Counters[3].XORCY_I_i_1_n_0 ;
  wire CI;
  wire D;
  wire Data_Exists_DFF_0;
  wire Data_Exists_DFF_i_2_n_0;
  wire Data_Exists_DFF_i_3_n_0;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ;
  wire S;
  wire S0_out;
  wire S1_out;
  wire addr_cy_1;
  wire addr_cy_2;
  wire addr_cy_3;
  wire aw_active_re;
  wire \axi_bid_int[1]_i_2_n_0 ;
  wire axi_wdata_full_reg;
  wire axi_wr_burst;
  wire bid_fifo_not_empty;
  wire [1:0]bid_fifo_rd;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire bid_gets_fifo_load_d1_i_2_n_0;
  wire bid_gets_fifo_load_d1_reg;
  wire bid_gets_fifo_load_d1_reg_0;
  wire bid_gets_fifo_load_d1_reg_1;
  wire bid_gets_fifo_load_d1_reg_2;
  wire s_axi_aclk;
  wire [1:0]s_axi_awid;
  wire s_axi_awid_0_sn_1;
  wire s_axi_awid_1_sn_1;
  wire [1:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_wlast;
  wire s_axi_wvalid;
  wire sum_A_0;
  wire sum_A_1;
  wire sum_A_2;
  wire sum_A_3;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED ;

  assign s_axi_awid_0_sp_1 = s_axi_awid_0_sn_1;
  assign s_axi_awid_1_sp_1 = s_axi_awid_1_sn_1;
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[0].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_3),
        .Q(\Addr_Counters[0].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* XILINX_TRANSFORM_PINMAP = "LO:O" *) 
  CARRY4 \Addr_Counters[0].MUXCY_L_I_CARRY4 
       (.CI(1'b0),
        .CO({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_CO_UNCONNECTED [3],addr_cy_1,addr_cy_2,addr_cy_3}),
        .CYINIT(CI),
        .DI({\NLW_Addr_Counters[0].MUXCY_L_I_CARRY4_DI_UNCONNECTED [3],\Addr_Counters[2].FDRE_I_n_0 ,\Addr_Counters[1].FDRE_I_n_0 ,\Addr_Counters[0].FDRE_I_n_0 }),
        .O({sum_A_0,sum_A_1,sum_A_2,sum_A_3}),
        .S({\Addr_Counters[3].XORCY_I_i_1_n_0 ,S0_out,S1_out,S}));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[0].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[1].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[2].FDRE_I_n_0 ),
        .I3(aw_active_re),
        .I4(\axi_bid_int[1]_i_2_n_0 ),
        .I5(\Addr_Counters[0].FDRE_I_n_0 ),
        .O(S));
  LUT6 #(
    .INIT(64'h8AAAAAAAAAAAAAAA)) 
    \Addr_Counters[0].MUXCY_L_I_i_2 
       (.I0(aw_active_re),
        .I1(\axi_bid_int[1]_i_2_n_0 ),
        .I2(\Addr_Counters[0].FDRE_I_n_0 ),
        .I3(\Addr_Counters[1].FDRE_I_n_0 ),
        .I4(\Addr_Counters[3].FDRE_I_n_0 ),
        .I5(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(CI));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[1].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_2),
        .Q(\Addr_Counters[1].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[1].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].FDRE_I_n_0 ),
        .I1(\Addr_Counters[3].FDRE_I_n_0 ),
        .I2(\Addr_Counters[2].FDRE_I_n_0 ),
        .I3(aw_active_re),
        .I4(\axi_bid_int[1]_i_2_n_0 ),
        .I5(\Addr_Counters[1].FDRE_I_n_0 ),
        .O(S1_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[2].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_1),
        .Q(\Addr_Counters[2].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[2].MUXCY_L_I_i_1 
       (.I0(\Addr_Counters[0].FDRE_I_n_0 ),
        .I1(\Addr_Counters[1].FDRE_I_n_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(aw_active_re),
        .I4(\axi_bid_int[1]_i_2_n_0 ),
        .I5(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(S0_out));
  (* BOX_TYPE = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \Addr_Counters[3].FDRE_I 
       (.C(s_axi_aclk),
        .CE(bid_fifo_not_empty),
        .D(sum_A_0),
        .Q(\Addr_Counters[3].FDRE_I_n_0 ),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT6 #(
    .INIT(64'h0000FFFFFFFE0000)) 
    \Addr_Counters[3].XORCY_I_i_1 
       (.I0(\Addr_Counters[0].FDRE_I_n_0 ),
        .I1(\Addr_Counters[1].FDRE_I_n_0 ),
        .I2(\Addr_Counters[2].FDRE_I_n_0 ),
        .I3(aw_active_re),
        .I4(\axi_bid_int[1]_i_2_n_0 ),
        .I5(\Addr_Counters[3].FDRE_I_n_0 ),
        .O(\Addr_Counters[3].XORCY_I_i_1_n_0 ));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  FDRE #(
    .INIT(1'b0)) 
    Data_Exists_DFF
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(bid_fifo_not_empty),
        .R(\Addr_Counters[3].FDRE_I_0 ));
  LUT5 #(
    .INIT(32'hFFF20022)) 
    Data_Exists_DFF_i_1
       (.I0(bid_gets_fifo_load_d1_reg_1),
        .I1(bid_gets_fifo_load_d1_reg_0),
        .I2(Data_Exists_DFF_i_2_n_0),
        .I3(Data_Exists_DFF_i_3_n_0),
        .I4(bid_fifo_not_empty),
        .O(D));
  LUT5 #(
    .INIT(32'h0000AA3F)) 
    Data_Exists_DFF_i_2
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ),
        .I1(Data_Exists_DFF_0),
        .I2(s_axi_bready),
        .I3(bid_gets_fifo_load_d1_i_2_n_0),
        .I4(bid_gets_fifo_load_d1),
        .O(Data_Exists_DFF_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Data_Exists_DFF_i_3
       (.I0(\Addr_Counters[0].FDRE_I_n_0 ),
        .I1(\Addr_Counters[1].FDRE_I_n_0 ),
        .I2(\Addr_Counters[3].FDRE_I_n_0 ),
        .I3(\Addr_Counters[2].FDRE_I_n_0 ),
        .O(Data_Exists_DFF_i_3_n_0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gint_inst.abcv4_0_int_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gint_inst.abcv4_0_int_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[0].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[0].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[1]),
        .Q(bid_fifo_rd[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* srl_bus_name = "U0/\gint_inst.abcv4_0_int_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM " *) 
  (* srl_name = "U0/\gint_inst.abcv4_0_int_inst/GEN_AXI4.I_FULL_AXI/I_WR_CHNL/BID_FIFO/FIFO_RAM[1].SRL16E_I " *) 
  SRL16E #(
    .INIT(16'h0000),
    .IS_CLK_INVERTED(1'b0)) 
    \FIFO_RAM[1].SRL16E_I 
       (.A0(\Addr_Counters[0].FDRE_I_n_0 ),
        .A1(\Addr_Counters[1].FDRE_I_n_0 ),
        .A2(\Addr_Counters[2].FDRE_I_n_0 ),
        .A3(\Addr_Counters[3].FDRE_I_n_0 ),
        .CE(CI),
        .CLK(s_axi_aclk),
        .D(s_axi_awid[0]),
        .Q(bid_fifo_rd[0]));
  LUT4 #(
    .INIT(16'h08A8)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_2 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ),
        .I1(s_axi_wlast),
        .I2(axi_wdata_full_reg),
        .I3(axi_wr_burst),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ));
  LUT5 #(
    .INIT(32'hACAFACA0)) 
    \axi_bid_int[0]_i_1 
       (.I0(s_axi_awid[0]),
        .I1(bid_fifo_rd[0]),
        .I2(bid_gets_fifo_load),
        .I3(\axi_bid_int[1]_i_2_n_0 ),
        .I4(s_axi_bid[0]),
        .O(s_axi_awid_0_sn_1));
  LUT5 #(
    .INIT(32'hACAFACA0)) 
    \axi_bid_int[1]_i_1 
       (.I0(s_axi_awid[1]),
        .I1(bid_fifo_rd[1]),
        .I2(bid_gets_fifo_load),
        .I3(\axi_bid_int[1]_i_2_n_0 ),
        .I4(s_axi_bid[1]),
        .O(s_axi_awid_1_sn_1));
  LUT6 #(
    .INIT(64'h8A888888AAA8A8A8)) 
    \axi_bid_int[1]_i_2 
       (.I0(bid_fifo_not_empty),
        .I1(bid_gets_fifo_load_d1),
        .I2(bid_gets_fifo_load_d1_i_2_n_0),
        .I3(s_axi_bready),
        .I4(Data_Exists_DFF_0),
        .I5(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ),
        .O(\axi_bid_int[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000F7F7F7F7F7F7F)) 
    axi_bvalid_int_i_3
       (.I0(bid_gets_fifo_load_d1_reg_2),
        .I1(s_axi_wlast),
        .I2(s_axi_wvalid),
        .I3(axi_wdata_full_reg),
        .I4(bid_gets_fifo_load_d1_reg_1),
        .I5(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ));
  LUT6 #(
    .INIT(64'h0100010000000100)) 
    bid_gets_fifo_load_d1_i_1
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] ),
        .I1(bid_gets_fifo_load_d1_reg),
        .I2(bid_gets_fifo_load_d1_reg_0),
        .I3(bid_gets_fifo_load_d1_reg_1),
        .I4(bid_fifo_not_empty),
        .I5(bid_gets_fifo_load_d1_i_2_n_0),
        .O(bid_gets_fifo_load));
  LUT3 #(
    .INIT(8'h01)) 
    bid_gets_fifo_load_d1_i_2
       (.I0(AW2Arb_BVALID_Cnt[2]),
        .I1(AW2Arb_BVALID_Cnt[1]),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .O(bid_gets_fifo_load_d1_i_2_n_0));
endmodule

(* C_BRAM_ADDR_WIDTH = "10" *) (* C_BRAM_INST_MODE = "INTERNAL" *) (* C_ECC = "0" *) 
(* C_ECC_ONOFF_RESET_VALUE = "0" *) (* C_ECC_TYPE = "0" *) (* C_FAMILY = "artix7" *) 
(* C_FAULT_INJECT = "0" *) (* C_MEMORY_DEPTH = "1024" *) (* C_RD_CMD_OPTIMIZATION = "0" *) 
(* C_READ_LATENCY = "1" *) (* C_SINGLE_PORT_BRAM = "1" *) (* C_S_AXI_ADDR_WIDTH = "14" *) 
(* C_S_AXI_CTRL_ADDR_WIDTH = "32" *) (* C_S_AXI_CTRL_DATA_WIDTH = "32" *) (* C_S_AXI_DATA_WIDTH = "128" *) 
(* C_S_AXI_ID_WIDTH = "2" *) (* C_S_AXI_PROTOCOL = "AXI4" *) (* C_S_AXI_SUPPORTS_NARROW_BURST = "1" *) 
(* ORIG_REF_NAME = "axi_bram_ctrl" *) (* downgradeipidentifiedwarnings = "yes" *) 
module axi_bram_ctrl_0_axi_bram_ctrl
   (s_axi_aclk,
    s_axi_aresetn,
    ecc_interrupt,
    ecc_ue,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_ctrl_awvalid,
    s_axi_ctrl_awready,
    s_axi_ctrl_awaddr,
    s_axi_ctrl_wdata,
    s_axi_ctrl_wvalid,
    s_axi_ctrl_wready,
    s_axi_ctrl_bresp,
    s_axi_ctrl_bvalid,
    s_axi_ctrl_bready,
    s_axi_ctrl_araddr,
    s_axi_ctrl_arvalid,
    s_axi_ctrl_arready,
    s_axi_ctrl_rdata,
    s_axi_ctrl_rresp,
    s_axi_ctrl_rvalid,
    s_axi_ctrl_rready,
    bram_rst_a,
    bram_clk_a,
    bram_en_a,
    bram_we_a,
    bram_addr_a,
    bram_wrdata_a,
    bram_rddata_a,
    bram_rst_b,
    bram_clk_b,
    bram_en_b,
    bram_we_b,
    bram_addr_b,
    bram_wrdata_b,
    bram_rddata_b);
  input s_axi_aclk;
  input s_axi_aresetn;
  output ecc_interrupt;
  output ecc_ue;
  input [1:0]s_axi_awid;
  input [13:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [1:0]s_axi_arid;
  input [13:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [1:0]s_axi_rid;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_ctrl_awvalid;
  output s_axi_ctrl_awready;
  input [31:0]s_axi_ctrl_awaddr;
  input [31:0]s_axi_ctrl_wdata;
  input s_axi_ctrl_wvalid;
  output s_axi_ctrl_wready;
  output [1:0]s_axi_ctrl_bresp;
  output s_axi_ctrl_bvalid;
  input s_axi_ctrl_bready;
  input [31:0]s_axi_ctrl_araddr;
  input s_axi_ctrl_arvalid;
  output s_axi_ctrl_arready;
  output [31:0]s_axi_ctrl_rdata;
  output [1:0]s_axi_ctrl_rresp;
  output s_axi_ctrl_rvalid;
  input s_axi_ctrl_rready;
  output bram_rst_a;
  output bram_clk_a;
  output bram_en_a;
  output [15:0]bram_we_a;
  output [13:0]bram_addr_a;
  output [127:0]bram_wrdata_a;
  input [127:0]bram_rddata_a;
  output bram_rst_b;
  output bram_clk_b;
  output bram_en_b;
  output [15:0]bram_we_b;
  output [13:0]bram_addr_b;
  output [127:0]bram_wrdata_b;
  input [127:0]bram_rddata_b;

  wire \<const0> ;
  wire [13:4]addra_bram_addra_i;
  wire [127:0]dina_bram_dina_i;
  wire [127:0]douta_bram_douta_i;
  wire ena_bram_ena_i;
  wire \gint_inst.abcv4_0_int_inst_n_1 ;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [1:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [1:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [1:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [127:0]s_axi_rdata;
  wire [1:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire ua_narrow_load1_carry_i_22__0_n_0;
  wire ua_narrow_load1_carry_i_22_n_0;
  wire ua_narrow_load1_carry_i_23__0_n_0;
  wire ua_narrow_load1_carry_i_23_n_0;
  wire ua_narrow_load1_carry_i_24__0_n_0;
  wire ua_narrow_load1_carry_i_24_n_0;
  wire ua_narrow_load1_carry_i_25__0_n_0;
  wire ua_narrow_load1_carry_i_25_n_0;
  wire ua_narrow_load1_carry_i_29__0_n_0;
  wire ua_narrow_load1_carry_i_29_n_0;
  wire ua_narrow_load1_carry_i_30__0_n_0;
  wire ua_narrow_load1_carry_i_30_n_0;
  wire ua_narrow_load1_carry_i_31__0_n_0;
  wire ua_narrow_load1_carry_i_31_n_0;
  wire ua_narrow_load1_carry_i_32__0_n_0;
  wire ua_narrow_load1_carry_i_32_n_0;
  wire ua_narrow_load1_carry_i_33__0_n_0;
  wire ua_narrow_load1_carry_i_33_n_0;
  wire [15:0]wea_bram_wea_i;

  assign bram_addr_a[13] = \<const0> ;
  assign bram_addr_a[12] = \<const0> ;
  assign bram_addr_a[11] = \<const0> ;
  assign bram_addr_a[10] = \<const0> ;
  assign bram_addr_a[9] = \<const0> ;
  assign bram_addr_a[8] = \<const0> ;
  assign bram_addr_a[7] = \<const0> ;
  assign bram_addr_a[6] = \<const0> ;
  assign bram_addr_a[5] = \<const0> ;
  assign bram_addr_a[4] = \<const0> ;
  assign bram_addr_a[3] = \<const0> ;
  assign bram_addr_a[2] = \<const0> ;
  assign bram_addr_a[1] = \<const0> ;
  assign bram_addr_a[0] = \<const0> ;
  assign bram_addr_b[13] = \<const0> ;
  assign bram_addr_b[12] = \<const0> ;
  assign bram_addr_b[11] = \<const0> ;
  assign bram_addr_b[10] = \<const0> ;
  assign bram_addr_b[9] = \<const0> ;
  assign bram_addr_b[8] = \<const0> ;
  assign bram_addr_b[7] = \<const0> ;
  assign bram_addr_b[6] = \<const0> ;
  assign bram_addr_b[5] = \<const0> ;
  assign bram_addr_b[4] = \<const0> ;
  assign bram_addr_b[3] = \<const0> ;
  assign bram_addr_b[2] = \<const0> ;
  assign bram_addr_b[1] = \<const0> ;
  assign bram_addr_b[0] = \<const0> ;
  assign bram_clk_a = \<const0> ;
  assign bram_clk_b = \<const0> ;
  assign bram_en_a = \<const0> ;
  assign bram_en_b = \<const0> ;
  assign bram_rst_a = \<const0> ;
  assign bram_rst_b = \<const0> ;
  assign bram_we_a[15] = \<const0> ;
  assign bram_we_a[14] = \<const0> ;
  assign bram_we_a[13] = \<const0> ;
  assign bram_we_a[12] = \<const0> ;
  assign bram_we_a[11] = \<const0> ;
  assign bram_we_a[10] = \<const0> ;
  assign bram_we_a[9] = \<const0> ;
  assign bram_we_a[8] = \<const0> ;
  assign bram_we_a[7] = \<const0> ;
  assign bram_we_a[6] = \<const0> ;
  assign bram_we_a[5] = \<const0> ;
  assign bram_we_a[4] = \<const0> ;
  assign bram_we_a[3] = \<const0> ;
  assign bram_we_a[2] = \<const0> ;
  assign bram_we_a[1] = \<const0> ;
  assign bram_we_a[0] = \<const0> ;
  assign bram_we_b[15] = \<const0> ;
  assign bram_we_b[14] = \<const0> ;
  assign bram_we_b[13] = \<const0> ;
  assign bram_we_b[12] = \<const0> ;
  assign bram_we_b[11] = \<const0> ;
  assign bram_we_b[10] = \<const0> ;
  assign bram_we_b[9] = \<const0> ;
  assign bram_we_b[8] = \<const0> ;
  assign bram_we_b[7] = \<const0> ;
  assign bram_we_b[6] = \<const0> ;
  assign bram_we_b[5] = \<const0> ;
  assign bram_we_b[4] = \<const0> ;
  assign bram_we_b[3] = \<const0> ;
  assign bram_we_b[2] = \<const0> ;
  assign bram_we_b[1] = \<const0> ;
  assign bram_we_b[0] = \<const0> ;
  assign bram_wrdata_a[127] = \<const0> ;
  assign bram_wrdata_a[126] = \<const0> ;
  assign bram_wrdata_a[125] = \<const0> ;
  assign bram_wrdata_a[124] = \<const0> ;
  assign bram_wrdata_a[123] = \<const0> ;
  assign bram_wrdata_a[122] = \<const0> ;
  assign bram_wrdata_a[121] = \<const0> ;
  assign bram_wrdata_a[120] = \<const0> ;
  assign bram_wrdata_a[119] = \<const0> ;
  assign bram_wrdata_a[118] = \<const0> ;
  assign bram_wrdata_a[117] = \<const0> ;
  assign bram_wrdata_a[116] = \<const0> ;
  assign bram_wrdata_a[115] = \<const0> ;
  assign bram_wrdata_a[114] = \<const0> ;
  assign bram_wrdata_a[113] = \<const0> ;
  assign bram_wrdata_a[112] = \<const0> ;
  assign bram_wrdata_a[111] = \<const0> ;
  assign bram_wrdata_a[110] = \<const0> ;
  assign bram_wrdata_a[109] = \<const0> ;
  assign bram_wrdata_a[108] = \<const0> ;
  assign bram_wrdata_a[107] = \<const0> ;
  assign bram_wrdata_a[106] = \<const0> ;
  assign bram_wrdata_a[105] = \<const0> ;
  assign bram_wrdata_a[104] = \<const0> ;
  assign bram_wrdata_a[103] = \<const0> ;
  assign bram_wrdata_a[102] = \<const0> ;
  assign bram_wrdata_a[101] = \<const0> ;
  assign bram_wrdata_a[100] = \<const0> ;
  assign bram_wrdata_a[99] = \<const0> ;
  assign bram_wrdata_a[98] = \<const0> ;
  assign bram_wrdata_a[97] = \<const0> ;
  assign bram_wrdata_a[96] = \<const0> ;
  assign bram_wrdata_a[95] = \<const0> ;
  assign bram_wrdata_a[94] = \<const0> ;
  assign bram_wrdata_a[93] = \<const0> ;
  assign bram_wrdata_a[92] = \<const0> ;
  assign bram_wrdata_a[91] = \<const0> ;
  assign bram_wrdata_a[90] = \<const0> ;
  assign bram_wrdata_a[89] = \<const0> ;
  assign bram_wrdata_a[88] = \<const0> ;
  assign bram_wrdata_a[87] = \<const0> ;
  assign bram_wrdata_a[86] = \<const0> ;
  assign bram_wrdata_a[85] = \<const0> ;
  assign bram_wrdata_a[84] = \<const0> ;
  assign bram_wrdata_a[83] = \<const0> ;
  assign bram_wrdata_a[82] = \<const0> ;
  assign bram_wrdata_a[81] = \<const0> ;
  assign bram_wrdata_a[80] = \<const0> ;
  assign bram_wrdata_a[79] = \<const0> ;
  assign bram_wrdata_a[78] = \<const0> ;
  assign bram_wrdata_a[77] = \<const0> ;
  assign bram_wrdata_a[76] = \<const0> ;
  assign bram_wrdata_a[75] = \<const0> ;
  assign bram_wrdata_a[74] = \<const0> ;
  assign bram_wrdata_a[73] = \<const0> ;
  assign bram_wrdata_a[72] = \<const0> ;
  assign bram_wrdata_a[71] = \<const0> ;
  assign bram_wrdata_a[70] = \<const0> ;
  assign bram_wrdata_a[69] = \<const0> ;
  assign bram_wrdata_a[68] = \<const0> ;
  assign bram_wrdata_a[67] = \<const0> ;
  assign bram_wrdata_a[66] = \<const0> ;
  assign bram_wrdata_a[65] = \<const0> ;
  assign bram_wrdata_a[64] = \<const0> ;
  assign bram_wrdata_a[63] = \<const0> ;
  assign bram_wrdata_a[62] = \<const0> ;
  assign bram_wrdata_a[61] = \<const0> ;
  assign bram_wrdata_a[60] = \<const0> ;
  assign bram_wrdata_a[59] = \<const0> ;
  assign bram_wrdata_a[58] = \<const0> ;
  assign bram_wrdata_a[57] = \<const0> ;
  assign bram_wrdata_a[56] = \<const0> ;
  assign bram_wrdata_a[55] = \<const0> ;
  assign bram_wrdata_a[54] = \<const0> ;
  assign bram_wrdata_a[53] = \<const0> ;
  assign bram_wrdata_a[52] = \<const0> ;
  assign bram_wrdata_a[51] = \<const0> ;
  assign bram_wrdata_a[50] = \<const0> ;
  assign bram_wrdata_a[49] = \<const0> ;
  assign bram_wrdata_a[48] = \<const0> ;
  assign bram_wrdata_a[47] = \<const0> ;
  assign bram_wrdata_a[46] = \<const0> ;
  assign bram_wrdata_a[45] = \<const0> ;
  assign bram_wrdata_a[44] = \<const0> ;
  assign bram_wrdata_a[43] = \<const0> ;
  assign bram_wrdata_a[42] = \<const0> ;
  assign bram_wrdata_a[41] = \<const0> ;
  assign bram_wrdata_a[40] = \<const0> ;
  assign bram_wrdata_a[39] = \<const0> ;
  assign bram_wrdata_a[38] = \<const0> ;
  assign bram_wrdata_a[37] = \<const0> ;
  assign bram_wrdata_a[36] = \<const0> ;
  assign bram_wrdata_a[35] = \<const0> ;
  assign bram_wrdata_a[34] = \<const0> ;
  assign bram_wrdata_a[33] = \<const0> ;
  assign bram_wrdata_a[32] = \<const0> ;
  assign bram_wrdata_a[31] = \<const0> ;
  assign bram_wrdata_a[30] = \<const0> ;
  assign bram_wrdata_a[29] = \<const0> ;
  assign bram_wrdata_a[28] = \<const0> ;
  assign bram_wrdata_a[27] = \<const0> ;
  assign bram_wrdata_a[26] = \<const0> ;
  assign bram_wrdata_a[25] = \<const0> ;
  assign bram_wrdata_a[24] = \<const0> ;
  assign bram_wrdata_a[23] = \<const0> ;
  assign bram_wrdata_a[22] = \<const0> ;
  assign bram_wrdata_a[21] = \<const0> ;
  assign bram_wrdata_a[20] = \<const0> ;
  assign bram_wrdata_a[19] = \<const0> ;
  assign bram_wrdata_a[18] = \<const0> ;
  assign bram_wrdata_a[17] = \<const0> ;
  assign bram_wrdata_a[16] = \<const0> ;
  assign bram_wrdata_a[15] = \<const0> ;
  assign bram_wrdata_a[14] = \<const0> ;
  assign bram_wrdata_a[13] = \<const0> ;
  assign bram_wrdata_a[12] = \<const0> ;
  assign bram_wrdata_a[11] = \<const0> ;
  assign bram_wrdata_a[10] = \<const0> ;
  assign bram_wrdata_a[9] = \<const0> ;
  assign bram_wrdata_a[8] = \<const0> ;
  assign bram_wrdata_a[7] = \<const0> ;
  assign bram_wrdata_a[6] = \<const0> ;
  assign bram_wrdata_a[5] = \<const0> ;
  assign bram_wrdata_a[4] = \<const0> ;
  assign bram_wrdata_a[3] = \<const0> ;
  assign bram_wrdata_a[2] = \<const0> ;
  assign bram_wrdata_a[1] = \<const0> ;
  assign bram_wrdata_a[0] = \<const0> ;
  assign bram_wrdata_b[127] = \<const0> ;
  assign bram_wrdata_b[126] = \<const0> ;
  assign bram_wrdata_b[125] = \<const0> ;
  assign bram_wrdata_b[124] = \<const0> ;
  assign bram_wrdata_b[123] = \<const0> ;
  assign bram_wrdata_b[122] = \<const0> ;
  assign bram_wrdata_b[121] = \<const0> ;
  assign bram_wrdata_b[120] = \<const0> ;
  assign bram_wrdata_b[119] = \<const0> ;
  assign bram_wrdata_b[118] = \<const0> ;
  assign bram_wrdata_b[117] = \<const0> ;
  assign bram_wrdata_b[116] = \<const0> ;
  assign bram_wrdata_b[115] = \<const0> ;
  assign bram_wrdata_b[114] = \<const0> ;
  assign bram_wrdata_b[113] = \<const0> ;
  assign bram_wrdata_b[112] = \<const0> ;
  assign bram_wrdata_b[111] = \<const0> ;
  assign bram_wrdata_b[110] = \<const0> ;
  assign bram_wrdata_b[109] = \<const0> ;
  assign bram_wrdata_b[108] = \<const0> ;
  assign bram_wrdata_b[107] = \<const0> ;
  assign bram_wrdata_b[106] = \<const0> ;
  assign bram_wrdata_b[105] = \<const0> ;
  assign bram_wrdata_b[104] = \<const0> ;
  assign bram_wrdata_b[103] = \<const0> ;
  assign bram_wrdata_b[102] = \<const0> ;
  assign bram_wrdata_b[101] = \<const0> ;
  assign bram_wrdata_b[100] = \<const0> ;
  assign bram_wrdata_b[99] = \<const0> ;
  assign bram_wrdata_b[98] = \<const0> ;
  assign bram_wrdata_b[97] = \<const0> ;
  assign bram_wrdata_b[96] = \<const0> ;
  assign bram_wrdata_b[95] = \<const0> ;
  assign bram_wrdata_b[94] = \<const0> ;
  assign bram_wrdata_b[93] = \<const0> ;
  assign bram_wrdata_b[92] = \<const0> ;
  assign bram_wrdata_b[91] = \<const0> ;
  assign bram_wrdata_b[90] = \<const0> ;
  assign bram_wrdata_b[89] = \<const0> ;
  assign bram_wrdata_b[88] = \<const0> ;
  assign bram_wrdata_b[87] = \<const0> ;
  assign bram_wrdata_b[86] = \<const0> ;
  assign bram_wrdata_b[85] = \<const0> ;
  assign bram_wrdata_b[84] = \<const0> ;
  assign bram_wrdata_b[83] = \<const0> ;
  assign bram_wrdata_b[82] = \<const0> ;
  assign bram_wrdata_b[81] = \<const0> ;
  assign bram_wrdata_b[80] = \<const0> ;
  assign bram_wrdata_b[79] = \<const0> ;
  assign bram_wrdata_b[78] = \<const0> ;
  assign bram_wrdata_b[77] = \<const0> ;
  assign bram_wrdata_b[76] = \<const0> ;
  assign bram_wrdata_b[75] = \<const0> ;
  assign bram_wrdata_b[74] = \<const0> ;
  assign bram_wrdata_b[73] = \<const0> ;
  assign bram_wrdata_b[72] = \<const0> ;
  assign bram_wrdata_b[71] = \<const0> ;
  assign bram_wrdata_b[70] = \<const0> ;
  assign bram_wrdata_b[69] = \<const0> ;
  assign bram_wrdata_b[68] = \<const0> ;
  assign bram_wrdata_b[67] = \<const0> ;
  assign bram_wrdata_b[66] = \<const0> ;
  assign bram_wrdata_b[65] = \<const0> ;
  assign bram_wrdata_b[64] = \<const0> ;
  assign bram_wrdata_b[63] = \<const0> ;
  assign bram_wrdata_b[62] = \<const0> ;
  assign bram_wrdata_b[61] = \<const0> ;
  assign bram_wrdata_b[60] = \<const0> ;
  assign bram_wrdata_b[59] = \<const0> ;
  assign bram_wrdata_b[58] = \<const0> ;
  assign bram_wrdata_b[57] = \<const0> ;
  assign bram_wrdata_b[56] = \<const0> ;
  assign bram_wrdata_b[55] = \<const0> ;
  assign bram_wrdata_b[54] = \<const0> ;
  assign bram_wrdata_b[53] = \<const0> ;
  assign bram_wrdata_b[52] = \<const0> ;
  assign bram_wrdata_b[51] = \<const0> ;
  assign bram_wrdata_b[50] = \<const0> ;
  assign bram_wrdata_b[49] = \<const0> ;
  assign bram_wrdata_b[48] = \<const0> ;
  assign bram_wrdata_b[47] = \<const0> ;
  assign bram_wrdata_b[46] = \<const0> ;
  assign bram_wrdata_b[45] = \<const0> ;
  assign bram_wrdata_b[44] = \<const0> ;
  assign bram_wrdata_b[43] = \<const0> ;
  assign bram_wrdata_b[42] = \<const0> ;
  assign bram_wrdata_b[41] = \<const0> ;
  assign bram_wrdata_b[40] = \<const0> ;
  assign bram_wrdata_b[39] = \<const0> ;
  assign bram_wrdata_b[38] = \<const0> ;
  assign bram_wrdata_b[37] = \<const0> ;
  assign bram_wrdata_b[36] = \<const0> ;
  assign bram_wrdata_b[35] = \<const0> ;
  assign bram_wrdata_b[34] = \<const0> ;
  assign bram_wrdata_b[33] = \<const0> ;
  assign bram_wrdata_b[32] = \<const0> ;
  assign bram_wrdata_b[31] = \<const0> ;
  assign bram_wrdata_b[30] = \<const0> ;
  assign bram_wrdata_b[29] = \<const0> ;
  assign bram_wrdata_b[28] = \<const0> ;
  assign bram_wrdata_b[27] = \<const0> ;
  assign bram_wrdata_b[26] = \<const0> ;
  assign bram_wrdata_b[25] = \<const0> ;
  assign bram_wrdata_b[24] = \<const0> ;
  assign bram_wrdata_b[23] = \<const0> ;
  assign bram_wrdata_b[22] = \<const0> ;
  assign bram_wrdata_b[21] = \<const0> ;
  assign bram_wrdata_b[20] = \<const0> ;
  assign bram_wrdata_b[19] = \<const0> ;
  assign bram_wrdata_b[18] = \<const0> ;
  assign bram_wrdata_b[17] = \<const0> ;
  assign bram_wrdata_b[16] = \<const0> ;
  assign bram_wrdata_b[15] = \<const0> ;
  assign bram_wrdata_b[14] = \<const0> ;
  assign bram_wrdata_b[13] = \<const0> ;
  assign bram_wrdata_b[12] = \<const0> ;
  assign bram_wrdata_b[11] = \<const0> ;
  assign bram_wrdata_b[10] = \<const0> ;
  assign bram_wrdata_b[9] = \<const0> ;
  assign bram_wrdata_b[8] = \<const0> ;
  assign bram_wrdata_b[7] = \<const0> ;
  assign bram_wrdata_b[6] = \<const0> ;
  assign bram_wrdata_b[5] = \<const0> ;
  assign bram_wrdata_b[4] = \<const0> ;
  assign bram_wrdata_b[3] = \<const0> ;
  assign bram_wrdata_b[2] = \<const0> ;
  assign bram_wrdata_b[1] = \<const0> ;
  assign bram_wrdata_b[0] = \<const0> ;
  assign ecc_interrupt = \<const0> ;
  assign ecc_ue = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_ctrl_arready = \<const0> ;
  assign s_axi_ctrl_awready = \<const0> ;
  assign s_axi_ctrl_bresp[1] = \<const0> ;
  assign s_axi_ctrl_bresp[0] = \<const0> ;
  assign s_axi_ctrl_bvalid = \<const0> ;
  assign s_axi_ctrl_rdata[31] = \<const0> ;
  assign s_axi_ctrl_rdata[30] = \<const0> ;
  assign s_axi_ctrl_rdata[29] = \<const0> ;
  assign s_axi_ctrl_rdata[28] = \<const0> ;
  assign s_axi_ctrl_rdata[27] = \<const0> ;
  assign s_axi_ctrl_rdata[26] = \<const0> ;
  assign s_axi_ctrl_rdata[25] = \<const0> ;
  assign s_axi_ctrl_rdata[24] = \<const0> ;
  assign s_axi_ctrl_rdata[23] = \<const0> ;
  assign s_axi_ctrl_rdata[22] = \<const0> ;
  assign s_axi_ctrl_rdata[21] = \<const0> ;
  assign s_axi_ctrl_rdata[20] = \<const0> ;
  assign s_axi_ctrl_rdata[19] = \<const0> ;
  assign s_axi_ctrl_rdata[18] = \<const0> ;
  assign s_axi_ctrl_rdata[17] = \<const0> ;
  assign s_axi_ctrl_rdata[16] = \<const0> ;
  assign s_axi_ctrl_rdata[15] = \<const0> ;
  assign s_axi_ctrl_rdata[14] = \<const0> ;
  assign s_axi_ctrl_rdata[13] = \<const0> ;
  assign s_axi_ctrl_rdata[12] = \<const0> ;
  assign s_axi_ctrl_rdata[11] = \<const0> ;
  assign s_axi_ctrl_rdata[10] = \<const0> ;
  assign s_axi_ctrl_rdata[9] = \<const0> ;
  assign s_axi_ctrl_rdata[8] = \<const0> ;
  assign s_axi_ctrl_rdata[7] = \<const0> ;
  assign s_axi_ctrl_rdata[6] = \<const0> ;
  assign s_axi_ctrl_rdata[5] = \<const0> ;
  assign s_axi_ctrl_rdata[4] = \<const0> ;
  assign s_axi_ctrl_rdata[3] = \<const0> ;
  assign s_axi_ctrl_rdata[2] = \<const0> ;
  assign s_axi_ctrl_rdata[1] = \<const0> ;
  assign s_axi_ctrl_rdata[0] = \<const0> ;
  assign s_axi_ctrl_rresp[1] = \<const0> ;
  assign s_axi_ctrl_rresp[0] = \<const0> ;
  assign s_axi_ctrl_rvalid = \<const0> ;
  assign s_axi_ctrl_wready = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  axi_bram_ctrl_0_axi_bram_ctrl_top \gint_inst.abcv4_0_int_inst 
       (.D(douta_bram_douta_i),
        .DI({ua_narrow_load1_carry_i_29_n_0,ua_narrow_load1_carry_i_30_n_0,ua_narrow_load1_carry_i_31_n_0,ua_narrow_load1_carry_i_32_n_0}),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ({ua_narrow_load1_carry_i_29__0_n_0,ua_narrow_load1_carry_i_30__0_n_0,ua_narrow_load1_carry_i_31__0_n_0,ua_narrow_load1_carry_i_32__0_n_0}),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 (ua_narrow_load1_carry_i_33__0_n_0),
        .\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg (s_axi_rlast),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg (s_axi_rvalid),
        .Q(addra_bram_addra_i),
        .S(ua_narrow_load1_carry_i_33_n_0),
        .axi_bvalid_int_reg(s_axi_bvalid),
        .dina(dina_bram_dina_i),
        .ena(ena_bram_ena_i),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(\gint_inst.abcv4_0_int_inst_n_1 ),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .ua_narrow_load1_carry_i_8({ua_narrow_load1_carry_i_22_n_0,ua_narrow_load1_carry_i_23_n_0,ua_narrow_load1_carry_i_24_n_0,ua_narrow_load1_carry_i_25__0_n_0}),
        .ua_narrow_load1_carry_i_8__0({ua_narrow_load1_carry_i_22__0_n_0,ua_narrow_load1_carry_i_23__0_n_0,ua_narrow_load1_carry_i_24__0_n_0,ua_narrow_load1_carry_i_25_n_0}),
        .wea(wea_bram_wea_i));
  axi_bram_ctrl_0_xpm_memory_spram \gint_inst.xpm_spram_mem_gen.xpm_memory_spram_inst 
       (.Q(addra_bram_addra_i),
        .dina(dina_bram_dina_i),
        .douta(douta_bram_douta_i),
        .ena(ena_bram_ena_i),
        .\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0 (\gint_inst.abcv4_0_int_inst_n_1 ),
        .s_axi_aclk(s_axi_aclk),
        .wea(wea_bram_wea_i));
  LUT3 #(
    .INIT(8'h80)) 
    ua_narrow_load1_carry_i_22
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .O(ua_narrow_load1_carry_i_22_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    ua_narrow_load1_carry_i_22__0
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(ua_narrow_load1_carry_i_22__0_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    ua_narrow_load1_carry_i_23
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(ua_narrow_load1_carry_i_23_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    ua_narrow_load1_carry_i_23__0
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(ua_narrow_load1_carry_i_23__0_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    ua_narrow_load1_carry_i_24
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .O(ua_narrow_load1_carry_i_24_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    ua_narrow_load1_carry_i_24__0
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(ua_narrow_load1_carry_i_24__0_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    ua_narrow_load1_carry_i_25
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .O(ua_narrow_load1_carry_i_25_n_0));
  LUT3 #(
    .INIT(8'h10)) 
    ua_narrow_load1_carry_i_25__0
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(ua_narrow_load1_carry_i_25__0_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    ua_narrow_load1_carry_i_29
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .O(ua_narrow_load1_carry_i_29_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    ua_narrow_load1_carry_i_29__0
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(ua_narrow_load1_carry_i_29__0_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    ua_narrow_load1_carry_i_30
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .O(ua_narrow_load1_carry_i_30_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    ua_narrow_load1_carry_i_30__0
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(ua_narrow_load1_carry_i_30__0_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    ua_narrow_load1_carry_i_31
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(ua_narrow_load1_carry_i_31_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    ua_narrow_load1_carry_i_31__0
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(ua_narrow_load1_carry_i_31__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ua_narrow_load1_carry_i_32
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(ua_narrow_load1_carry_i_32_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    ua_narrow_load1_carry_i_32__0
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(ua_narrow_load1_carry_i_32__0_n_0));
  LUT4 #(
    .INIT(16'hDF20)) 
    ua_narrow_load1_carry_i_33
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awaddr[3]),
        .O(ua_narrow_load1_carry_i_33_n_0));
  LUT4 #(
    .INIT(16'hDF20)) 
    ua_narrow_load1_carry_i_33__0
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_araddr[3]),
        .O(ua_narrow_load1_carry_i_33__0_n_0));
endmodule

(* ORIG_REF_NAME = "axi_bram_ctrl_top" *) 
module axi_bram_ctrl_0_axi_bram_ctrl_top
   (s_axi_awready,
    s_axi_aresetn_0,
    s_axi_arready,
    dina,
    s_axi_rdata,
    ena,
    s_axi_wready,
    axi_bvalid_int_reg,
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ,
    Q,
    wea,
    s_axi_bid,
    s_axi_rid,
    s_axi_aclk,
    s_axi_awid,
    s_axi_wdata,
    s_axi_arvalid,
    s_axi_wlast,
    s_axi_awburst,
    s_axi_aresetn,
    DI,
    S,
    ua_narrow_load1_carry_i_8,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ,
    ua_narrow_load1_carry_i_8__0,
    s_axi_arburst,
    s_axi_awsize,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_wvalid,
    s_axi_bready,
    s_axi_awlen,
    s_axi_awvalid,
    s_axi_arsize,
    s_axi_rready,
    s_axi_arlen,
    s_axi_wstrb,
    s_axi_arid,
    D);
  output s_axi_awready;
  output s_axi_aresetn_0;
  output s_axi_arready;
  output [127:0]dina;
  output [127:0]s_axi_rdata;
  output ena;
  output s_axi_wready;
  output axi_bvalid_int_reg;
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  output [9:0]Q;
  output [15:0]wea;
  output [1:0]s_axi_bid;
  output [1:0]s_axi_rid;
  input s_axi_aclk;
  input [1:0]s_axi_awid;
  input [127:0]s_axi_wdata;
  input s_axi_arvalid;
  input s_axi_wlast;
  input [1:0]s_axi_awburst;
  input s_axi_aresetn;
  input [3:0]DI;
  input [0:0]S;
  input [3:0]ua_narrow_load1_carry_i_8;
  input [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ;
  input [0:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ;
  input [3:0]ua_narrow_load1_carry_i_8__0;
  input [1:0]s_axi_arburst;
  input [2:0]s_axi_awsize;
  input [13:0]s_axi_awaddr;
  input [13:0]s_axi_araddr;
  input s_axi_wvalid;
  input s_axi_bready;
  input [7:0]s_axi_awlen;
  input s_axi_awvalid;
  input [2:0]s_axi_arsize;
  input s_axi_rready;
  input [7:0]s_axi_arlen;
  input [15:0]s_axi_wstrb;
  input [1:0]s_axi_arid;
  input [127:0]D;

  wire AW2Arb_Active_Clr;
  wire Arb2AR_Active;
  wire Arb2AW_Active;
  wire BRAM_En_A_i;
  wire BRAM_En_B_i;
  wire [127:0]D;
  wire [3:0]DI;
  wire [1:0]\GEN_ARB.I_SNG_PORT/arb_sm_cs ;
  wire \GEN_ARB.I_SNG_PORT/axi_arready_cmb ;
  wire \GEN_ARB.I_SNG_PORT/axi_awready_cmb ;
  wire \GEN_ARB.I_SNG_PORT/last_arb_won ;
  wire \GEN_ARB.I_SNG_PORT/last_arb_won_cmb ;
  wire \GEN_AXI4.I_FULL_AXI_n_136 ;
  wire \GEN_AXI4.I_FULL_AXI_n_265 ;
  wire \GEN_AXI4.I_FULL_AXI_n_279 ;
  wire \GEN_AXI4.I_FULL_AXI_n_298 ;
  wire \GEN_AXI4.I_FULL_AXI_n_304 ;
  wire \GEN_AXI4.I_FULL_AXI_n_305 ;
  wire \GEN_AXI4.I_FULL_AXI_n_307 ;
  wire \GEN_AXI4.I_FULL_AXI_n_308 ;
  wire \GEN_AXI4.I_FULL_AXI_n_309 ;
  wire \GEN_AXI4.I_FULL_AXI_n_310 ;
  wire \GEN_AXI4.I_FULL_AXI_n_311 ;
  wire \GEN_AXI4.I_FULL_AXI_n_312 ;
  wire \GEN_AXI4.I_FULL_AXI_n_313 ;
  wire \GEN_AXI4.I_FULL_AXI_n_314 ;
  wire \GEN_AXI4.I_FULL_AXI_n_317 ;
  wire \GEN_AXI4.I_FULL_AXI_n_318 ;
  wire \GEN_AXI4.I_FULL_AXI_n_319 ;
  wire \GEN_AXI4.I_FULL_AXI_n_320 ;
  wire \GEN_AXI4.I_FULL_AXI_n_321 ;
  wire \GEN_AXI4.I_FULL_AXI_n_323 ;
  wire \GEN_AXI4.I_FULL_AXI_n_340 ;
  wire \GEN_AXI4.I_FULL_AXI_n_341 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0 ;
  wire [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ;
  wire [0:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ;
  wire \I_RD_CHNL/act_rd_burst ;
  wire \I_RD_CHNL/act_rd_burst_set ;
  wire \I_RD_CHNL/act_rd_burst_two ;
  wire \I_RD_CHNL/ar_active_d1 ;
  wire \I_RD_CHNL/ar_active_re ;
  wire \I_RD_CHNL/axi_rd_burst ;
  wire \I_RD_CHNL/axi_rd_burst_two ;
  wire \I_RD_CHNL/brst_zero ;
  wire \I_RD_CHNL/curr_narrow_burst ;
  wire \I_RD_CHNL/end_brst_rd_clr ;
  wire \I_RD_CHNL/pend_rd_op ;
  wire [3:0]\I_RD_CHNL/rd_data_sm_cs ;
  wire \I_RD_CHNL/rddata_mux_sel ;
  wire \I_WR_CHNL/aw_active_d1 ;
  wire \I_WR_CHNL/axi_wr_burst ;
  wire \I_WR_CHNL/curr_fixed_burst_reg ;
  wire \I_WR_CHNL/curr_wrap_burst_reg ;
  wire [9:0]Q;
  wire [0:0]S;
  wire ar_active_i_1_n_0;
  wire aw_active_i_1_n_0;
  wire axi_bvalid_int_reg;
  wire axi_wr_burst_i_1_n_0;
  wire curr_fixed_burst_reg_i_1_n_0;
  wire curr_wrap_burst_reg_i_1_n_0;
  wire [127:0]dina;
  wire ena;
  wire last_arb_won_i_1_n_0;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [1:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [1:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [1:0]s_axi_bid;
  wire s_axi_bready;
  wire [127:0]s_axi_rdata;
  wire [1:0]s_axi_rid;
  wire s_axi_rready;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [3:0]ua_narrow_load1_carry_i_8;
  wire [3:0]ua_narrow_load1_carry_i_8__0;
  wire [15:0]wea;

  axi_bram_ctrl_0_full_axi \GEN_AXI4.I_FULL_AXI 
       (.AW2Arb_Active_Clr(AW2Arb_Active_Clr),
        .Arb2AR_Active(Arb2AR_Active),
        .Arb2AW_Active(Arb2AW_Active),
        .BRAM_En_A_i(BRAM_En_A_i),
        .BRAM_En_B_i(BRAM_En_B_i),
        .D(D),
        .DI(DI),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] (\GEN_AXI4.I_FULL_AXI_n_298 ),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] (\GEN_AXI4.I_FULL_AXI_n_318 ),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 (\GEN_AXI4.I_FULL_AXI_n_321 ),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 (\GEN_AXI4.I_FULL_AXI_n_340 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] (\GEN_AXI4.I_FULL_AXI_n_309 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] (\GEN_AXI4.I_FULL_AXI_n_305 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 (\GEN_AXI4.I_FULL_AXI_n_310 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1 (\GEN_AXI4.I_FULL_AXI_n_320 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] (\GEN_AXI4.I_FULL_AXI_n_341 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] (\I_RD_CHNL/rd_data_sm_cs ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg (\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_i_1_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg (\GEN_AXI4.I_FULL_AXI_n_136 ),
        .\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0 (\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] (\GEN_AXI4.I_FULL_AXI_n_308 ),
        .\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg (\GEN_AXI4.I_FULL_AXI_n_307 ),
        .\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 (\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg (\GEN_AXI4.I_FULL_AXI_n_279 ),
        .\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 (\GEN_AXI4.I_FULL_AXI_n_311 ),
        .\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1 (\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0 ),
        .\GEN_NO_RD_CMD_OPT.act_rd_burst_reg (\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ),
        .\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg (\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ),
        .\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg (\GEN_AXI4.I_FULL_AXI_n_265 ),
        .\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 (\GEN_AXI4.I_FULL_AXI_n_317 ),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ),
        .\GEN_NO_RD_CMD_OPT.bram_en_int_reg (\GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ),
        .\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg (\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ),
        .\GEN_NO_RD_CMD_OPT.end_brst_rd_reg (\GEN_AXI4.I_FULL_AXI_n_312 ),
        .\GEN_NO_RD_CMD_OPT.pend_rd_op_reg (\GEN_AXI4.I_FULL_AXI_n_304 ),
        .\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 (\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ),
        .\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg (\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ),
        .Q(Q),
        .S(S),
        .SR(s_axi_aresetn_0),
        .act_rd_burst(\I_RD_CHNL/act_rd_burst ),
        .act_rd_burst_set(\I_RD_CHNL/act_rd_burst_set ),
        .act_rd_burst_two(\I_RD_CHNL/act_rd_burst_two ),
        .ar_active_d1(\I_RD_CHNL/ar_active_d1 ),
        .ar_active_re(\I_RD_CHNL/ar_active_re ),
        .ar_active_reg(ar_active_i_1_n_0),
        .arb_sm_cs(\GEN_ARB.I_SNG_PORT/arb_sm_cs ),
        .aw_active_d1(\I_WR_CHNL/aw_active_d1 ),
        .aw_active_reg(aw_active_i_1_n_0),
        .axi_arready_cmb(\GEN_ARB.I_SNG_PORT/axi_arready_cmb ),
        .axi_awready_cmb(\GEN_ARB.I_SNG_PORT/axi_awready_cmb ),
        .axi_bvalid_int_reg(axi_bvalid_int_reg),
        .axi_rd_burst(\I_RD_CHNL/axi_rd_burst ),
        .axi_rd_burst_two(\I_RD_CHNL/axi_rd_burst_two ),
        .axi_wr_burst(\I_WR_CHNL/axi_wr_burst ),
        .axi_wr_burst_reg(axi_wr_burst_i_1_n_0),
        .brst_zero(\I_RD_CHNL/brst_zero ),
        .\bvalid_cnt_reg[2] (\GEN_AXI4.I_FULL_AXI_n_323 ),
        .curr_fixed_burst_reg(\I_WR_CHNL/curr_fixed_burst_reg ),
        .curr_fixed_burst_reg_reg(curr_fixed_burst_reg_i_1_n_0),
        .curr_narrow_burst(\I_RD_CHNL/curr_narrow_burst ),
        .curr_wrap_burst_reg(\I_WR_CHNL/curr_wrap_burst_reg ),
        .curr_wrap_burst_reg_reg(curr_wrap_burst_reg_i_1_n_0),
        .dina(dina),
        .end_brst_rd_clr(\I_RD_CHNL/end_brst_rd_clr ),
        .last_arb_won(\GEN_ARB.I_SNG_PORT/last_arb_won ),
        .last_arb_won_cmb(\GEN_ARB.I_SNG_PORT/last_arb_won_cmb ),
        .last_arb_won_reg(\GEN_AXI4.I_FULL_AXI_n_319 ),
        .last_arb_won_reg_0(last_arb_won_i_1_n_0),
        .pend_rd_op(\I_RD_CHNL/pend_rd_op ),
        .rddata_mux_sel(\I_RD_CHNL/rddata_mux_sel ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlen_2_sp_1(\GEN_AXI4.I_FULL_AXI_n_313 ),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awvalid_0(\GEN_AXI4.I_FULL_AXI_n_314 ),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .ua_narrow_load1_carry_i_8(ua_narrow_load1_carry_i_8),
        .ua_narrow_load1_carry_i_8__0(ua_narrow_load1_carry_i_8__0),
        .wea(wea));
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_i_1 
       (.I0(Arb2AR_Active),
        .I1(\GEN_AXI4.I_FULL_AXI_n_265 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00202020)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2 
       (.I0(\I_RD_CHNL/brst_zero ),
        .I1(\I_RD_CHNL/pend_rd_op ),
        .I2(Arb2AR_Active),
        .I3(\I_RD_CHNL/curr_narrow_burst ),
        .I4(\GEN_AXI4.I_FULL_AXI_n_308 ),
        .I5(\GEN_AXI4.I_FULL_AXI_n_136 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h030003000000AA00)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1 
       (.I0(\I_RD_CHNL/axi_rd_burst ),
        .I1(\GEN_AXI4.I_FULL_AXI_n_313 ),
        .I2(\I_RD_CHNL/axi_rd_burst_two ),
        .I3(s_axi_aresetn),
        .I4(\I_RD_CHNL/brst_zero ),
        .I5(\I_RD_CHNL/ar_active_re ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00A0C0C000A000A0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1 
       (.I0(\GEN_AXI4.I_FULL_AXI_n_279 ),
        .I1(\I_RD_CHNL/axi_rd_burst_two ),
        .I2(s_axi_aresetn),
        .I3(\I_RD_CHNL/brst_zero ),
        .I4(\I_RD_CHNL/ar_active_d1 ),
        .I5(Arb2AR_Active),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000002EEE2E22)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_1 
       (.I0(\I_RD_CHNL/act_rd_burst ),
        .I1(\I_RD_CHNL/act_rd_burst_set ),
        .I2(\I_RD_CHNL/axi_rd_burst_two ),
        .I3(\I_RD_CHNL/ar_active_re ),
        .I4(\I_RD_CHNL/axi_rd_burst ),
        .I5(\GEN_AXI4.I_FULL_AXI_n_341 ),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1 
       (.I0(\I_RD_CHNL/act_rd_burst_two ),
        .I1(\I_RD_CHNL/act_rd_burst_set ),
        .I2(\GEN_AXI4.I_FULL_AXI_n_279 ),
        .I3(\I_RD_CHNL/ar_active_re ),
        .I4(\I_RD_CHNL/axi_rd_burst_two ),
        .I5(\GEN_AXI4.I_FULL_AXI_n_341 ),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFAB000000AB)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_1 
       (.I0(\GEN_AXI4.I_FULL_AXI_n_304 ),
        .I1(\I_RD_CHNL/rd_data_sm_cs [0]),
        .I2(\GEN_AXI4.I_FULL_AXI_n_312 ),
        .I3(\I_RD_CHNL/rd_data_sm_cs [3]),
        .I4(\GEN_AXI4.I_FULL_AXI_n_305 ),
        .I5(BRAM_En_B_i),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFCFFFD03000000)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1 
       (.I0(\I_RD_CHNL/ar_active_re ),
        .I1(\I_RD_CHNL/rd_data_sm_cs [1]),
        .I2(\I_RD_CHNL/rd_data_sm_cs [3]),
        .I3(\I_RD_CHNL/rd_data_sm_cs [2]),
        .I4(\I_RD_CHNL/rd_data_sm_cs [0]),
        .I5(\I_RD_CHNL/end_brst_rd_clr ),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE000FFFFE0000000)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_1 
       (.I0(\I_RD_CHNL/rd_data_sm_cs [2]),
        .I1(\GEN_AXI4.I_FULL_AXI_n_307 ),
        .I2(\GEN_AXI4.I_FULL_AXI_n_320 ),
        .I3(\I_RD_CHNL/ar_active_re ),
        .I4(\GEN_AXI4.I_FULL_AXI_n_309 ),
        .I5(\I_RD_CHNL/pend_rd_op ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFD01)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1 
       (.I0(\GEN_AXI4.I_FULL_AXI_n_310 ),
        .I1(\I_RD_CHNL/rd_data_sm_cs [3]),
        .I2(\GEN_AXI4.I_FULL_AXI_n_311 ),
        .I3(\I_RD_CHNL/rddata_mux_sel ),
        .O(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    ar_active_i_1
       (.I0(\GEN_ARB.I_SNG_PORT/last_arb_won_cmb ),
        .I1(\GEN_AXI4.I_FULL_AXI_n_319 ),
        .I2(\GEN_AXI4.I_FULL_AXI_n_318 ),
        .I3(s_axi_arvalid),
        .I4(Arb2AR_Active),
        .O(ar_active_i_1_n_0));
  LUT6 #(
    .INIT(64'h0A0ACFFF0A0A0000)) 
    aw_active_i_1
       (.I0(\GEN_AXI4.I_FULL_AXI_n_314 ),
        .I1(\GEN_ARB.I_SNG_PORT/arb_sm_cs [1]),
        .I2(\GEN_ARB.I_SNG_PORT/arb_sm_cs [0]),
        .I3(AW2Arb_Active_Clr),
        .I4(\GEN_ARB.I_SNG_PORT/axi_awready_cmb ),
        .I5(Arb2AW_Active),
        .O(aw_active_i_1_n_0));
  LUT4 #(
    .INIT(16'h5754)) 
    axi_wr_burst_i_1
       (.I0(s_axi_wlast),
        .I1(\GEN_AXI4.I_FULL_AXI_n_321 ),
        .I2(\GEN_AXI4.I_FULL_AXI_n_298 ),
        .I3(\I_WR_CHNL/axi_wr_burst ),
        .O(axi_wr_burst_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000008A8A8ABA)) 
    curr_fixed_burst_reg_i_1
       (.I0(\I_WR_CHNL/curr_fixed_burst_reg ),
        .I1(\I_WR_CHNL/aw_active_d1 ),
        .I2(Arb2AW_Active),
        .I3(s_axi_awburst[1]),
        .I4(s_axi_awburst[0]),
        .I5(\GEN_AXI4.I_FULL_AXI_n_340 ),
        .O(curr_fixed_burst_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000008ABA8A8A)) 
    curr_wrap_burst_reg_i_1
       (.I0(\I_WR_CHNL/curr_wrap_burst_reg ),
        .I1(\I_WR_CHNL/aw_active_d1 ),
        .I2(Arb2AW_Active),
        .I3(s_axi_awburst[0]),
        .I4(s_axi_awburst[1]),
        .I5(\GEN_AXI4.I_FULL_AXI_n_340 ),
        .O(curr_wrap_burst_reg_i_1_n_0));
  LUT6 #(
    .INIT(64'hAAAAAABFAAAAAA80)) 
    last_arb_won_i_1
       (.I0(\GEN_ARB.I_SNG_PORT/last_arb_won_cmb ),
        .I1(\GEN_AXI4.I_FULL_AXI_n_317 ),
        .I2(\GEN_AXI4.I_FULL_AXI_n_314 ),
        .I3(\GEN_ARB.I_SNG_PORT/axi_arready_cmb ),
        .I4(\GEN_AXI4.I_FULL_AXI_n_323 ),
        .I5(\GEN_ARB.I_SNG_PORT/last_arb_won ),
        .O(last_arb_won_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    xpm_memory_base_inst_i_1
       (.I0(BRAM_En_A_i),
        .I1(BRAM_En_B_i),
        .O(ena));
endmodule

(* ORIG_REF_NAME = "full_axi" *) 
module axi_bram_ctrl_0_full_axi
   (s_axi_awready,
    SR,
    axi_awready_cmb,
    s_axi_arready,
    axi_arready_cmb,
    aw_active_d1,
    Arb2AW_Active,
    BRAM_En_A_i,
    dina,
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ,
    s_axi_rdata,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ,
    ar_active_re,
    last_arb_won,
    Arb2AR_Active,
    axi_wr_burst,
    s_axi_wready,
    axi_bvalid_int_reg,
    curr_fixed_burst_reg,
    curr_wrap_burst_reg,
    ar_active_d1,
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ,
    brst_zero,
    axi_rd_burst,
    act_rd_burst,
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg ,
    act_rd_burst_two,
    pend_rd_op,
    curr_narrow_burst,
    end_brst_rd_clr,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ,
    rddata_mux_sel,
    BRAM_En_B_i,
    Q,
    AW2Arb_Active_Clr,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] ,
    axi_rd_burst_two,
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ,
    act_rd_burst_set,
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ,
    \GEN_NO_RD_CMD_OPT.end_brst_rd_reg ,
    s_axi_arlen_2_sp_1,
    s_axi_awvalid_0,
    arb_sm_cs,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 ,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ,
    last_arb_won_reg,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1 ,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ,
    last_arb_won_cmb,
    \bvalid_cnt_reg[2] ,
    wea,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ,
    s_axi_bid,
    s_axi_rid,
    s_axi_aclk,
    s_axi_awid,
    s_axi_wdata,
    last_arb_won_reg_0,
    aw_active_reg,
    ar_active_reg,
    axi_wr_burst_reg,
    curr_fixed_burst_reg_reg,
    curr_wrap_burst_reg_reg,
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ,
    \GEN_NO_RD_CMD_OPT.act_rd_burst_reg ,
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1 ,
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg ,
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ,
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg ,
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg ,
    \GEN_NO_RD_CMD_OPT.bram_en_int_reg ,
    DI,
    S,
    ua_narrow_load1_carry_i_8,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ,
    ua_narrow_load1_carry_i_8__0,
    s_axi_aresetn,
    s_axi_arburst,
    s_axi_awsize,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_awburst,
    s_axi_wvalid,
    s_axi_wlast,
    s_axi_bready,
    s_axi_awlen,
    s_axi_awvalid,
    s_axi_arsize,
    s_axi_rready,
    s_axi_arlen,
    s_axi_arvalid,
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0 ,
    s_axi_wstrb,
    s_axi_arid,
    D);
  output s_axi_awready;
  output [0:0]SR;
  output axi_awready_cmb;
  output s_axi_arready;
  output axi_arready_cmb;
  output aw_active_d1;
  output Arb2AW_Active;
  output BRAM_En_A_i;
  output [127:0]dina;
  output \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ;
  output [127:0]s_axi_rdata;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  output ar_active_re;
  output last_arb_won;
  output Arb2AR_Active;
  output axi_wr_burst;
  output s_axi_wready;
  output axi_bvalid_int_reg;
  output curr_fixed_burst_reg;
  output curr_wrap_burst_reg;
  output ar_active_d1;
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  output brst_zero;
  output axi_rd_burst;
  output act_rd_burst;
  output \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg ;
  output act_rd_burst_two;
  output pend_rd_op;
  output curr_narrow_burst;
  output end_brst_rd_clr;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ;
  output rddata_mux_sel;
  output BRAM_En_B_i;
  output [9:0]Q;
  output AW2Arb_Active_Clr;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  output [3:0]\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] ;
  output axi_rd_burst_two;
  output \GEN_NO_RD_CMD_OPT.pend_rd_op_reg ;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ;
  output act_rd_burst_set;
  output \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg ;
  output \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] ;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] ;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ;
  output \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.end_brst_rd_reg ;
  output s_axi_arlen_2_sp_1;
  output s_axi_awvalid_0;
  output [1:0]arb_sm_cs;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 ;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ;
  output last_arb_won_reg;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1 ;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ;
  output last_arb_won_cmb;
  output \bvalid_cnt_reg[2] ;
  output [15:0]wea;
  output [0:0]\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ;
  output [1:0]s_axi_bid;
  output [1:0]s_axi_rid;
  input s_axi_aclk;
  input [1:0]s_axi_awid;
  input [127:0]s_axi_wdata;
  input last_arb_won_reg_0;
  input aw_active_reg;
  input ar_active_reg;
  input axi_wr_burst_reg;
  input curr_fixed_burst_reg_reg;
  input curr_wrap_burst_reg_reg;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ;
  input \GEN_NO_RD_CMD_OPT.act_rd_burst_reg ;
  input \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1 ;
  input \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg ;
  input \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ;
  input \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg ;
  input \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg ;
  input \GEN_NO_RD_CMD_OPT.bram_en_int_reg ;
  input [3:0]DI;
  input [0:0]S;
  input [3:0]ua_narrow_load1_carry_i_8;
  input [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ;
  input [0:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ;
  input [3:0]ua_narrow_load1_carry_i_8__0;
  input s_axi_aresetn;
  input [1:0]s_axi_arburst;
  input [2:0]s_axi_awsize;
  input [13:0]s_axi_awaddr;
  input [13:0]s_axi_araddr;
  input [1:0]s_axi_awburst;
  input s_axi_wvalid;
  input s_axi_wlast;
  input s_axi_bready;
  input [7:0]s_axi_awlen;
  input s_axi_awvalid;
  input [2:0]s_axi_arsize;
  input s_axi_rready;
  input [7:0]s_axi_arlen;
  input s_axi_arvalid;
  input \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0 ;
  input [15:0]s_axi_wstrb;
  input [1:0]s_axi_arid;
  input [127:0]D;

  wire \ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ;
  wire \ADDR_SNG_PORT.sng_bram_addr_ld_en ;
  wire AW2Arb_Active_Clr;
  wire Arb2AR_Active;
  wire Arb2AW_Active;
  wire BRAM_En_A_i;
  wire BRAM_En_B_i;
  wire [15:0]BRAM_WE_A_i;
  wire [127:0]D;
  wire [3:0]DI;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ;
  wire [0:0]\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ;
  wire [3:0]\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] ;
  wire \GEN_ARB.I_SNG_PORT_n_10 ;
  wire \GEN_ARB.I_SNG_PORT_n_7 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0 ;
  wire [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ;
  wire [0:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_reg ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_reg ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_reg ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg ;
  wire I_RD_CHNL_n_152;
  wire I_RD_CHNL_n_155;
  wire I_RD_CHNL_n_156;
  wire I_RD_CHNL_n_172;
  wire I_RD_CHNL_n_173;
  wire I_WR_CHNL_n_135;
  wire I_WR_CHNL_n_146;
  wire I_WR_CHNL_n_149;
  wire I_WR_CHNL_n_150;
  wire I_WR_CHNL_n_151;
  wire I_WR_CHNL_n_152;
  wire I_WR_CHNL_n_153;
  wire I_WR_CHNL_n_158;
  wire [9:0]Q;
  wire [13:12]RdChnl_BRAM_Addr_Ld;
  wire [0:0]S;
  wire [0:0]SR;
  wire [11:5]WrChnl_BRAM_Addr_Ld;
  wire act_rd_burst;
  wire act_rd_burst_set;
  wire act_rd_burst_two;
  wire ar_active_d1;
  wire ar_active_re;
  wire ar_active_reg;
  wire [1:0]arb_sm_cs;
  wire aw_active_d1;
  wire aw_active_re;
  wire aw_active_reg;
  wire axi_arready_cmb;
  wire axi_awready_cmb;
  wire axi_bvalid_int_reg;
  wire axi_rd_burst;
  wire axi_rd_burst_two;
  wire axi_wr_burst;
  wire axi_wr_burst_reg;
  wire brst_zero;
  wire \bvalid_cnt_reg[2] ;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_reg;
  wire curr_narrow_burst;
  wire curr_narrow_burst_en;
  wire curr_wrap_burst_reg;
  wire curr_wrap_burst_reg_reg;
  wire [127:0]dina;
  wire end_brst_rd_clr;
  wire last_arb_won;
  wire last_arb_won_cmb;
  wire last_arb_won_reg;
  wire last_arb_won_reg_0;
  wire [9:0]p_1_in;
  wire pend_rd_op;
  wire rddata_mux_sel;
  wire s_axi_aclk;
  wire [13:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire [1:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlen_2_sn_1;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [13:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [1:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_awvalid_0;
  wire [1:0]s_axi_bid;
  wire s_axi_bready;
  wire [127:0]s_axi_rdata;
  wire [1:0]s_axi_rid;
  wire s_axi_rready;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [3:0]ua_narrow_load1_carry_i_8;
  wire [3:0]ua_narrow_load1_carry_i_8__0;
  wire [15:0]wea;

  assign s_axi_arlen_2_sp_1 = s_axi_arlen_2_sn_1;
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_2 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[4]),
        .O(\ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_5 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_156),
        .D(p_1_in[6]),
        .Q(Q[6]),
        .R(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_156),
        .D(p_1_in[7]),
        .Q(Q[7]),
        .R(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(p_1_in[8]),
        .Q(Q[8]),
        .R(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .D(p_1_in[9]),
        .Q(Q[9]),
        .R(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_156),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_156),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_156),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_156),
        .D(p_1_in[3]),
        .Q(Q[3]),
        .R(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_156),
        .D(p_1_in[4]),
        .Q(Q[4]),
        .R(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \ADDR_SNG_PORT.bram_addr_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(I_RD_CHNL_n_156),
        .D(p_1_in[5]),
        .Q(Q[5]),
        .R(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ));
  axi_bram_ctrl_0_sng_port_arb \GEN_ARB.I_SNG_PORT 
       (.E(ar_active_re),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] (\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ),
        .\FSM_sequential_arb_sm_cs_reg[0]_0 (arb_sm_cs[0]),
        .\FSM_sequential_arb_sm_cs_reg[0]_1 (I_RD_CHNL_n_173),
        .\FSM_sequential_arb_sm_cs_reg[0]_2 (AW2Arb_Active_Clr),
        .\FSM_sequential_arb_sm_cs_reg[1]_0 (arb_sm_cs[1]),
        .\GEN_NARROW_CNT.narrow_addr_int[3]_i_6_0 (I_WR_CHNL_n_135),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1] (I_WR_CHNL_n_158),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 (I_WR_CHNL_n_151),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 (I_WR_CHNL_n_150),
        .\GEN_NARROW_EN.curr_narrow_burst_reg (I_WR_CHNL_n_152),
        .\GEN_NARROW_EN.curr_narrow_burst_reg_0 (I_WR_CHNL_n_153),
        .\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 ),
        .\GEN_NO_RD_CMD_OPT.brst_zero_reg (I_RD_CHNL_n_172),
        .Q(BRAM_WE_A_i),
        .ar_active_reg_0(Arb2AR_Active),
        .ar_active_reg_1(ar_active_reg),
        .aw_active_re(aw_active_re),
        .aw_active_reg_0(Arb2AW_Active),
        .aw_active_reg_1(SR),
        .aw_active_reg_2(aw_active_reg),
        .axi_arready_cmb(axi_arready_cmb),
        .axi_arready_int_reg_0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .axi_awready_cmb(axi_awready_cmb),
        .axi_awready_int_reg_0(s_axi_awvalid_0),
        .curr_narrow_burst_en(curr_narrow_burst_en),
        .last_arb_won_cmb(last_arb_won_cmb),
        .last_arb_won_reg_0(last_arb_won),
        .last_arb_won_reg_1(last_arb_won_reg),
        .last_arb_won_reg_2(last_arb_won_reg_0),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_arlen_0_sp_1(\GEN_ARB.I_SNG_PORT_n_10 ),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[3:0]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awburst_0_sp_1(\GEN_ARB.I_SNG_PORT_n_7 ),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_rready(s_axi_rready),
        .\save_init_bram_addr_ld_reg[13] (ar_active_d1),
        .wea(wea),
        .\wrap_burst_total_reg[0] (aw_active_d1));
  axi_bram_ctrl_0_rd_chnl I_RD_CHNL
       (.\ADDR_SNG_PORT.bram_addr_int_reg[10] (Arb2AR_Active),
        .\ADDR_SNG_PORT.bram_addr_int_reg[10]_0 (\ADDR_SNG_PORT.bram_addr_int[10]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11] (WrChnl_BRAM_Addr_Ld),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 (I_WR_CHNL_n_149),
        .\ADDR_SNG_PORT.bram_addr_int_reg[13] (I_WR_CHNL_n_146),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5] (I_RD_CHNL_n_155),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6] (\ADDR_SNG_PORT.bram_addr_int[6]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7] (\ADDR_SNG_PORT.bram_addr_int[7]_i_2_n_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[9] (\ADDR_SNG_PORT.bram_addr_int[11]_i_5_n_0 ),
        .\ADDR_SNG_PORT.sng_bram_addr_ld_en (\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .BRAM_En_B_i(BRAM_En_B_i),
        .D(p_1_in[7:1]),
        .E(ar_active_re),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]_0 (\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 (\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1 (\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_2 (\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1 ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0 (\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 (\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] ),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 (ar_active_d1),
        .\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_1 (\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0 (\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_1 (\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0 (curr_narrow_burst),
        .\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 (D),
        .\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 (axi_rd_burst),
        .\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_1 (\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_2 (\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 (\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg ),
        .\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1 (\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_2 (\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1 ),
        .\GEN_NO_RD_CMD_OPT.act_rd_burst_reg_0 (act_rd_burst),
        .\GEN_NO_RD_CMD_OPT.act_rd_burst_reg_1 (\GEN_NO_RD_CMD_OPT.act_rd_burst_reg ),
        .\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_0 (act_rd_burst_two),
        .\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_1 (\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg ),
        .\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 (\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg ),
        .\GEN_NO_RD_CMD_OPT.bram_en_int_reg_0 (\GEN_NO_RD_CMD_OPT.bram_en_int_reg ),
        .\GEN_NO_RD_CMD_OPT.brst_zero_reg_0 (brst_zero),
        .\GEN_NO_RD_CMD_OPT.brst_zero_reg_1 (\GEN_ARB.I_SNG_PORT_n_10 ),
        .\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg_0 (I_RD_CHNL_n_152),
        .\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg_0 (\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg ),
        .\GEN_NO_RD_CMD_OPT.end_brst_rd_reg_0 (\GEN_NO_RD_CMD_OPT.end_brst_rd_reg ),
        .\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 (pend_rd_op),
        .\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_1 (\GEN_NO_RD_CMD_OPT.pend_rd_op_reg ),
        .\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_2 (\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ),
        .\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 (rddata_mux_sel),
        .\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_1 (\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg ),
        .Q(Q[7:0]),
        .act_rd_burst_set(act_rd_burst_set),
        .ar_active_reg(I_RD_CHNL_n_156),
        .axi_rd_burst_two(axi_rd_burst_two),
        .end_brst_rd_clr(end_brst_rd_clr),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr({s_axi_araddr[13:5],s_axi_araddr[3:0]}),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_aresetn_0(SR),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlen_2_sp_1(s_axi_arlen_2_sn_1),
        .s_axi_arlen_4_sp_1(I_RD_CHNL_n_172),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rready_0(I_RD_CHNL_n_173),
        .\save_init_bram_addr_ld_reg[13] (RdChnl_BRAM_Addr_Ld),
        .ua_narrow_load1_carry_i_8__0(ua_narrow_load1_carry_i_8__0));
  axi_bram_ctrl_0_wr_chnl I_WR_CHNL
       (.\ADDR_SNG_PORT.bram_addr_int_reg[13] (RdChnl_BRAM_Addr_Ld),
        .\ADDR_SNG_PORT.bram_addr_int_reg[13]_0 (Arb2AR_Active),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (I_RD_CHNL_n_152),
        .BRAM_En_A_i(BRAM_En_A_i),
        .D({p_1_in[9:8],p_1_in[0]}),
        .DI(DI),
        .E(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0 (\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] ),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 (AW2Arb_Active_Clr),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 (\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 (\GEN_ARB.I_SNG_PORT_n_7 ),
        .\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0 (I_WR_CHNL_n_149),
        .\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 (BRAM_WE_A_i),
        .Q(Q[2:0]),
        .S(S),
        .SR(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ),
        .arb_sm_cs(arb_sm_cs),
        .aw_active_d1_reg_0(aw_active_d1),
        .aw_active_d1_reg_1(I_WR_CHNL_n_146),
        .aw_active_d1_reg_2(Arb2AW_Active),
        .aw_active_re(aw_active_re),
        .axi_bvalid_int_reg_0(axi_bvalid_int_reg),
        .axi_wr_burst(axi_wr_burst),
        .axi_wr_burst_reg_0(axi_wr_burst_reg),
        .\bvalid_cnt_reg[2]_0 (\bvalid_cnt_reg[2] ),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_fixed_burst_reg_reg_0(curr_fixed_burst_reg_reg),
        .curr_narrow_burst_en(curr_narrow_burst_en),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .curr_wrap_burst_reg_reg_0(curr_wrap_burst_reg_reg),
        .dina(dina),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[4]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr({s_axi_awaddr[13:4],s_axi_awaddr[2:0]}),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlen_2_sp_1(I_WR_CHNL_n_152),
        .s_axi_awlen_3_sp_1(I_WR_CHNL_n_153),
        .s_axi_awsize(s_axi_awsize),
        .\s_axi_awsize[0]_0 (I_WR_CHNL_n_150),
        .\s_axi_awsize[0]_1 (I_WR_CHNL_n_158),
        .s_axi_awsize_0_sp_1(I_WR_CHNL_n_135),
        .s_axi_awsize_1_sp_1(I_WR_CHNL_n_151),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_awvalid_0(s_axi_awvalid_0),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .\save_init_bram_addr_ld_reg[11] (WrChnl_BRAM_Addr_Ld),
        .\save_init_bram_addr_ld_reg[11]_0 (I_RD_CHNL_n_155),
        .ua_narrow_load1_carry_i_8(ua_narrow_load1_carry_i_8),
        .\wrap_burst_total_reg[0] (SR));
endmodule

(* ORIG_REF_NAME = "rd_chnl" *) 
module axi_bram_ctrl_0_rd_chnl
   (s_axi_aresetn_0,
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0 ,
    s_axi_rdata,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ,
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ,
    \GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ,
    \GEN_NO_RD_CMD_OPT.act_rd_burst_reg_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ,
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_0 ,
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0 ,
    end_brst_rd_clr,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 ,
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ,
    BRAM_En_B_i,
    D,
    \ADDR_SNG_PORT.sng_bram_addr_ld_en ,
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg_0 ,
    \save_init_bram_addr_ld_reg[13] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5] ,
    ar_active_reg,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 ,
    axi_rd_burst_two,
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_1 ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ,
    act_rd_burst_set,
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]_0 ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1 ,
    \GEN_NO_RD_CMD_OPT.end_brst_rd_reg_0 ,
    s_axi_arlen_2_sp_1,
    s_axi_arlen_4_sp_1,
    s_axi_rready_0,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_2 ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0 ,
    s_axi_rid,
    s_axi_aclk,
    E,
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_2 ,
    \GEN_NO_RD_CMD_OPT.act_rd_burst_reg_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_2 ,
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_1 ,
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_2 ,
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg_0 ,
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_1 ,
    \GEN_NO_RD_CMD_OPT.bram_en_int_reg_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ,
    ua_narrow_load1_carry_i_8__0,
    s_axi_aresetn,
    \ADDR_SNG_PORT.bram_addr_int_reg[10] ,
    s_axi_arburst,
    \GEN_NO_RD_CMD_OPT.brst_zero_reg_1 ,
    Q,
    \ADDR_SNG_PORT.bram_addr_int_reg[9] ,
    s_axi_araddr,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[7] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[6] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[13] ,
    s_axi_arsize,
    s_axi_rready,
    s_axi_arlen,
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_1 ,
    s_axi_arid,
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 );
  output s_axi_aresetn_0;
  output \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0 ;
  output [127:0]s_axi_rdata;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.act_rd_burst_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ;
  output \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0 ;
  output end_brst_rd_clr;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 ;
  output \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ;
  output BRAM_En_B_i;
  output [6:0]D;
  output \ADDR_SNG_PORT.sng_bram_addr_ld_en ;
  output \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg_0 ;
  output [1:0]\save_init_bram_addr_ld_reg[13] ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  output [0:0]ar_active_reg;
  output [3:0]\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 ;
  output axi_rd_burst_two;
  output \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_1 ;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ;
  output act_rd_burst_set;
  output \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_1 ;
  output \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]_0 ;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1 ;
  output \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1 ;
  output \GEN_NO_RD_CMD_OPT.end_brst_rd_reg_0 ;
  output s_axi_arlen_2_sp_1;
  output s_axi_arlen_4_sp_1;
  output s_axi_rready_0;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_2 ;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0 ;
  output [1:0]s_axi_rid;
  input s_axi_aclk;
  input [0:0]E;
  input \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_1 ;
  input \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_2 ;
  input \GEN_NO_RD_CMD_OPT.act_rd_burst_reg_1 ;
  input \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_2 ;
  input \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_1 ;
  input \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_2 ;
  input \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg_0 ;
  input \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_1 ;
  input \GEN_NO_RD_CMD_OPT.bram_en_int_reg_0 ;
  input [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ;
  input [0:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ;
  input [3:0]ua_narrow_load1_carry_i_8__0;
  input s_axi_aresetn;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  input [1:0]s_axi_arburst;
  input \GEN_NO_RD_CMD_OPT.brst_zero_reg_1 ;
  input [7:0]Q;
  input \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  input [12:0]s_axi_araddr;
  input [6:0]\ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[13] ;
  input [2:0]s_axi_arsize;
  input s_axi_rready;
  input [7:0]s_axi_arlen;
  input \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_1 ;
  input [1:0]s_axi_arid;
  input [127:0]\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 ;

  wire \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ;
  wire [6:0]\ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[13] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  wire \ADDR_SNG_PORT.sng_bram_addr_ld_en ;
  wire BRAM_En_B_i;
  wire [6:0]D;
  wire [0:0]E;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_2 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0 ;
  wire [3:0]\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_1 ;
  wire [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ;
  wire [0:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_10_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_12_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_13_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_14_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ;
  wire [127:0]\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_10 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_11 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_12 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_3 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_4 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_5 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_6 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_7 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_8 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ;
  wire \GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_reg_1 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_1 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.bram_en_int_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ;
  wire [7:0]\GEN_NO_RD_CMD_OPT.brst_cnt_reg ;
  wire \GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_reg_1 ;
  wire \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.end_brst_rd_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_1 ;
  wire \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_2 ;
  wire \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_1 ;
  wire [7:0]Q;
  wire act_rd_burst_set;
  wire [0:0]ar_active_reg;
  wire axi_rd_burst_two;
  wire axi_rdata_en;
  wire [1:0]axi_rid_temp;
  wire axi_rvalid_clr_ok;
  wire axi_rvalid_set;
  wire axi_rvalid_set_cmb;
  wire brst_cnt_max_d1;
  wire brst_one;
  wire curr_fixed_burst;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst_cmb;
  wire curr_wrap_burst;
  wire curr_wrap_burst_reg;
  wire disable_b2b_brst;
  wire disable_b2b_brst_cmb;
  wire end_brst_rd;
  wire end_brst_rd_clr;
  wire end_brst_rd_clr_cmb;
  wire last_bram_addr;
  wire last_bram_addr0;
  wire [3:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [3:0]narrow_burst_cnt_ld_reg;
  wire [7:0]p_0_in;
  wire p_0_in__0;
  wire [3:0]rd_data_sm_ns;
  wire [127:0]rd_skid_buf;
  wire rd_skid_buf_ld;
  wire rd_skid_buf_ld_cmb;
  wire rd_skid_buf_ld_reg;
  wire [2:0]rlast_sm_cs;
  wire s_axi_aclk;
  wire [12:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire s_axi_aresetn;
  wire s_axi_aresetn_0;
  wire [1:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arlen_2_sn_1;
  wire s_axi_arlen_4_sn_1;
  wire [2:0]s_axi_arsize;
  wire [127:0]s_axi_rdata;
  wire [1:0]s_axi_rid;
  wire s_axi_rready;
  wire s_axi_rready_0;
  wire [1:0]\save_init_bram_addr_ld_reg[13] ;
  wire [3:0]ua_narrow_load1_carry_i_8__0;

  assign s_axi_arlen_2_sp_1 = s_axi_arlen_2_sn_1;
  assign s_axi_arlen_4_sp_1 = s_axi_arlen_4_sn_1;
  LUT6 #(
    .INIT(64'h0000000E05FF05FF)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_1 ),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0 ),
        .O(rd_data_sm_ns[0]));
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_1 ));
  LUT6 #(
    .INIT(64'hF700F700F7000000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(E),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I4(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.act_rd_burst_reg_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBB00BB00BB00FB00)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I4(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ),
        .I5(E),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4445444444444444)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000FAFF0F3300)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4445444444444444)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0 ),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3F303C343F003C04)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080008000800000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.act_rd_burst_reg_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0705070507050735)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF000000000200000)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_2 
       (.I0(E),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4_n_0 ),
        .I2(end_brst_rd_clr_cmb),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .O(rd_data_sm_ns[3]));
  LUT6 #(
    .INIT(64'h0FFF110000FF000F)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .I2(E),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_4 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .O(end_brst_rd_clr_cmb));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ),
        .I1(end_brst_rd),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[0]),
        .Q(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[1]_i_1_n_0 ),
        .Q(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_1_n_0 ),
        .Q(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "sec_addr:0010,sng_addr:0001,last_data_ar_pend:1000,idle:0000,last_addr:0101,last_data:0111,full_throttle:0100,last_throttle:0110,full_pipe:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_1_n_0 ),
        .D(rd_data_sm_ns[3]),
        .Q(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hF0F0F0F4F005F004)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0 ),
        .I1(last_bram_addr),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[2]),
        .I4(rlast_sm_cs[1]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001500550055)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2 
       (.I0(rlast_sm_cs[1]),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0004FF050004)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ),
        .I1(last_bram_addr),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[2]),
        .I4(rlast_sm_cs[1]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1515150015551555)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2 
       (.I0(rlast_sm_cs[1]),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF08FFF0F008)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_1 ),
        .I1(last_bram_addr),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[2]),
        .I4(rlast_sm_cs[1]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[0]_i_1_n_0 ),
        .Q(rlast_sm_cs[0]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[1]_i_1_n_0 ),
        .Q(rlast_sm_cs[1]),
        .R(s_axi_aresetn_0));
  (* FSM_ENCODED_STATES = "idle:000,w8_last_data:100,w8_2nd_last_data:011,w8_throttle:010,w8_throttle_b2:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_GEN_NO_RD_CMD_OPT.rlast_sm_cs[2]_i_1_n_0 ),
        .Q(rlast_sm_cs[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_1 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00B00000)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(s_axi_aresetn),
        .I3(end_brst_rd_clr),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_1 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2 
       (.I0(narrow_addr_int[1]),
        .I1(narrow_addr_int[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000047FFFF47)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_10 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[5]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEEFEFEFFEE)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_11 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0 ),
        .I2(s_axi_arlen[5]),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h111111111111111F)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_12 
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .I2(s_axi_araddr[2]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hBBBBBFBB)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_13 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_14 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h110FFF0F)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_15 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_12 ),
        .I3(s_axi_arsize[2]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h008FFF8F)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I3(s_axi_arsize[2]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_6 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h553055F0553F55FF)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_17 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_11 ),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h22FAFAFA)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_18 
       (.I0(s_axi_arlen[6]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hAA8AAA8AAA8AA888)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_19 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0 ),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arlen[3]),
        .I5(s_axi_arlen[5]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFCCC8888)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_20 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_21 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h04FF04FF04FF0000)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_4 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(E),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ),
        .I5(narrow_bram_addr_inc_d1),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF200)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_10_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0 ),
        .I2(s_axi_arburst[0]),
        .I3(s_axi_arburst[1]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_12_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_13_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h55959999AAAAAAAA)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_6 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_4 ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_5 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_14_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000777777770)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_7 
       (.I0(curr_narrow_burst_cmb),
        .I1(E),
        .I2(narrow_addr_int[2]),
        .I3(narrow_addr_int[0]),
        .I4(narrow_addr_int[1]),
        .I5(narrow_addr_int[3]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_3 ),
        .Q(narrow_addr_int[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .Q(narrow_addr_int[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .Q(narrow_addr_int[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .Q(narrow_addr_int[3]),
        .R(s_axi_aresetn_0));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ),
        .O(narrow_bram_addr_inc));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2 
       (.I0(narrow_addr_int[2]),
        .I1(narrow_addr_int[0]),
        .I2(narrow_addr_int[1]),
        .I3(narrow_addr_int[3]),
        .I4(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(s_axi_aresetn_0));
  LUT4 #(
    .INIT(16'hAA3A)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ),
        .I1(s_axi_arsize[2]),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .O(narrow_burst_cnt_ld_reg[0]));
  LUT6 #(
    .INIT(64'hFFFF07FF00000700)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ),
        .O(narrow_burst_cnt_ld_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hFF1F0010)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ),
        .O(narrow_burst_cnt_ld_reg[2]));
  LUT6 #(
    .INIT(64'hFFFF01FF00000100)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ),
        .O(narrow_burst_cnt_ld_reg[3]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[0]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[1]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[2]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[3]),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h0000EFEE)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55577777FFF77777)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2 
       (.I0(s_axi_aresetn),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0 ),
        .I2(s_axi_arburst[0]),
        .I3(s_axi_arburst[1]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_zero_reg_1 ),
        .I5(curr_narrow_burst_cmb),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1 
       (.I0(rd_skid_buf[0]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [0]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[0].axi_rdata_int[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1 
       (.I0(rd_skid_buf[100]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [100]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int_reg[100] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[100].axi_rdata_int[100]_i_1_n_0 ),
        .Q(s_axi_rdata[100]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1 
       (.I0(rd_skid_buf[101]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [101]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int_reg[101] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[101].axi_rdata_int[101]_i_1_n_0 ),
        .Q(s_axi_rdata[101]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1 
       (.I0(rd_skid_buf[102]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [102]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int_reg[102] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[102].axi_rdata_int[102]_i_1_n_0 ),
        .Q(s_axi_rdata[102]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1 
       (.I0(rd_skid_buf[103]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [103]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int_reg[103] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[103].axi_rdata_int[103]_i_1_n_0 ),
        .Q(s_axi_rdata[103]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1 
       (.I0(rd_skid_buf[104]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [104]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int_reg[104] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[104].axi_rdata_int[104]_i_1_n_0 ),
        .Q(s_axi_rdata[104]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1 
       (.I0(rd_skid_buf[105]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [105]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int_reg[105] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[105].axi_rdata_int[105]_i_1_n_0 ),
        .Q(s_axi_rdata[105]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1 
       (.I0(rd_skid_buf[106]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [106]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int_reg[106] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[106].axi_rdata_int[106]_i_1_n_0 ),
        .Q(s_axi_rdata[106]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1 
       (.I0(rd_skid_buf[107]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [107]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int_reg[107] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[107].axi_rdata_int[107]_i_1_n_0 ),
        .Q(s_axi_rdata[107]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1 
       (.I0(rd_skid_buf[108]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [108]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int_reg[108] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[108].axi_rdata_int[108]_i_1_n_0 ),
        .Q(s_axi_rdata[108]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1 
       (.I0(rd_skid_buf[109]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [109]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int_reg[109] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[109].axi_rdata_int[109]_i_1_n_0 ),
        .Q(s_axi_rdata[109]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1 
       (.I0(rd_skid_buf[10]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [10]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[10].axi_rdata_int[10]_i_1_n_0 ),
        .Q(s_axi_rdata[10]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1 
       (.I0(rd_skid_buf[110]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [110]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int_reg[110] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[110].axi_rdata_int[110]_i_1_n_0 ),
        .Q(s_axi_rdata[110]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1 
       (.I0(rd_skid_buf[111]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [111]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int_reg[111] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[111].axi_rdata_int[111]_i_1_n_0 ),
        .Q(s_axi_rdata[111]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1 
       (.I0(rd_skid_buf[112]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [112]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int_reg[112] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[112].axi_rdata_int[112]_i_1_n_0 ),
        .Q(s_axi_rdata[112]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1 
       (.I0(rd_skid_buf[113]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [113]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int_reg[113] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[113].axi_rdata_int[113]_i_1_n_0 ),
        .Q(s_axi_rdata[113]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1 
       (.I0(rd_skid_buf[114]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [114]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int_reg[114] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[114].axi_rdata_int[114]_i_1_n_0 ),
        .Q(s_axi_rdata[114]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1 
       (.I0(rd_skid_buf[115]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [115]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int_reg[115] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[115].axi_rdata_int[115]_i_1_n_0 ),
        .Q(s_axi_rdata[115]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1 
       (.I0(rd_skid_buf[116]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [116]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int_reg[116] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[116].axi_rdata_int[116]_i_1_n_0 ),
        .Q(s_axi_rdata[116]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1 
       (.I0(rd_skid_buf[117]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [117]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int_reg[117] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[117].axi_rdata_int[117]_i_1_n_0 ),
        .Q(s_axi_rdata[117]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1 
       (.I0(rd_skid_buf[118]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [118]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int_reg[118] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[118].axi_rdata_int[118]_i_1_n_0 ),
        .Q(s_axi_rdata[118]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1 
       (.I0(rd_skid_buf[119]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [119]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int_reg[119] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[119].axi_rdata_int[119]_i_1_n_0 ),
        .Q(s_axi_rdata[119]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1 
       (.I0(rd_skid_buf[11]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [11]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[11].axi_rdata_int[11]_i_1_n_0 ),
        .Q(s_axi_rdata[11]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1 
       (.I0(rd_skid_buf[120]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [120]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int_reg[120] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[120].axi_rdata_int[120]_i_1_n_0 ),
        .Q(s_axi_rdata[120]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1 
       (.I0(rd_skid_buf[121]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [121]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int_reg[121] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[121].axi_rdata_int[121]_i_1_n_0 ),
        .Q(s_axi_rdata[121]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1 
       (.I0(rd_skid_buf[122]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [122]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int_reg[122] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[122].axi_rdata_int[122]_i_1_n_0 ),
        .Q(s_axi_rdata[122]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1 
       (.I0(rd_skid_buf[123]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [123]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int_reg[123] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[123].axi_rdata_int[123]_i_1_n_0 ),
        .Q(s_axi_rdata[123]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1 
       (.I0(rd_skid_buf[124]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [124]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int_reg[124] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[124].axi_rdata_int[124]_i_1_n_0 ),
        .Q(s_axi_rdata[124]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1 
       (.I0(rd_skid_buf[125]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [125]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int_reg[125] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[125].axi_rdata_int[125]_i_1_n_0 ),
        .Q(s_axi_rdata[125]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1 
       (.I0(rd_skid_buf[126]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [126]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int_reg[126] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[126].axi_rdata_int[126]_i_1_n_0 ),
        .Q(s_axi_rdata[126]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 ),
        .I1(s_axi_rready),
        .I2(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  LUT6 #(
    .INIT(64'h02040004070C070C)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_2 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .O(axi_rdata_en));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_3 
       (.I0(rd_skid_buf[127]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [127]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.act_rd_burst_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int_reg[127] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_3_n_0 ),
        .Q(s_axi_rdata[127]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1 
       (.I0(rd_skid_buf[12]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [12]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[12].axi_rdata_int[12]_i_1_n_0 ),
        .Q(s_axi_rdata[12]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1 
       (.I0(rd_skid_buf[13]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [13]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[13].axi_rdata_int[13]_i_1_n_0 ),
        .Q(s_axi_rdata[13]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1 
       (.I0(rd_skid_buf[14]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [14]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[14].axi_rdata_int[14]_i_1_n_0 ),
        .Q(s_axi_rdata[14]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1 
       (.I0(rd_skid_buf[15]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [15]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[15].axi_rdata_int[15]_i_1_n_0 ),
        .Q(s_axi_rdata[15]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1 
       (.I0(rd_skid_buf[16]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [16]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[16].axi_rdata_int[16]_i_1_n_0 ),
        .Q(s_axi_rdata[16]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1 
       (.I0(rd_skid_buf[17]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [17]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[17].axi_rdata_int[17]_i_1_n_0 ),
        .Q(s_axi_rdata[17]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1 
       (.I0(rd_skid_buf[18]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [18]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[18].axi_rdata_int[18]_i_1_n_0 ),
        .Q(s_axi_rdata[18]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1 
       (.I0(rd_skid_buf[19]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [19]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[19].axi_rdata_int[19]_i_1_n_0 ),
        .Q(s_axi_rdata[19]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[1].axi_rdata_int[1]_i_1 
       (.I0(rd_skid_buf[1]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [1]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(p_0_in__0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[1].axi_rdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(p_0_in__0),
        .Q(s_axi_rdata[1]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1 
       (.I0(rd_skid_buf[20]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [20]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[20].axi_rdata_int[20]_i_1_n_0 ),
        .Q(s_axi_rdata[20]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1 
       (.I0(rd_skid_buf[21]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [21]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[21].axi_rdata_int[21]_i_1_n_0 ),
        .Q(s_axi_rdata[21]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1 
       (.I0(rd_skid_buf[22]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [22]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[22].axi_rdata_int[22]_i_1_n_0 ),
        .Q(s_axi_rdata[22]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1 
       (.I0(rd_skid_buf[23]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [23]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[23].axi_rdata_int[23]_i_1_n_0 ),
        .Q(s_axi_rdata[23]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1 
       (.I0(rd_skid_buf[24]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [24]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[24].axi_rdata_int[24]_i_1_n_0 ),
        .Q(s_axi_rdata[24]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1 
       (.I0(rd_skid_buf[25]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [25]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[25].axi_rdata_int[25]_i_1_n_0 ),
        .Q(s_axi_rdata[25]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1 
       (.I0(rd_skid_buf[26]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [26]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[26].axi_rdata_int[26]_i_1_n_0 ),
        .Q(s_axi_rdata[26]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1 
       (.I0(rd_skid_buf[27]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [27]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[27].axi_rdata_int[27]_i_1_n_0 ),
        .Q(s_axi_rdata[27]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1 
       (.I0(rd_skid_buf[28]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [28]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[28].axi_rdata_int[28]_i_1_n_0 ),
        .Q(s_axi_rdata[28]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1 
       (.I0(rd_skid_buf[29]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [29]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[29].axi_rdata_int[29]_i_1_n_0 ),
        .Q(s_axi_rdata[29]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1 
       (.I0(rd_skid_buf[2]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [2]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[2].axi_rdata_int[2]_i_1_n_0 ),
        .Q(s_axi_rdata[2]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1 
       (.I0(rd_skid_buf[30]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [30]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[30].axi_rdata_int[30]_i_1_n_0 ),
        .Q(s_axi_rdata[30]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1 
       (.I0(rd_skid_buf[31]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [31]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[31].axi_rdata_int[31]_i_1_n_0 ),
        .Q(s_axi_rdata[31]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1 
       (.I0(rd_skid_buf[32]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [32]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int_reg[32] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[32].axi_rdata_int[32]_i_1_n_0 ),
        .Q(s_axi_rdata[32]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1 
       (.I0(rd_skid_buf[33]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [33]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int_reg[33] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[33].axi_rdata_int[33]_i_1_n_0 ),
        .Q(s_axi_rdata[33]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1 
       (.I0(rd_skid_buf[34]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [34]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int_reg[34] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[34].axi_rdata_int[34]_i_1_n_0 ),
        .Q(s_axi_rdata[34]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1 
       (.I0(rd_skid_buf[35]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [35]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int_reg[35] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[35].axi_rdata_int[35]_i_1_n_0 ),
        .Q(s_axi_rdata[35]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1 
       (.I0(rd_skid_buf[36]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [36]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int_reg[36] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[36].axi_rdata_int[36]_i_1_n_0 ),
        .Q(s_axi_rdata[36]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1 
       (.I0(rd_skid_buf[37]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [37]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int_reg[37] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[37].axi_rdata_int[37]_i_1_n_0 ),
        .Q(s_axi_rdata[37]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1 
       (.I0(rd_skid_buf[38]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [38]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int_reg[38] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[38].axi_rdata_int[38]_i_1_n_0 ),
        .Q(s_axi_rdata[38]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1 
       (.I0(rd_skid_buf[39]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [39]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int_reg[39] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[39].axi_rdata_int[39]_i_1_n_0 ),
        .Q(s_axi_rdata[39]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1 
       (.I0(rd_skid_buf[3]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [3]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[3].axi_rdata_int[3]_i_1_n_0 ),
        .Q(s_axi_rdata[3]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1 
       (.I0(rd_skid_buf[40]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [40]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int_reg[40] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[40].axi_rdata_int[40]_i_1_n_0 ),
        .Q(s_axi_rdata[40]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1 
       (.I0(rd_skid_buf[41]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [41]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int_reg[41] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[41].axi_rdata_int[41]_i_1_n_0 ),
        .Q(s_axi_rdata[41]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1 
       (.I0(rd_skid_buf[42]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [42]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int_reg[42] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[42].axi_rdata_int[42]_i_1_n_0 ),
        .Q(s_axi_rdata[42]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1 
       (.I0(rd_skid_buf[43]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [43]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int_reg[43] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[43].axi_rdata_int[43]_i_1_n_0 ),
        .Q(s_axi_rdata[43]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1 
       (.I0(rd_skid_buf[44]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [44]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int_reg[44] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[44].axi_rdata_int[44]_i_1_n_0 ),
        .Q(s_axi_rdata[44]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1 
       (.I0(rd_skid_buf[45]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [45]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int_reg[45] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[45].axi_rdata_int[45]_i_1_n_0 ),
        .Q(s_axi_rdata[45]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1 
       (.I0(rd_skid_buf[46]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [46]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int_reg[46] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[46].axi_rdata_int[46]_i_1_n_0 ),
        .Q(s_axi_rdata[46]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1 
       (.I0(rd_skid_buf[47]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [47]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int_reg[47] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[47].axi_rdata_int[47]_i_1_n_0 ),
        .Q(s_axi_rdata[47]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1 
       (.I0(rd_skid_buf[48]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [48]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int_reg[48] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[48].axi_rdata_int[48]_i_1_n_0 ),
        .Q(s_axi_rdata[48]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1 
       (.I0(rd_skid_buf[49]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [49]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int_reg[49] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[49].axi_rdata_int[49]_i_1_n_0 ),
        .Q(s_axi_rdata[49]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1 
       (.I0(rd_skid_buf[4]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [4]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[4].axi_rdata_int[4]_i_1_n_0 ),
        .Q(s_axi_rdata[4]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1 
       (.I0(rd_skid_buf[50]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [50]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int_reg[50] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[50].axi_rdata_int[50]_i_1_n_0 ),
        .Q(s_axi_rdata[50]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1 
       (.I0(rd_skid_buf[51]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [51]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int_reg[51] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[51].axi_rdata_int[51]_i_1_n_0 ),
        .Q(s_axi_rdata[51]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1 
       (.I0(rd_skid_buf[52]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [52]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int_reg[52] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[52].axi_rdata_int[52]_i_1_n_0 ),
        .Q(s_axi_rdata[52]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1 
       (.I0(rd_skid_buf[53]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [53]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int_reg[53] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[53].axi_rdata_int[53]_i_1_n_0 ),
        .Q(s_axi_rdata[53]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1 
       (.I0(rd_skid_buf[54]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [54]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int_reg[54] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[54].axi_rdata_int[54]_i_1_n_0 ),
        .Q(s_axi_rdata[54]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1 
       (.I0(rd_skid_buf[55]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [55]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int_reg[55] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[55].axi_rdata_int[55]_i_1_n_0 ),
        .Q(s_axi_rdata[55]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1 
       (.I0(rd_skid_buf[56]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [56]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int_reg[56] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[56].axi_rdata_int[56]_i_1_n_0 ),
        .Q(s_axi_rdata[56]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1 
       (.I0(rd_skid_buf[57]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [57]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int_reg[57] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[57].axi_rdata_int[57]_i_1_n_0 ),
        .Q(s_axi_rdata[57]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1 
       (.I0(rd_skid_buf[58]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [58]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int_reg[58] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[58].axi_rdata_int[58]_i_1_n_0 ),
        .Q(s_axi_rdata[58]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1 
       (.I0(rd_skid_buf[59]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [59]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int_reg[59] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[59].axi_rdata_int[59]_i_1_n_0 ),
        .Q(s_axi_rdata[59]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1 
       (.I0(rd_skid_buf[5]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [5]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[5].axi_rdata_int[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1 
       (.I0(rd_skid_buf[60]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [60]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int_reg[60] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[60].axi_rdata_int[60]_i_1_n_0 ),
        .Q(s_axi_rdata[60]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1 
       (.I0(rd_skid_buf[61]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [61]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int_reg[61] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[61].axi_rdata_int[61]_i_1_n_0 ),
        .Q(s_axi_rdata[61]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1 
       (.I0(rd_skid_buf[62]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [62]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int_reg[62] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[62].axi_rdata_int[62]_i_1_n_0 ),
        .Q(s_axi_rdata[62]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1 
       (.I0(rd_skid_buf[63]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [63]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int_reg[63] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[63].axi_rdata_int[63]_i_1_n_0 ),
        .Q(s_axi_rdata[63]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1 
       (.I0(rd_skid_buf[64]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [64]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int_reg[64] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[64].axi_rdata_int[64]_i_1_n_0 ),
        .Q(s_axi_rdata[64]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1 
       (.I0(rd_skid_buf[65]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [65]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int_reg[65] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[65].axi_rdata_int[65]_i_1_n_0 ),
        .Q(s_axi_rdata[65]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1 
       (.I0(rd_skid_buf[66]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [66]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int_reg[66] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[66].axi_rdata_int[66]_i_1_n_0 ),
        .Q(s_axi_rdata[66]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1 
       (.I0(rd_skid_buf[67]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [67]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int_reg[67] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[67].axi_rdata_int[67]_i_1_n_0 ),
        .Q(s_axi_rdata[67]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1 
       (.I0(rd_skid_buf[68]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [68]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int_reg[68] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[68].axi_rdata_int[68]_i_1_n_0 ),
        .Q(s_axi_rdata[68]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1 
       (.I0(rd_skid_buf[69]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [69]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int_reg[69] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[69].axi_rdata_int[69]_i_1_n_0 ),
        .Q(s_axi_rdata[69]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1 
       (.I0(rd_skid_buf[6]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [6]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[6].axi_rdata_int[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1 
       (.I0(rd_skid_buf[70]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [70]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int_reg[70] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[70].axi_rdata_int[70]_i_1_n_0 ),
        .Q(s_axi_rdata[70]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1 
       (.I0(rd_skid_buf[71]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [71]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int_reg[71] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[71].axi_rdata_int[71]_i_1_n_0 ),
        .Q(s_axi_rdata[71]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1 
       (.I0(rd_skid_buf[72]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [72]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int_reg[72] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[72].axi_rdata_int[72]_i_1_n_0 ),
        .Q(s_axi_rdata[72]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1 
       (.I0(rd_skid_buf[73]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [73]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int_reg[73] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[73].axi_rdata_int[73]_i_1_n_0 ),
        .Q(s_axi_rdata[73]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1 
       (.I0(rd_skid_buf[74]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [74]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int_reg[74] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[74].axi_rdata_int[74]_i_1_n_0 ),
        .Q(s_axi_rdata[74]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1 
       (.I0(rd_skid_buf[75]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [75]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int_reg[75] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[75].axi_rdata_int[75]_i_1_n_0 ),
        .Q(s_axi_rdata[75]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1 
       (.I0(rd_skid_buf[76]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [76]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int_reg[76] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[76].axi_rdata_int[76]_i_1_n_0 ),
        .Q(s_axi_rdata[76]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1 
       (.I0(rd_skid_buf[77]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [77]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int_reg[77] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[77].axi_rdata_int[77]_i_1_n_0 ),
        .Q(s_axi_rdata[77]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1 
       (.I0(rd_skid_buf[78]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [78]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int_reg[78] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[78].axi_rdata_int[78]_i_1_n_0 ),
        .Q(s_axi_rdata[78]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1 
       (.I0(rd_skid_buf[79]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [79]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int_reg[79] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[79].axi_rdata_int[79]_i_1_n_0 ),
        .Q(s_axi_rdata[79]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1 
       (.I0(rd_skid_buf[7]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [7]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[7].axi_rdata_int[7]_i_1_n_0 ),
        .Q(s_axi_rdata[7]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1 
       (.I0(rd_skid_buf[80]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [80]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int_reg[80] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[80].axi_rdata_int[80]_i_1_n_0 ),
        .Q(s_axi_rdata[80]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1 
       (.I0(rd_skid_buf[81]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [81]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int_reg[81] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[81].axi_rdata_int[81]_i_1_n_0 ),
        .Q(s_axi_rdata[81]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1 
       (.I0(rd_skid_buf[82]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [82]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int_reg[82] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[82].axi_rdata_int[82]_i_1_n_0 ),
        .Q(s_axi_rdata[82]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1 
       (.I0(rd_skid_buf[83]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [83]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int_reg[83] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[83].axi_rdata_int[83]_i_1_n_0 ),
        .Q(s_axi_rdata[83]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1 
       (.I0(rd_skid_buf[84]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [84]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int_reg[84] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[84].axi_rdata_int[84]_i_1_n_0 ),
        .Q(s_axi_rdata[84]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1 
       (.I0(rd_skid_buf[85]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [85]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int_reg[85] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[85].axi_rdata_int[85]_i_1_n_0 ),
        .Q(s_axi_rdata[85]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1 
       (.I0(rd_skid_buf[86]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [86]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int_reg[86] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[86].axi_rdata_int[86]_i_1_n_0 ),
        .Q(s_axi_rdata[86]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1 
       (.I0(rd_skid_buf[87]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [87]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int_reg[87] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[87].axi_rdata_int[87]_i_1_n_0 ),
        .Q(s_axi_rdata[87]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1 
       (.I0(rd_skid_buf[88]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [88]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int_reg[88] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[88].axi_rdata_int[88]_i_1_n_0 ),
        .Q(s_axi_rdata[88]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1 
       (.I0(rd_skid_buf[89]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [89]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int_reg[89] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[89].axi_rdata_int[89]_i_1_n_0 ),
        .Q(s_axi_rdata[89]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1 
       (.I0(rd_skid_buf[8]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [8]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[8].axi_rdata_int[8]_i_1_n_0 ),
        .Q(s_axi_rdata[8]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1 
       (.I0(rd_skid_buf[90]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [90]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int_reg[90] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[90].axi_rdata_int[90]_i_1_n_0 ),
        .Q(s_axi_rdata[90]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1 
       (.I0(rd_skid_buf[91]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [91]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int_reg[91] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[91].axi_rdata_int[91]_i_1_n_0 ),
        .Q(s_axi_rdata[91]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1 
       (.I0(rd_skid_buf[92]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [92]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int_reg[92] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[92].axi_rdata_int[92]_i_1_n_0 ),
        .Q(s_axi_rdata[92]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1 
       (.I0(rd_skid_buf[93]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [93]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int_reg[93] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[93].axi_rdata_int[93]_i_1_n_0 ),
        .Q(s_axi_rdata[93]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1 
       (.I0(rd_skid_buf[94]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [94]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int_reg[94] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[94].axi_rdata_int[94]_i_1_n_0 ),
        .Q(s_axi_rdata[94]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1 
       (.I0(rd_skid_buf[95]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [95]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int_reg[95] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[95].axi_rdata_int[95]_i_1_n_0 ),
        .Q(s_axi_rdata[95]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1 
       (.I0(rd_skid_buf[96]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [96]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int_reg[96] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[96].axi_rdata_int[96]_i_1_n_0 ),
        .Q(s_axi_rdata[96]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1 
       (.I0(rd_skid_buf[97]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [97]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int_reg[97] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[97].axi_rdata_int[97]_i_1_n_0 ),
        .Q(s_axi_rdata[97]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1 
       (.I0(rd_skid_buf[98]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [98]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int_reg[98] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[98].axi_rdata_int[98]_i_1_n_0 ),
        .Q(s_axi_rdata[98]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1 
       (.I0(rd_skid_buf[99]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [99]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int_reg[99] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[99].axi_rdata_int[99]_i_1_n_0 ),
        .Q(s_axi_rdata[99]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1 
       (.I0(rd_skid_buf[9]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [9]),
        .I2(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(axi_rdata_en),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[9].axi_rdata_int[9]_i_1_n_0 ),
        .Q(s_axi_rdata[9]),
        .R(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf[127]_i_1 
       (.I0(rd_skid_buf_ld_reg),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .O(rd_skid_buf_ld));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[0] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [0]),
        .Q(rd_skid_buf[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[100] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [100]),
        .Q(rd_skid_buf[100]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[101] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [101]),
        .Q(rd_skid_buf[101]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[102] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [102]),
        .Q(rd_skid_buf[102]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[103] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [103]),
        .Q(rd_skid_buf[103]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[104] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [104]),
        .Q(rd_skid_buf[104]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[105] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [105]),
        .Q(rd_skid_buf[105]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[106] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [106]),
        .Q(rd_skid_buf[106]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[107] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [107]),
        .Q(rd_skid_buf[107]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[108] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [108]),
        .Q(rd_skid_buf[108]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[109] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [109]),
        .Q(rd_skid_buf[109]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[10] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [10]),
        .Q(rd_skid_buf[10]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[110] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [110]),
        .Q(rd_skid_buf[110]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[111] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [111]),
        .Q(rd_skid_buf[111]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[112] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [112]),
        .Q(rd_skid_buf[112]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[113] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [113]),
        .Q(rd_skid_buf[113]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[114] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [114]),
        .Q(rd_skid_buf[114]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[115] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [115]),
        .Q(rd_skid_buf[115]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[116] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [116]),
        .Q(rd_skid_buf[116]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[117] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [117]),
        .Q(rd_skid_buf[117]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[118] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [118]),
        .Q(rd_skid_buf[118]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[119] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [119]),
        .Q(rd_skid_buf[119]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[11] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [11]),
        .Q(rd_skid_buf[11]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[120] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [120]),
        .Q(rd_skid_buf[120]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[121] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [121]),
        .Q(rd_skid_buf[121]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[122] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [122]),
        .Q(rd_skid_buf[122]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[123] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [123]),
        .Q(rd_skid_buf[123]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[124] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [124]),
        .Q(rd_skid_buf[124]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[125] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [125]),
        .Q(rd_skid_buf[125]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[126] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [126]),
        .Q(rd_skid_buf[126]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [127]),
        .Q(rd_skid_buf[127]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[12] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [12]),
        .Q(rd_skid_buf[12]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[13] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [13]),
        .Q(rd_skid_buf[13]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[14] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [14]),
        .Q(rd_skid_buf[14]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[15] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [15]),
        .Q(rd_skid_buf[15]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[16] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [16]),
        .Q(rd_skid_buf[16]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[17] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [17]),
        .Q(rd_skid_buf[17]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[18] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [18]),
        .Q(rd_skid_buf[18]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[19] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [19]),
        .Q(rd_skid_buf[19]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[1] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [1]),
        .Q(rd_skid_buf[1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[20] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [20]),
        .Q(rd_skid_buf[20]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[21] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [21]),
        .Q(rd_skid_buf[21]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[22] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [22]),
        .Q(rd_skid_buf[22]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[23] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [23]),
        .Q(rd_skid_buf[23]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[24] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [24]),
        .Q(rd_skid_buf[24]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[25] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [25]),
        .Q(rd_skid_buf[25]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[26] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [26]),
        .Q(rd_skid_buf[26]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[27] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [27]),
        .Q(rd_skid_buf[27]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[28] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [28]),
        .Q(rd_skid_buf[28]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[29] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [29]),
        .Q(rd_skid_buf[29]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[2] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [2]),
        .Q(rd_skid_buf[2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[30] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [30]),
        .Q(rd_skid_buf[30]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[31] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [31]),
        .Q(rd_skid_buf[31]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[32] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [32]),
        .Q(rd_skid_buf[32]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[33] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [33]),
        .Q(rd_skid_buf[33]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[34] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [34]),
        .Q(rd_skid_buf[34]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[35] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [35]),
        .Q(rd_skid_buf[35]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[36] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [36]),
        .Q(rd_skid_buf[36]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[37] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [37]),
        .Q(rd_skid_buf[37]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[38] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [38]),
        .Q(rd_skid_buf[38]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[39] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [39]),
        .Q(rd_skid_buf[39]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[3] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [3]),
        .Q(rd_skid_buf[3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[40] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [40]),
        .Q(rd_skid_buf[40]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[41] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [41]),
        .Q(rd_skid_buf[41]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[42] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [42]),
        .Q(rd_skid_buf[42]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[43] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [43]),
        .Q(rd_skid_buf[43]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[44] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [44]),
        .Q(rd_skid_buf[44]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[45] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [45]),
        .Q(rd_skid_buf[45]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[46] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [46]),
        .Q(rd_skid_buf[46]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[47] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [47]),
        .Q(rd_skid_buf[47]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[48] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [48]),
        .Q(rd_skid_buf[48]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[49] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [49]),
        .Q(rd_skid_buf[49]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[4] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [4]),
        .Q(rd_skid_buf[4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[50] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [50]),
        .Q(rd_skid_buf[50]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[51] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [51]),
        .Q(rd_skid_buf[51]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[52] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [52]),
        .Q(rd_skid_buf[52]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[53] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [53]),
        .Q(rd_skid_buf[53]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[54] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [54]),
        .Q(rd_skid_buf[54]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[55] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [55]),
        .Q(rd_skid_buf[55]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[56] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [56]),
        .Q(rd_skid_buf[56]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[57] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [57]),
        .Q(rd_skid_buf[57]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[58] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [58]),
        .Q(rd_skid_buf[58]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[59] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [59]),
        .Q(rd_skid_buf[59]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[5] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [5]),
        .Q(rd_skid_buf[5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[60] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [60]),
        .Q(rd_skid_buf[60]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[61] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [61]),
        .Q(rd_skid_buf[61]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[62] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [62]),
        .Q(rd_skid_buf[62]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[63] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [63]),
        .Q(rd_skid_buf[63]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[64] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [64]),
        .Q(rd_skid_buf[64]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[65] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [65]),
        .Q(rd_skid_buf[65]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[66] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [66]),
        .Q(rd_skid_buf[66]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[67] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [67]),
        .Q(rd_skid_buf[67]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[68] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [68]),
        .Q(rd_skid_buf[68]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[69] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [69]),
        .Q(rd_skid_buf[69]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[6] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [6]),
        .Q(rd_skid_buf[6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[70] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [70]),
        .Q(rd_skid_buf[70]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[71] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [71]),
        .Q(rd_skid_buf[71]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[72] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [72]),
        .Q(rd_skid_buf[72]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[73] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [73]),
        .Q(rd_skid_buf[73]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[74] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [74]),
        .Q(rd_skid_buf[74]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[75] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [75]),
        .Q(rd_skid_buf[75]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[76] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [76]),
        .Q(rd_skid_buf[76]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[77] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [77]),
        .Q(rd_skid_buf[77]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[78] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [78]),
        .Q(rd_skid_buf[78]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[79] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [79]),
        .Q(rd_skid_buf[79]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[7] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [7]),
        .Q(rd_skid_buf[7]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[80] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [80]),
        .Q(rd_skid_buf[80]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[81] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [81]),
        .Q(rd_skid_buf[81]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[82] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [82]),
        .Q(rd_skid_buf[82]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[83] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [83]),
        .Q(rd_skid_buf[83]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[84] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [84]),
        .Q(rd_skid_buf[84]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[85] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [85]),
        .Q(rd_skid_buf[85]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[86] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [86]),
        .Q(rd_skid_buf[86]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[87] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [87]),
        .Q(rd_skid_buf[87]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[88] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [88]),
        .Q(rd_skid_buf[88]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[89] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [89]),
        .Q(rd_skid_buf[89]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[8] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [8]),
        .Q(rd_skid_buf[8]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[90] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [90]),
        .Q(rd_skid_buf[90]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[91] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [91]),
        .Q(rd_skid_buf[91]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[92] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [92]),
        .Q(rd_skid_buf[92]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[93] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [93]),
        .Q(rd_skid_buf[93]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[94] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [94]),
        .Q(rd_skid_buf[94]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[95] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [95]),
        .Q(rd_skid_buf[95]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[96] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [96]),
        .Q(rd_skid_buf[96]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[97] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [97]),
        .Q(rd_skid_buf[97]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[98] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [98]),
        .Q(rd_skid_buf[98]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[99] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [99]),
        .Q(rd_skid_buf[99]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[9] 
       (.C(s_axi_aclk),
        .CE(rd_skid_buf_ld),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.rd_skid_buf_reg[127]_0 [9]),
        .Q(rd_skid_buf[9]),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_2 
       (.I0(s_axi_arlen_4_sn_1),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[0]),
        .O(s_axi_arlen_2_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00000100)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_i_3 
       (.I0(s_axi_arlen_4_sn_1),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[3]),
        .O(axi_rd_burst_two));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_2 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_2 ),
        .Q(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FECE3202)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1 
       (.I0(s_axi_rid[0]),
        .I1(E),
        .I2(axi_rvalid_set),
        .I3(axi_rid_temp[0]),
        .I4(s_axi_arid[0]),
        .I5(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FECE3202)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1 
       (.I0(s_axi_rid[1]),
        .I1(E),
        .I2(axi_rvalid_set),
        .I3(axi_rid_temp[1]),
        .I4(s_axi_arid[1]),
        .I5(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[0]_i_1_n_0 ),
        .Q(s_axi_rid[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_int[1]_i_1_n_0 ),
        .Q(s_axi_rid[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_arid[0]),
        .Q(axi_rid_temp[0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.GEN_RID_SNG.axi_rid_temp_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(s_axi_arid[1]),
        .Q(axi_rid_temp[1]),
        .R(s_axi_aresetn_0));
  axi_bram_ctrl_0_ua_narrow_0 \GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW 
       (.D({\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_0 ,\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_1 ,\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_2 ,\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_3 }),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_1 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 (narrow_burst_cnt_ld_reg),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_6_n_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0 ),
        .Q(narrow_addr_int[2:0]),
        .s_axi_araddr(s_axi_araddr[2:0]),
        .s_axi_arsize(s_axi_arsize),
        .\s_axi_arsize[0]_0 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .\s_axi_arsize[0]_1 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .\s_axi_arsize[1]_0 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .\s_axi_arsize[1]_1 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .\s_axi_arsize[1]_2 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_11 ),
        .\s_axi_arsize[1]_3 (\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_12 ),
        .s_axi_arsize_0_sp_1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_4 ),
        .s_axi_arsize_1_sp_1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_6 ),
        .s_axi_arsize_2_sp_1(\GEN_NO_RD_CMD_OPT.GEN_UA_NARROW.I_UA_NARROW_n_5 ),
        .ua_narrow_load1_carry_i_8__0_0(ua_narrow_load1_carry_i_8__0));
  axi_bram_ctrl_0_wrap_brst_1 \GEN_NO_RD_CMD_OPT.I_WRAP_BRST 
       (.\ADDR_SNG_PORT.bram_addr_int_reg[10] (\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[10]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11] (\ADDR_SNG_PORT.bram_addr_int_reg[11] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 (narrow_addr_int),
        .\ADDR_SNG_PORT.bram_addr_int_reg[11]_2 (\GEN_NO_RD_CMD_OPT.GEN_NARROW_EN.curr_narrow_burst_reg_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[13] (\ADDR_SNG_PORT.bram_addr_int_reg[13] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[13]_0 (\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[5] (\ADDR_SNG_PORT.bram_addr_int_reg[5] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[6] (\ADDR_SNG_PORT.bram_addr_int_reg[6] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[7] (\ADDR_SNG_PORT.bram_addr_int_reg[7] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[9] (\ADDR_SNG_PORT.bram_addr_int_reg[9] ),
        .D(D),
        .E(E),
        .\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] (\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0 (\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_1 (\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_2 (\GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_3 (\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ),
        .\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] (\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ),
        .\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg (\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg_0 ),
        .Q(Q),
        .SR(s_axi_aresetn_0),
        .ar_active_reg(\ADDR_SNG_PORT.sng_bram_addr_ld_en ),
        .ar_active_reg_0(ar_active_reg),
        .curr_fixed_burst_reg(curr_fixed_burst_reg),
        .curr_narrow_burst_cmb(curr_narrow_burst_cmb),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .end_brst_rd(end_brst_rd),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[12:4]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arlen(s_axi_arlen[3:0]),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_rready(s_axi_rready),
        .\save_init_bram_addr_ld_reg[13]_0 (\save_init_bram_addr_ld_reg[13] ));
  LUT6 #(
    .INIT(64'h0000010001010100)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_2 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_zero_reg_1 ),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_1 ),
        .O(act_rd_burst_set));
  LUT6 #(
    .INIT(64'h00040400FFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_4_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I5(s_axi_aresetn),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h81)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_i_4 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .O(\GEN_NO_RD_CMD_OPT.act_rd_burst_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.act_rd_burst_reg_1 ),
        .Q(\GEN_NO_RD_CMD_OPT.act_rd_burst_reg_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_1 ),
        .Q(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hD0DF0000)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 ),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ),
        .I4(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(rlast_sm_cs[0]),
        .I3(rlast_sm_cs[2]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF77FFFFFF77F0FF)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I1(s_axi_rready),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 ),
        .I3(rlast_sm_cs[2]),
        .I4(rlast_sm_cs[0]),
        .I5(rlast_sm_cs[1]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rlast_int_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFFFEAA)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ),
        .I2(disable_b2b_brst),
        .I3(last_bram_addr),
        .I4(axi_rvalid_clr_ok),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h444F444444444444)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rvalid_clr_ok_i_1_n_0 ),
        .Q(axi_rvalid_clr_ok),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h7F7F7F0000000000)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 ),
        .I2(axi_rvalid_clr_ok),
        .I3(axi_rvalid_set),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_set_i_1 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .O(axi_rvalid_set_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.axi_rvalid_set_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_set_cmb),
        .Q(axi_rvalid_set),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFBA000000)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_2 
       (.I0(E),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I5(\GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_1 ));
  LUT6 #(
    .INIT(64'hFEFFFEFFFE00FEFF)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .I1(end_brst_rd),
        .I2(\GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_reg_0 ));
  LUT6 #(
    .INIT(64'hA2FAA2FAA2FA0000)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[2]_i_3_n_0 ),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I5(\GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h3403370304000700)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_5 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_1 ),
        .I5(E),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000DDDDDDFD)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_6 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .I3(end_brst_rd),
        .I4(\GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h3000000000005555)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_7 
       (.I0(E),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .I3(brst_one),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8888888880000000)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_i_8 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I2(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ),
        .I3(s_axi_rready),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(E),
        .O(\GEN_NO_RD_CMD_OPT.bram_en_int_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.bram_en_int_reg_0 ),
        .Q(BRAM_En_B_i),
        .R(s_axi_aresetn_0));
  LUT4 #(
    .INIT(16'h08FB)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[0]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .O(p_0_in[0]));
  LUT5 #(
    .INIT(32'hFB0808FB)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[1]_i_1 
       (.I0(s_axi_arlen[1]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hFB08FB08FB0808FB)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[2]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [2]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B88B)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[3]_i_1 
       (.I0(s_axi_arlen[3]),
        .I1(E),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [3]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [2]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFB0808FBFB08FB08)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[4]_i_1 
       (.I0(s_axi_arlen[4]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [4]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [3]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B88BB8B8)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[5]_i_1 
       (.I0(s_axi_arlen[5]),
        .I1(E),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [5]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [4]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [3]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hFB0808FBFB08FB08)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_1 
       (.I0(s_axi_arlen[6]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [6]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [5]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [3]),
        .I1(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [2]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [4]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h4F)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFB0808FBFB08FB08)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_2 
       (.I0(s_axi_arlen[7]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_AR_SNG.ar_active_d1_reg_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [7]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [6]),
        .I1(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [4]),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [3]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [5]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .I1(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [2]),
        .O(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_max_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0 ),
        .Q(brst_cnt_max_d1),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [2]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [3]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [4]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [5]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [6]),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_cnt_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [7]),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h4444004444400040)) 
    \GEN_NO_RD_CMD_OPT.brst_one_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ),
        .I1(s_axi_aresetn),
        .I2(brst_one),
        .I3(E),
        .I4(axi_rd_burst_two),
        .I5(\GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \GEN_NO_RD_CMD_OPT.brst_one_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14 ),
        .I1(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [7]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [2]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .O(\GEN_NO_RD_CMD_OPT.brst_one_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_one_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.brst_one_i_1_n_0 ),
        .Q(brst_one),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ),
        .I2(s_axi_aresetn),
        .I3(\GEN_NO_RD_CMD_OPT.brst_zero_reg_1 ),
        .O(\GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_i_3 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arlen[6]),
        .I3(s_axi_arlen[7]),
        .O(s_axi_arlen_4_sn_1));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.brst_zero_i_1_n_0 ),
        .Q(\GEN_NO_RD_CMD_OPT.brst_zero_reg_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_i_1 
       (.I0(s_axi_arburst[0]),
        .I1(s_axi_arburst[1]),
        .O(curr_fixed_burst));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.curr_fixed_burst_reg_reg 
       (.C(s_axi_aclk),
        .CE(E),
        .D(curr_fixed_burst),
        .Q(curr_fixed_burst_reg),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_i_1 
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .O(curr_wrap_burst));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg 
       (.C(s_axi_aclk),
        .CE(E),
        .D(curr_wrap_burst),
        .Q(curr_wrap_burst_reg),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hAAAAAFAAAAAAEFAA)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I3(disable_b2b_brst),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .O(disable_b2b_brst_cmb));
  LUT6 #(
    .INIT(64'h00000000FBFBFBBB)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2 
       (.I0(disable_b2b_brst),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs[3]_i_5_n_0 ),
        .I4(brst_one),
        .I5(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF10FF)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .O(\GEN_NO_RD_CMD_OPT.disable_b2b_brst_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.disable_b2b_brst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(disable_b2b_brst_cmb),
        .Q(disable_b2b_brst),
        .R(s_axi_aresetn_0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.end_brst_rd_clr_reg_0 ),
        .Q(end_brst_rd_clr),
        .R(s_axi_aresetn_0));
  LUT5 #(
    .INIT(32'h55300000)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_i_1 
       (.I0(end_brst_rd_clr),
        .I1(brst_cnt_max_d1),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_BRST_MAX_W_NARROW.brst_cnt_max_reg_0 ),
        .I3(end_brst_rd),
        .I4(s_axi_aresetn),
        .O(\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.end_brst_rd_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.end_brst_rd_i_1_n_0 ),
        .Q(end_brst_rd),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hFFFF4001)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I4(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ),
        .O(last_bram_addr0));
  LUT6 #(
    .INIT(64'hBBBBBB00BBBBBBAB)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ),
        .I1(E),
        .I2(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.I_WRAP_BRST_n_14 ),
        .I1(\GEN_NO_RD_CMD_OPT.brst_cnt[7]_i_3_n_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [7]),
        .I3(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [2]),
        .I4(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [1]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_cnt_reg [0]),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEFEFEFEEFFFFFFF)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_4 
       (.I0(\GEN_NO_RD_CMD_OPT.brst_zero_reg_1 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I3(s_axi_rready),
        .I4(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I5(E),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_i_5 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I2(s_axi_rready),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .O(\GEN_NO_RD_CMD_OPT.last_bram_addr_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.last_bram_addr_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_bram_addr0),
        .Q(last_bram_addr),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_2 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h1010101010000000)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_4 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I3(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 ),
        .I4(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ),
        .I5(E),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00004000)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_5 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I3(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0003000200030000)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_i_6 
       (.I0(E),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I4(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_reg_1 ),
        .O(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.pend_rd_op_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_2 ),
        .Q(\GEN_NO_RD_CMD_OPT.pend_rd_op_reg_0 ),
        .R(s_axi_aresetn_0));
  MUXF7 \GEN_NO_RD_CMD_OPT.pend_rd_op_reg_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_4_n_0 ),
        .I1(\GEN_NO_RD_CMD_OPT.pend_rd_op_i_5_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[0]_0 ),
        .S(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]));
  LUT6 #(
    .INIT(64'h0008000F000F0000)) 
    \GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_i_1 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I2(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [3]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .O(rd_skid_buf_ld_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.rd_skid_buf_ld_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(rd_skid_buf_ld_cmb),
        .Q(rd_skid_buf_ld_reg),
        .R(s_axi_aresetn_0));
  LUT6 #(
    .INIT(64'h00FF55FFFC00FFFF)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_2 
       (.I0(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I1(\GEN_NO_RD_CMD_OPT.act_rd_burst_reg_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.act_rd_burst_two_reg_0 ),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_RDATA_NO_ECC.GEN_RDATA_NO_RL_NO_ECC.GEN_RDATA[127].axi_rdata_int[127]_i_5_n_0 ),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hCCCC00000FFF7777)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_0 ),
        .I1(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [1]),
        .I2(\GEN_NO_RD_CMD_OPT.axi_rvalid_int_reg_0 ),
        .I3(s_axi_rready),
        .I4(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [2]),
        .I5(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[3]_0 [0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_RD_BURST_NORL.axi_rd_burst_two_reg_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_1 ),
        .Q(\GEN_NO_RD_CMD_OPT.rddata_mux_sel_reg_0 ),
        .R(s_axi_aresetn_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    axi_awready_int_i_3
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg_1 ),
        .O(s_axi_rready_0));
endmodule

(* ORIG_REF_NAME = "sng_port_arb" *) 
module axi_bram_ctrl_0_sng_port_arb
   (s_axi_awready,
    axi_awready_cmb,
    s_axi_arready,
    axi_arready_cmb,
    last_arb_won_reg_0,
    aw_active_reg_0,
    ar_active_reg_0,
    s_axi_awburst_0_sp_1,
    aw_active_re,
    curr_narrow_burst_en,
    s_axi_arlen_0_sp_1,
    E,
    \FSM_sequential_arb_sm_cs_reg[0]_0 ,
    \FSM_sequential_arb_sm_cs_reg[1]_0 ,
    \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ,
    last_arb_won_reg_1,
    last_arb_won_cmb,
    wea,
    aw_active_reg_1,
    s_axi_aclk,
    last_arb_won_reg_2,
    aw_active_reg_2,
    ar_active_reg_1,
    s_axi_awburst,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ,
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_6_0 ,
    s_axi_awaddr,
    \GEN_NARROW_EN.curr_narrow_burst_reg ,
    \GEN_NARROW_EN.curr_narrow_burst_reg_0 ,
    \wrap_burst_total_reg[0] ,
    s_axi_arlen,
    \GEN_NO_RD_CMD_OPT.brst_zero_reg ,
    \save_init_bram_addr_ld_reg[13] ,
    \FSM_sequential_arb_sm_cs_reg[0]_1 ,
    s_axi_arvalid,
    axi_awready_int_reg_0,
    s_axi_awvalid,
    \FSM_sequential_arb_sm_cs_reg[0]_2 ,
    axi_arready_int_reg_0,
    s_axi_rready,
    Q);
  output s_axi_awready;
  output axi_awready_cmb;
  output s_axi_arready;
  output axi_arready_cmb;
  output last_arb_won_reg_0;
  output aw_active_reg_0;
  output ar_active_reg_0;
  output s_axi_awburst_0_sp_1;
  output aw_active_re;
  output curr_narrow_burst_en;
  output s_axi_arlen_0_sp_1;
  output [0:0]E;
  output \FSM_sequential_arb_sm_cs_reg[0]_0 ;
  output \FSM_sequential_arb_sm_cs_reg[1]_0 ;
  output \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ;
  output last_arb_won_reg_1;
  output last_arb_won_cmb;
  output [15:0]wea;
  input aw_active_reg_1;
  input s_axi_aclk;
  input last_arb_won_reg_2;
  input aw_active_reg_2;
  input ar_active_reg_1;
  input [1:0]s_axi_awburst;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ;
  input \GEN_NARROW_CNT.narrow_addr_int[3]_i_6_0 ;
  input [3:0]s_axi_awaddr;
  input \GEN_NARROW_EN.curr_narrow_burst_reg ;
  input \GEN_NARROW_EN.curr_narrow_burst_reg_0 ;
  input \wrap_burst_total_reg[0] ;
  input [3:0]s_axi_arlen;
  input \GEN_NO_RD_CMD_OPT.brst_zero_reg ;
  input \save_init_bram_addr_ld_reg[13] ;
  input \FSM_sequential_arb_sm_cs_reg[0]_1 ;
  input s_axi_arvalid;
  input axi_awready_int_reg_0;
  input s_axi_awvalid;
  input \FSM_sequential_arb_sm_cs_reg[0]_2 ;
  input axi_arready_int_reg_0;
  input s_axi_rready;
  input [15:0]Q;

  wire [0:0]E;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ;
  wire \FSM_sequential_arb_sm_cs[0]_i_1_n_0 ;
  wire \FSM_sequential_arb_sm_cs[0]_i_2_n_0 ;
  wire \FSM_sequential_arb_sm_cs[1]_i_1_n_0 ;
  wire \FSM_sequential_arb_sm_cs[1]_i_2_n_0 ;
  wire \FSM_sequential_arb_sm_cs_reg[0]_0 ;
  wire \FSM_sequential_arb_sm_cs_reg[0]_1 ;
  wire \FSM_sequential_arb_sm_cs_reg[0]_2 ;
  wire \FSM_sequential_arb_sm_cs_reg[1]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_6_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ;
  wire \GEN_NARROW_EN.curr_narrow_burst_reg ;
  wire \GEN_NARROW_EN.curr_narrow_burst_reg_0 ;
  wire \GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ;
  wire \GEN_NO_RD_CMD_OPT.brst_zero_reg ;
  wire [15:0]Q;
  wire ar_active_reg_0;
  wire ar_active_reg_1;
  wire aw_active_re;
  wire aw_active_reg_0;
  wire aw_active_reg_1;
  wire aw_active_reg_2;
  wire axi_arready_cmb;
  wire axi_arready_int_i_4_n_0;
  wire axi_arready_int_reg_0;
  wire axi_awready_cmb;
  wire axi_awready_int_reg_0;
  wire curr_narrow_burst_en;
  wire last_arb_won_cmb;
  wire last_arb_won_reg_0;
  wire last_arb_won_reg_1;
  wire last_arb_won_reg_2;
  wire s_axi_aclk;
  wire [3:0]s_axi_arlen;
  wire s_axi_arlen_0_sn_1;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [3:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire s_axi_awburst_0_sn_1;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_rready;
  wire \save_init_bram_addr_ld_reg[13] ;
  wire [15:0]wea;
  wire \wrap_burst_total_reg[0] ;

  assign s_axi_arlen_0_sp_1 = s_axi_arlen_0_sn_1;
  assign s_axi_awburst_0_sp_1 = s_axi_awburst_0_sn_1;
  LUT6 #(
    .INIT(64'hFA08F008FAF8F0F8)) 
    \FSM_sequential_arb_sm_cs[0]_i_1 
       (.I0(axi_awready_int_reg_0),
        .I1(\FSM_sequential_arb_sm_cs[0]_i_2_n_0 ),
        .I2(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I3(\FSM_sequential_arb_sm_cs_reg[1]_0 ),
        .I4(\FSM_sequential_arb_sm_cs_reg[0]_1 ),
        .I5(\FSM_sequential_arb_sm_cs_reg[0]_2 ),
        .O(\FSM_sequential_arb_sm_cs[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \FSM_sequential_arb_sm_cs[0]_i_2 
       (.I0(last_arb_won_reg_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .O(\FSM_sequential_arb_sm_cs[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000CFFFFC4CC0000)) 
    \FSM_sequential_arb_sm_cs[1]_i_1 
       (.I0(last_arb_won_reg_0),
        .I1(s_axi_arvalid),
        .I2(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I3(s_axi_awvalid),
        .I4(\FSM_sequential_arb_sm_cs[1]_i_2_n_0 ),
        .I5(\FSM_sequential_arb_sm_cs_reg[1]_0 ),
        .O(\FSM_sequential_arb_sm_cs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCFFECCFECFCECCCE)) 
    \FSM_sequential_arb_sm_cs[1]_i_2 
       (.I0(axi_awready_int_reg_0),
        .I1(axi_arready_int_i_4_n_0),
        .I2(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I3(\FSM_sequential_arb_sm_cs_reg[1]_0 ),
        .I4(\FSM_sequential_arb_sm_cs_reg[0]_1 ),
        .I5(\FSM_sequential_arb_sm_cs_reg[0]_2 ),
        .O(\FSM_sequential_arb_sm_cs[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "wr_data:01,idle:00,rd_data:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_arb_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_arb_sm_cs[0]_i_1_n_0 ),
        .Q(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .R(aw_active_reg_1));
  (* FSM_ENCODED_STATES = "wr_data:01,idle:00,rd_data:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_arb_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_arb_sm_cs[1]_i_1_n_0 ),
        .Q(\FSM_sequential_arb_sm_cs_reg[1]_0 ),
        .R(aw_active_reg_1));
  LUT6 #(
    .INIT(64'h4444444444444440)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_11 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[3]_i_6_0 ),
        .I1(aw_active_re),
        .I2(s_axi_awaddr[1]),
        .I3(s_axi_awaddr[2]),
        .I4(s_axi_awaddr[3]),
        .I5(s_axi_awaddr[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2828282828280828)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_6 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[3]_i_11_n_0 ),
        .I1(s_axi_awburst[0]),
        .I2(s_axi_awburst[1]),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[1] ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int_reg[1]_1 ),
        .O(s_axi_awburst_0_sn_1));
  LUT6 #(
    .INIT(64'h00E000E000E00000)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_2 
       (.I0(\GEN_NARROW_EN.curr_narrow_burst_reg ),
        .I1(\GEN_NARROW_EN.curr_narrow_burst_reg_0 ),
        .I2(aw_active_reg_0),
        .I3(\wrap_burst_total_reg[0] ),
        .I4(s_axi_awburst[0]),
        .I5(s_axi_awburst[1]),
        .O(curr_narrow_burst_en));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    \GEN_NO_RD_CMD_OPT.brst_zero_i_2 
       (.I0(E),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[3]),
        .I4(s_axi_arlen[2]),
        .I5(\GEN_NO_RD_CMD_OPT.brst_zero_reg ),
        .O(s_axi_arlen_0_sn_1));
  LUT6 #(
    .INIT(64'h00FF007000000070)) 
    ar_active_i_2
       (.I0(last_arb_won_reg_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I4(\FSM_sequential_arb_sm_cs_reg[1]_0 ),
        .I5(\FSM_sequential_arb_sm_cs_reg[0]_1 ),
        .O(last_arb_won_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    ar_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(ar_active_reg_1),
        .Q(ar_active_reg_0),
        .R(aw_active_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    aw_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_active_reg_2),
        .Q(aw_active_reg_0),
        .R(aw_active_reg_1));
  LUT5 #(
    .INIT(32'hFFFFF020)) 
    axi_arready_int_i_1
       (.I0(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ),
        .I1(s_axi_awvalid),
        .I2(s_axi_arvalid),
        .I3(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ),
        .I4(axi_arready_int_i_4_n_0),
        .O(axi_arready_cmb));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_arready_int_i_2
       (.I0(axi_arready_int_reg_0),
        .I1(s_axi_rready),
        .I2(\FSM_sequential_arb_sm_cs_reg[1]_0 ),
        .I3(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .O(\GEN_NO_RD_CMD_OPT.axi_rlast_int_reg ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_arready_int_i_3
       (.I0(\FSM_sequential_arb_sm_cs_reg[0]_2 ),
        .I1(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I2(\FSM_sequential_arb_sm_cs_reg[1]_0 ),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00101010)) 
    axi_arready_int_i_4
       (.I0(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I1(\FSM_sequential_arb_sm_cs_reg[1]_0 ),
        .I2(s_axi_arvalid),
        .I3(s_axi_awvalid),
        .I4(last_arb_won_reg_0),
        .O(axi_arready_int_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_arready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_cmb),
        .Q(s_axi_arready),
        .R(aw_active_reg_1));
  LUT6 #(
    .INIT(64'h0000AA000000F300)) 
    axi_awready_int_i_2
       (.I0(\FSM_sequential_arb_sm_cs_reg[0]_1 ),
        .I1(s_axi_arvalid),
        .I2(last_arb_won_reg_0),
        .I3(axi_awready_int_reg_0),
        .I4(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I5(\FSM_sequential_arb_sm_cs_reg[1]_0 ),
        .O(axi_awready_cmb));
  FDRE #(
    .INIT(1'b0)) 
    axi_awready_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready_cmb),
        .Q(s_axi_awready),
        .R(aw_active_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00C40CCC)) 
    last_arb_won_i_2
       (.I0(last_arb_won_reg_0),
        .I1(s_axi_arvalid),
        .I2(\FSM_sequential_arb_sm_cs_reg[0]_0 ),
        .I3(\FSM_sequential_arb_sm_cs_reg[1]_0 ),
        .I4(s_axi_awvalid),
        .O(last_arb_won_cmb));
  FDRE #(
    .INIT(1'b0)) 
    last_arb_won_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(last_arb_won_reg_2),
        .Q(last_arb_won_reg_0),
        .R(aw_active_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \save_init_bram_addr_ld[13]_i_1 
       (.I0(aw_active_reg_0),
        .I1(\wrap_burst_total_reg[0] ),
        .O(aw_active_re));
  LUT2 #(
    .INIT(4'h2)) 
    \save_init_bram_addr_ld[13]_i_1__0 
       (.I0(ar_active_reg_0),
        .I1(\save_init_bram_addr_ld_reg[13] ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_10
       (.I0(aw_active_reg_0),
        .I1(Q[7]),
        .O(wea[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_11
       (.I0(aw_active_reg_0),
        .I1(Q[6]),
        .O(wea[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_12
       (.I0(aw_active_reg_0),
        .I1(Q[5]),
        .O(wea[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_13
       (.I0(aw_active_reg_0),
        .I1(Q[4]),
        .O(wea[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_14
       (.I0(aw_active_reg_0),
        .I1(Q[3]),
        .O(wea[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_15
       (.I0(aw_active_reg_0),
        .I1(Q[2]),
        .O(wea[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_16
       (.I0(aw_active_reg_0),
        .I1(Q[1]),
        .O(wea[1]));
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_17
       (.I0(aw_active_reg_0),
        .I1(Q[0]),
        .O(wea[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_2
       (.I0(aw_active_reg_0),
        .I1(Q[15]),
        .O(wea[15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_3
       (.I0(aw_active_reg_0),
        .I1(Q[14]),
        .O(wea[14]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_4
       (.I0(aw_active_reg_0),
        .I1(Q[13]),
        .O(wea[13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_5
       (.I0(aw_active_reg_0),
        .I1(Q[12]),
        .O(wea[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_6
       (.I0(aw_active_reg_0),
        .I1(Q[11]),
        .O(wea[11]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_7
       (.I0(aw_active_reg_0),
        .I1(Q[10]),
        .O(wea[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_8
       (.I0(aw_active_reg_0),
        .I1(Q[9]),
        .O(wea[9]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    xpm_memory_base_inst_i_9
       (.I0(aw_active_reg_0),
        .I1(Q[8]),
        .O(wea[8]));
endmodule

(* ORIG_REF_NAME = "ua_narrow" *) 
module axi_bram_ctrl_0_ua_narrow
   (D,
    s_axi_awsize_2_sp_1,
    s_axi_awsize_0_sp_1,
    s_axi_awsize_1_sp_1,
    \s_axi_awsize[2]_0 ,
    \s_axi_awsize[1]_0 ,
    \s_axi_awsize[0]_0 ,
    \s_axi_awsize[0]_1 ,
    DI,
    S,
    ua_narrow_load1_carry_i_8_0,
    \GEN_NARROW_CNT.narrow_addr_int_reg[3] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1] ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 ,
    \GEN_NARROW_CNT.narrow_addr_int_reg[2] ,
    Q,
    s_axi_awsize,
    \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ,
    s_axi_awaddr);
  output [3:0]D;
  output s_axi_awsize_2_sp_1;
  output s_axi_awsize_0_sp_1;
  output s_axi_awsize_1_sp_1;
  output \s_axi_awsize[2]_0 ;
  output \s_axi_awsize[1]_0 ;
  output \s_axi_awsize[0]_0 ;
  output \s_axi_awsize[0]_1 ;
  input [3:0]DI;
  input [0:0]S;
  input [3:0]ua_narrow_load1_carry_i_8_0;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[3] ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  input [3:0]\GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 ;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[2] ;
  input [2:0]Q;
  input [2:0]s_axi_awsize;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ;
  input [2:0]s_axi_awaddr;

  wire [3:0]D;
  wire [3:0]DI;
  wire \GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[2] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[3] ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ;
  wire [3:0]\GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 ;
  wire [2:0]Q;
  wire [0:0]S;
  wire [2:0]s_axi_awaddr;
  wire [2:0]s_axi_awsize;
  wire \s_axi_awsize[0]_0 ;
  wire \s_axi_awsize[0]_1 ;
  wire \s_axi_awsize[1]_0 ;
  wire \s_axi_awsize[2]_0 ;
  wire s_axi_awsize_0_sn_1;
  wire s_axi_awsize_1_sn_1;
  wire s_axi_awsize_2_sn_1;
  wire [8:0]size_plus_lsb;
  wire ua_narrow_load1_carry__0_i_1_n_0;
  wire ua_narrow_load1_carry__0_n_3;
  wire ua_narrow_load1_carry_i_11_n_0;
  wire ua_narrow_load1_carry_i_14_n_0;
  wire ua_narrow_load1_carry_i_14_n_1;
  wire ua_narrow_load1_carry_i_14_n_2;
  wire ua_narrow_load1_carry_i_14_n_3;
  wire ua_narrow_load1_carry_i_16_n_0;
  wire ua_narrow_load1_carry_i_17_n_0;
  wire ua_narrow_load1_carry_i_18_n_0;
  wire ua_narrow_load1_carry_i_19_n_0;
  wire ua_narrow_load1_carry_i_1_n_0;
  wire ua_narrow_load1_carry_i_20_n_0;
  wire ua_narrow_load1_carry_i_21_n_0;
  wire ua_narrow_load1_carry_i_21_n_1;
  wire ua_narrow_load1_carry_i_21_n_2;
  wire ua_narrow_load1_carry_i_21_n_3;
  wire ua_narrow_load1_carry_i_2_n_0;
  wire ua_narrow_load1_carry_i_34_n_0;
  wire ua_narrow_load1_carry_i_35_n_0;
  wire ua_narrow_load1_carry_i_36_n_0;
  wire ua_narrow_load1_carry_i_3_n_0;
  wire ua_narrow_load1_carry_i_4_n_0;
  wire ua_narrow_load1_carry_i_5_n_0;
  wire ua_narrow_load1_carry_i_6_n_0;
  wire ua_narrow_load1_carry_i_7_n_0;
  wire [3:0]ua_narrow_load1_carry_i_8_0;
  wire ua_narrow_load1_carry_i_8_n_0;
  wire ua_narrow_load1_carry_i_9_n_0;
  wire ua_narrow_load1_carry_n_0;
  wire ua_narrow_load1_carry_n_1;
  wire ua_narrow_load1_carry_n_2;
  wire ua_narrow_load1_carry_n_3;
  wire [3:0]NLW_ua_narrow_load1_carry_O_UNCONNECTED;
  wire [3:1]NLW_ua_narrow_load1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_ua_narrow_load1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_ua_narrow_load1_carry_i_13_CO_UNCONNECTED;
  wire [3:0]NLW_ua_narrow_load1_carry_i_13_O_UNCONNECTED;

  assign s_axi_awsize_0_sp_1 = s_axi_awsize_0_sn_1;
  assign s_axi_awsize_1_sp_1 = s_axi_awsize_1_sn_1;
  assign s_axi_awsize_2_sp_1 = s_axi_awsize_2_sn_1;
  LUT6 #(
    .INIT(64'h4474777744744444)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_1 
       (.I0(Q[0]),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ),
        .I2(ua_narrow_load1_carry__0_n_3),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[1] ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 [0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hAAA8AAAA)) 
    \GEN_NARROW_CNT.narrow_addr_int[0]_i_2 
       (.I0(s_axi_awsize_0_sn_1),
        .I1(ua_narrow_load1_carry_i_8_n_0),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[1] ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h8828888822822222)) 
    \GEN_NARROW_CNT.narrow_addr_int[1]_i_2 
       (.I0(ua_narrow_load1_carry__0_n_3),
        .I1(s_axi_awsize_0_sn_1),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awsize_2_sn_1),
        .O(\GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \GEN_NARROW_CNT.narrow_addr_int[2]_i_1 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int_reg[2] ),
        .I1(Q[2]),
        .I2(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[1] ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 [2]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h2AAA02228000A888)) 
    \GEN_NARROW_CNT.narrow_addr_int[2]_i_3 
       (.I0(ua_narrow_load1_carry__0_n_3),
        .I1(s_axi_awsize_0_sn_1),
        .I2(\GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awsize_2_sn_1),
        .I5(ua_narrow_load1_carry_i_16_n_0),
        .O(\GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h1F001FFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_10 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(ua_narrow_load1_carry_i_8_n_0),
        .I3(s_axi_awsize[2]),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0 ),
        .O(s_axi_awsize_0_sn_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_15 
       (.I0(size_plus_lsb[3]),
        .I1(size_plus_lsb[2]),
        .I2(s_axi_awsize[1]),
        .I3(size_plus_lsb[1]),
        .I4(s_axi_awsize[0]),
        .I5(size_plus_lsb[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_2 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int_reg[3] ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ),
        .I2(ua_narrow_load1_carry__0_n_3),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ),
        .I4(\GEN_NARROW_CNT.narrow_addr_int_reg[1] ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 [3]),
        .O(D[3]));
  CARRY4 ua_narrow_load1_carry
       (.CI(1'b0),
        .CO({ua_narrow_load1_carry_n_0,ua_narrow_load1_carry_n_1,ua_narrow_load1_carry_n_2,ua_narrow_load1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,ua_narrow_load1_carry_i_1_n_0,ua_narrow_load1_carry_i_2_n_0,ua_narrow_load1_carry_i_3_n_0}),
        .O(NLW_ua_narrow_load1_carry_O_UNCONNECTED[3:0]),
        .S({ua_narrow_load1_carry_i_4_n_0,ua_narrow_load1_carry_i_5_n_0,ua_narrow_load1_carry_i_6_n_0,ua_narrow_load1_carry_i_7_n_0}));
  CARRY4 ua_narrow_load1_carry__0
       (.CI(ua_narrow_load1_carry_n_0),
        .CO({NLW_ua_narrow_load1_carry__0_CO_UNCONNECTED[3:1],ua_narrow_load1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ua_narrow_load1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,ua_narrow_load1_carry__0_i_1_n_0}));
  LUT4 #(
    .INIT(16'hFEFF)) 
    ua_narrow_load1_carry__0_i_1
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .I3(size_plus_lsb[8]),
        .O(ua_narrow_load1_carry__0_i_1_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    ua_narrow_load1_carry_i_1
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(ua_narrow_load1_carry_i_8_n_0),
        .I3(s_axi_awsize[2]),
        .I4(ua_narrow_load1_carry_i_9_n_0),
        .O(ua_narrow_load1_carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    ua_narrow_load1_carry_i_10
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(size_plus_lsb[4]),
        .I3(s_axi_awsize[0]),
        .O(s_axi_awsize_1_sn_1));
  LUT5 #(
    .INIT(32'hF530F53F)) 
    ua_narrow_load1_carry_i_11
       (.I0(ua_narrow_load1_carry_i_17_n_0),
        .I1(ua_narrow_load1_carry_i_18_n_0),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[1]),
        .I4(ua_narrow_load1_carry_i_19_n_0),
        .O(ua_narrow_load1_carry_i_11_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_12
       (.I0(ua_narrow_load1_carry_i_9_n_0),
        .I1(s_axi_awsize[2]),
        .I2(ua_narrow_load1_carry_i_20_n_0),
        .O(s_axi_awsize_2_sn_1));
  CARRY4 ua_narrow_load1_carry_i_13
       (.CI(ua_narrow_load1_carry_i_14_n_0),
        .CO({NLW_ua_narrow_load1_carry_i_13_CO_UNCONNECTED[3:1],size_plus_lsb[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ua_narrow_load1_carry_i_13_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 ua_narrow_load1_carry_i_14
       (.CI(ua_narrow_load1_carry_i_21_n_0),
        .CO({ua_narrow_load1_carry_i_14_n_0,ua_narrow_load1_carry_i_14_n_1,ua_narrow_load1_carry_i_14_n_2,ua_narrow_load1_carry_i_14_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(size_plus_lsb[7:4]),
        .S(ua_narrow_load1_carry_i_8_0));
  LUT6 #(
    .INIT(64'hFF0F33AAFF0F3355)) 
    ua_narrow_load1_carry_i_15
       (.I0(ua_narrow_load1_carry_i_19_n_0),
        .I1(ua_narrow_load1_carry_i_18_n_0),
        .I2(ua_narrow_load1_carry_i_17_n_0),
        .I3(s_axi_awsize[2]),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[0]),
        .O(\s_axi_awsize[2]_0 ));
  LUT6 #(
    .INIT(64'h5350535F5C505C5F)) 
    ua_narrow_load1_carry_i_16
       (.I0(\s_axi_awsize[1]_0 ),
        .I1(\s_axi_awsize[0]_0 ),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[1]),
        .I4(\s_axi_awsize[0]_1 ),
        .I5(s_axi_awsize[0]),
        .O(ua_narrow_load1_carry_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_17
       (.I0(size_plus_lsb[6]),
        .I1(s_axi_awsize[0]),
        .I2(size_plus_lsb[5]),
        .O(ua_narrow_load1_carry_i_17_n_0));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_18
       (.I0(size_plus_lsb[8]),
        .I1(s_axi_awsize[0]),
        .I2(size_plus_lsb[7]),
        .O(ua_narrow_load1_carry_i_18_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_19
       (.I0(size_plus_lsb[4]),
        .I1(s_axi_awsize[0]),
        .I2(size_plus_lsb[3]),
        .O(ua_narrow_load1_carry_i_19_n_0));
  LUT5 #(
    .INIT(32'h888E8888)) 
    ua_narrow_load1_carry_i_2
       (.I0(s_axi_awsize_1_sn_1),
        .I1(ua_narrow_load1_carry_i_11_n_0),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[0]),
        .O(ua_narrow_load1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ua_narrow_load1_carry_i_20
       (.I0(size_plus_lsb[4]),
        .I1(size_plus_lsb[3]),
        .I2(s_axi_awsize[1]),
        .I3(size_plus_lsb[2]),
        .I4(s_axi_awsize[0]),
        .I5(size_plus_lsb[1]),
        .O(ua_narrow_load1_carry_i_20_n_0));
  CARRY4 ua_narrow_load1_carry_i_21
       (.CI(1'b0),
        .CO({ua_narrow_load1_carry_i_21_n_0,ua_narrow_load1_carry_i_21_n_1,ua_narrow_load1_carry_i_21_n_2,ua_narrow_load1_carry_i_21_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(size_plus_lsb[3:0]),
        .S({S,ua_narrow_load1_carry_i_34_n_0,ua_narrow_load1_carry_i_35_n_0,ua_narrow_load1_carry_i_36_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    ua_narrow_load1_carry_i_26
       (.I0(size_plus_lsb[8]),
        .I1(s_axi_awsize[1]),
        .I2(size_plus_lsb[7]),
        .I3(s_axi_awsize[0]),
        .I4(size_plus_lsb[6]),
        .O(\s_axi_awsize[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_27
       (.I0(size_plus_lsb[5]),
        .I1(s_axi_awsize[0]),
        .I2(size_plus_lsb[4]),
        .O(\s_axi_awsize[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_28
       (.I0(size_plus_lsb[3]),
        .I1(s_axi_awsize[0]),
        .I2(size_plus_lsb[2]),
        .O(\s_axi_awsize[0]_1 ));
  LUT5 #(
    .INIT(32'h00004042)) 
    ua_narrow_load1_carry_i_3
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(ua_narrow_load1_carry_i_8_n_0),
        .I4(s_axi_awsize_2_sn_1),
        .O(ua_narrow_load1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'hFB04)) 
    ua_narrow_load1_carry_i_34
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awaddr[2]),
        .O(ua_narrow_load1_carry_i_34_n_0));
  LUT4 #(
    .INIT(16'hEF10)) 
    ua_narrow_load1_carry_i_35
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awaddr[1]),
        .O(ua_narrow_load1_carry_i_35_n_0));
  LUT4 #(
    .INIT(16'hFE01)) 
    ua_narrow_load1_carry_i_36
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awaddr[0]),
        .O(ua_narrow_load1_carry_i_36_n_0));
  LUT6 #(
    .INIT(64'hFAFBBABAFAFBBABF)) 
    ua_narrow_load1_carry_i_4
       (.I0(s_axi_awsize[2]),
        .I1(size_plus_lsb[8]),
        .I2(s_axi_awsize[1]),
        .I3(size_plus_lsb[7]),
        .I4(s_axi_awsize[0]),
        .I5(size_plus_lsb[6]),
        .O(ua_narrow_load1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFC01FF01FC54FF54)) 
    ua_narrow_load1_carry_i_5
       (.I0(ua_narrow_load1_carry_i_9_n_0),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[2]),
        .I4(size_plus_lsb[8]),
        .I5(ua_narrow_load1_carry_i_8_n_0),
        .O(ua_narrow_load1_carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    ua_narrow_load1_carry_i_6
       (.I0(\s_axi_awsize[2]_0 ),
        .I1(ua_narrow_load1_carry_i_16_n_0),
        .O(ua_narrow_load1_carry_i_6_n_0));
  LUT5 #(
    .INIT(32'h59550000)) 
    ua_narrow_load1_carry_i_7
       (.I0(s_axi_awsize_2_sn_1),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[1]),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ),
        .O(ua_narrow_load1_carry_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ua_narrow_load1_carry_i_8
       (.I0(size_plus_lsb[7]),
        .I1(size_plus_lsb[6]),
        .I2(s_axi_awsize[1]),
        .I3(size_plus_lsb[5]),
        .I4(s_axi_awsize[0]),
        .I5(size_plus_lsb[4]),
        .O(ua_narrow_load1_carry_i_8_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ua_narrow_load1_carry_i_9
       (.I0(size_plus_lsb[8]),
        .I1(size_plus_lsb[7]),
        .I2(s_axi_awsize[1]),
        .I3(size_plus_lsb[6]),
        .I4(s_axi_awsize[0]),
        .I5(size_plus_lsb[5]),
        .O(ua_narrow_load1_carry_i_9_n_0));
endmodule

(* ORIG_REF_NAME = "ua_narrow" *) 
module axi_bram_ctrl_0_ua_narrow_0
   (D,
    s_axi_arsize_0_sp_1,
    s_axi_arsize_2_sp_1,
    s_axi_arsize_1_sp_1,
    \s_axi_arsize[1]_0 ,
    \s_axi_arsize[1]_1 ,
    \s_axi_arsize[0]_0 ,
    \s_axi_arsize[0]_1 ,
    \s_axi_arsize[1]_2 ,
    \s_axi_arsize[1]_3 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_1 ,
    ua_narrow_load1_carry_i_8__0_0,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 ,
    Q,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] ,
    s_axi_arsize,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 ,
    s_axi_araddr);
  output [3:0]D;
  output s_axi_arsize_0_sp_1;
  output s_axi_arsize_2_sp_1;
  output s_axi_arsize_1_sp_1;
  output \s_axi_arsize[1]_0 ;
  output \s_axi_arsize[1]_1 ;
  output \s_axi_arsize[0]_0 ;
  output \s_axi_arsize[0]_1 ;
  output \s_axi_arsize[1]_2 ;
  output \s_axi_arsize[1]_3 ;
  input [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ;
  input [0:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_1 ;
  input [3:0]ua_narrow_load1_carry_i_8__0_0;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ;
  input [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 ;
  input [2:0]Q;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] ;
  input [2:0]s_axi_arsize;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 ;
  input [2:0]s_axi_araddr;

  wire [3:0]D;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ;
  wire [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ;
  wire [0:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ;
  wire [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 ;
  wire [2:0]Q;
  wire [2:0]s_axi_araddr;
  wire [2:0]s_axi_arsize;
  wire \s_axi_arsize[0]_0 ;
  wire \s_axi_arsize[0]_1 ;
  wire \s_axi_arsize[1]_0 ;
  wire \s_axi_arsize[1]_1 ;
  wire \s_axi_arsize[1]_2 ;
  wire \s_axi_arsize[1]_3 ;
  wire s_axi_arsize_0_sn_1;
  wire s_axi_arsize_1_sn_1;
  wire s_axi_arsize_2_sn_1;
  wire [8:0]size_plus_lsb;
  wire ua_narrow_load1_carry__0_i_1__0_n_0;
  wire ua_narrow_load1_carry__0_n_3;
  wire ua_narrow_load1_carry_i_11__0_n_0;
  wire ua_narrow_load1_carry_i_14__0_n_0;
  wire ua_narrow_load1_carry_i_14__0_n_1;
  wire ua_narrow_load1_carry_i_14__0_n_2;
  wire ua_narrow_load1_carry_i_14__0_n_3;
  wire ua_narrow_load1_carry_i_16__0_n_0;
  wire ua_narrow_load1_carry_i_17__0_n_0;
  wire ua_narrow_load1_carry_i_18__0_n_0;
  wire ua_narrow_load1_carry_i_19__0_n_0;
  wire ua_narrow_load1_carry_i_1__0_n_0;
  wire ua_narrow_load1_carry_i_20__0_n_0;
  wire ua_narrow_load1_carry_i_21__0_n_0;
  wire ua_narrow_load1_carry_i_21__0_n_1;
  wire ua_narrow_load1_carry_i_21__0_n_2;
  wire ua_narrow_load1_carry_i_21__0_n_3;
  wire ua_narrow_load1_carry_i_2__0_n_0;
  wire ua_narrow_load1_carry_i_34_n_0;
  wire ua_narrow_load1_carry_i_35_n_0;
  wire ua_narrow_load1_carry_i_36_n_0;
  wire ua_narrow_load1_carry_i_3__0_n_0;
  wire ua_narrow_load1_carry_i_4__0_n_0;
  wire ua_narrow_load1_carry_i_5__0_n_0;
  wire ua_narrow_load1_carry_i_6__0_n_0;
  wire ua_narrow_load1_carry_i_7__0_n_0;
  wire [3:0]ua_narrow_load1_carry_i_8__0_0;
  wire ua_narrow_load1_carry_n_0;
  wire ua_narrow_load1_carry_n_1;
  wire ua_narrow_load1_carry_n_2;
  wire ua_narrow_load1_carry_n_3;
  wire [3:0]NLW_ua_narrow_load1_carry_O_UNCONNECTED;
  wire [3:1]NLW_ua_narrow_load1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_ua_narrow_load1_carry__0_O_UNCONNECTED;
  wire [3:1]NLW_ua_narrow_load1_carry_i_13__0_CO_UNCONNECTED;
  wire [3:0]NLW_ua_narrow_load1_carry_i_13__0_O_UNCONNECTED;

  assign s_axi_arsize_0_sp_1 = s_axi_arsize_0_sn_1;
  assign s_axi_arsize_1_sp_1 = s_axi_arsize_1_sn_1;
  assign s_axi_arsize_2_sp_1 = s_axi_arsize_2_sn_1;
  LUT6 #(
    .INIT(64'h7477744474447444)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_1 
       (.I0(Q[0]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 [0]),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ),
        .I5(ua_narrow_load1_carry__0_n_3),
        .O(D[0]));
  LUT5 #(
    .INIT(32'hB8B8B874)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2 
       (.I0(\s_axi_arsize[1]_0 ),
        .I1(s_axi_arsize[2]),
        .I2(\s_axi_arsize[1]_3 ),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[0]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3 
       (.I0(size_plus_lsb[3]),
        .I1(size_plus_lsb[2]),
        .I2(s_axi_arsize[1]),
        .I3(size_plus_lsb[1]),
        .I4(s_axi_arsize[0]),
        .I5(size_plus_lsb[0]),
        .O(\s_axi_arsize[1]_3 ));
  LUT4 #(
    .INIT(16'h9F90)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h8BB88888)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 [1]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] ),
        .I3(ua_narrow_load1_carry_i_17__0_n_0),
        .I4(ua_narrow_load1_carry__0_n_3),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_1 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2] ),
        .I1(Q[2]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 [2]),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h808080882A2A2A22)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3 
       (.I0(ua_narrow_load1_carry__0_n_3),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[1] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[2]_1 ),
        .I4(\s_axi_arsize[1]_1 ),
        .I5(ua_narrow_load1_carry_i_16__0_n_0),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EAEAFBEA)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3] ),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 [3]),
        .I3(ua_narrow_load1_carry__0_n_3),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 ),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[3]_3 ),
        .O(D[3]));
  CARRY4 ua_narrow_load1_carry
       (.CI(1'b0),
        .CO({ua_narrow_load1_carry_n_0,ua_narrow_load1_carry_n_1,ua_narrow_load1_carry_n_2,ua_narrow_load1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,ua_narrow_load1_carry_i_1__0_n_0,ua_narrow_load1_carry_i_2__0_n_0,ua_narrow_load1_carry_i_3__0_n_0}),
        .O(NLW_ua_narrow_load1_carry_O_UNCONNECTED[3:0]),
        .S({ua_narrow_load1_carry_i_4__0_n_0,ua_narrow_load1_carry_i_5__0_n_0,ua_narrow_load1_carry_i_6__0_n_0,ua_narrow_load1_carry_i_7__0_n_0}));
  CARRY4 ua_narrow_load1_carry__0
       (.CI(ua_narrow_load1_carry_n_0),
        .CO({NLW_ua_narrow_load1_carry__0_CO_UNCONNECTED[3:1],ua_narrow_load1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ua_narrow_load1_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,ua_narrow_load1_carry__0_i_1__0_n_0}));
  LUT4 #(
    .INIT(16'hFEFF)) 
    ua_narrow_load1_carry__0_i_1__0
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(size_plus_lsb[8]),
        .O(ua_narrow_load1_carry__0_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    ua_narrow_load1_carry_i_10__0
       (.I0(size_plus_lsb[4]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[0]),
        .O(s_axi_arsize_2_sn_1));
  LUT5 #(
    .INIT(32'hF530F53F)) 
    ua_narrow_load1_carry_i_11__0
       (.I0(ua_narrow_load1_carry_i_18__0_n_0),
        .I1(ua_narrow_load1_carry_i_19__0_n_0),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[1]),
        .I4(ua_narrow_load1_carry_i_20__0_n_0),
        .O(ua_narrow_load1_carry_i_11__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ua_narrow_load1_carry_i_12__0
       (.I0(size_plus_lsb[4]),
        .I1(size_plus_lsb[3]),
        .I2(s_axi_arsize[1]),
        .I3(size_plus_lsb[2]),
        .I4(s_axi_arsize[0]),
        .I5(size_plus_lsb[1]),
        .O(\s_axi_arsize[1]_1 ));
  CARRY4 ua_narrow_load1_carry_i_13__0
       (.CI(ua_narrow_load1_carry_i_14__0_n_0),
        .CO({NLW_ua_narrow_load1_carry_i_13__0_CO_UNCONNECTED[3:1],size_plus_lsb[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_ua_narrow_load1_carry_i_13__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 ua_narrow_load1_carry_i_14__0
       (.CI(ua_narrow_load1_carry_i_21__0_n_0),
        .CO({ua_narrow_load1_carry_i_14__0_n_0,ua_narrow_load1_carry_i_14__0_n_1,ua_narrow_load1_carry_i_14__0_n_2,ua_narrow_load1_carry_i_14__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(size_plus_lsb[7:4]),
        .S(ua_narrow_load1_carry_i_8__0_0));
  LUT6 #(
    .INIT(64'h3D310D013E320E02)) 
    ua_narrow_load1_carry_i_15__0
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(ua_narrow_load1_carry_i_18__0_n_0),
        .I4(ua_narrow_load1_carry_i_19__0_n_0),
        .I5(ua_narrow_load1_carry_i_20__0_n_0),
        .O(s_axi_arsize_0_sn_1));
  LUT6 #(
    .INIT(64'hFCFAF3FA0C0A030A)) 
    ua_narrow_load1_carry_i_16__0
       (.I0(\s_axi_arsize[0]_0 ),
        .I1(\s_axi_arsize[0]_1 ),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[0]),
        .I5(\s_axi_arsize[1]_2 ),
        .O(ua_narrow_load1_carry_i_16__0_n_0));
  LUT5 #(
    .INIT(32'h0087FF87)) 
    ua_narrow_load1_carry_i_17__0
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(\s_axi_arsize[1]_1 ),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize_1_sn_1),
        .O(ua_narrow_load1_carry_i_17__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_18__0
       (.I0(size_plus_lsb[6]),
        .I1(s_axi_arsize[0]),
        .I2(size_plus_lsb[5]),
        .O(ua_narrow_load1_carry_i_18__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_19__0
       (.I0(size_plus_lsb[8]),
        .I1(s_axi_arsize[0]),
        .I2(size_plus_lsb[7]),
        .O(ua_narrow_load1_carry_i_19__0_n_0));
  LUT5 #(
    .INIT(32'h00000001)) 
    ua_narrow_load1_carry_i_1__0
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(\s_axi_arsize[1]_0 ),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize_1_sn_1),
        .O(ua_narrow_load1_carry_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_20__0
       (.I0(size_plus_lsb[4]),
        .I1(s_axi_arsize[0]),
        .I2(size_plus_lsb[3]),
        .O(ua_narrow_load1_carry_i_20__0_n_0));
  CARRY4 ua_narrow_load1_carry_i_21__0
       (.CI(1'b0),
        .CO({ua_narrow_load1_carry_i_21__0_n_0,ua_narrow_load1_carry_i_21__0_n_1,ua_narrow_load1_carry_i_21__0_n_2,ua_narrow_load1_carry_i_21__0_n_3}),
        .CYINIT(1'b0),
        .DI(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_0 ),
        .O(size_plus_lsb[3:0]),
        .S({\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_3_1 ,ua_narrow_load1_carry_i_34_n_0,ua_narrow_load1_carry_i_35_n_0,ua_narrow_load1_carry_i_36_n_0}));
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_26__0
       (.I0(size_plus_lsb[3]),
        .I1(s_axi_arsize[0]),
        .I2(size_plus_lsb[2]),
        .O(\s_axi_arsize[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    ua_narrow_load1_carry_i_27__0
       (.I0(size_plus_lsb[5]),
        .I1(s_axi_arsize[0]),
        .I2(size_plus_lsb[4]),
        .O(\s_axi_arsize[0]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    ua_narrow_load1_carry_i_28__0
       (.I0(size_plus_lsb[8]),
        .I1(s_axi_arsize[1]),
        .I2(size_plus_lsb[7]),
        .I3(s_axi_arsize[0]),
        .I4(size_plus_lsb[6]),
        .O(\s_axi_arsize[1]_2 ));
  LUT5 #(
    .INIT(32'h555D0004)) 
    ua_narrow_load1_carry_i_2__0
       (.I0(s_axi_arsize_2_sn_1),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(ua_narrow_load1_carry_i_11__0_n_0),
        .O(ua_narrow_load1_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hFB04)) 
    ua_narrow_load1_carry_i_34
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_araddr[2]),
        .O(ua_narrow_load1_carry_i_34_n_0));
  LUT4 #(
    .INIT(16'hEF10)) 
    ua_narrow_load1_carry_i_35
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_araddr[1]),
        .O(ua_narrow_load1_carry_i_35_n_0));
  LUT4 #(
    .INIT(16'hFE01)) 
    ua_narrow_load1_carry_i_36
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_araddr[0]),
        .O(ua_narrow_load1_carry_i_36_n_0));
  LUT6 #(
    .INIT(64'h000000100C000C10)) 
    ua_narrow_load1_carry_i_3__0
       (.I0(s_axi_arsize_1_sn_1),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[0]),
        .I4(\s_axi_arsize[1]_0 ),
        .I5(\s_axi_arsize[1]_1 ),
        .O(ua_narrow_load1_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'hFAFBBABAFAFBBABF)) 
    ua_narrow_load1_carry_i_4__0
       (.I0(s_axi_arsize[2]),
        .I1(size_plus_lsb[8]),
        .I2(s_axi_arsize[1]),
        .I3(size_plus_lsb[7]),
        .I4(s_axi_arsize[0]),
        .I5(size_plus_lsb[6]),
        .O(ua_narrow_load1_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'hFC01FF01FC54FF54)) 
    ua_narrow_load1_carry_i_5__0
       (.I0(s_axi_arsize_1_sn_1),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(size_plus_lsb[8]),
        .I5(\s_axi_arsize[1]_0 ),
        .O(ua_narrow_load1_carry_i_5__0_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    ua_narrow_load1_carry_i_6__0
       (.I0(s_axi_arsize_0_sn_1),
        .I1(ua_narrow_load1_carry_i_16__0_n_0),
        .O(ua_narrow_load1_carry_i_6__0_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    ua_narrow_load1_carry_i_7__0
       (.I0(ua_narrow_load1_carry_i_17__0_n_0),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[0]_i_2_n_0 ),
        .O(ua_narrow_load1_carry_i_7__0_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ua_narrow_load1_carry_i_8__0
       (.I0(size_plus_lsb[7]),
        .I1(size_plus_lsb[6]),
        .I2(s_axi_arsize[1]),
        .I3(size_plus_lsb[5]),
        .I4(s_axi_arsize[0]),
        .I5(size_plus_lsb[4]),
        .O(\s_axi_arsize[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    ua_narrow_load1_carry_i_9__0
       (.I0(size_plus_lsb[8]),
        .I1(size_plus_lsb[7]),
        .I2(s_axi_arsize[1]),
        .I3(size_plus_lsb[6]),
        .I4(s_axi_arsize[0]),
        .I5(size_plus_lsb[5]),
        .O(s_axi_arsize_1_sn_1));
endmodule

(* ORIG_REF_NAME = "wr_chnl" *) 
module axi_bram_ctrl_0_wr_chnl
   (aw_active_d1_reg_0,
    BRAM_En_A_i,
    dina,
    axi_wr_burst,
    s_axi_wready,
    axi_bvalid_int_reg_0,
    curr_fixed_burst_reg,
    curr_wrap_burst_reg,
    s_axi_awsize_0_sp_1,
    D,
    \save_init_bram_addr_ld_reg[11] ,
    aw_active_d1_reg_1,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0 ,
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0 ,
    \s_axi_awsize[0]_0 ,
    s_axi_awsize_1_sp_1,
    s_axi_awlen_2_sp_1,
    s_axi_awlen_3_sp_1,
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ,
    \bvalid_cnt_reg[2]_0 ,
    s_axi_awvalid_0,
    SR,
    \s_axi_awsize[0]_1 ,
    s_axi_bid,
    \GEN_WR_NO_ECC.bram_we_int_reg[15]_0 ,
    \wrap_burst_total_reg[0] ,
    s_axi_aclk,
    s_axi_awid,
    aw_active_d1_reg_2,
    s_axi_wdata,
    axi_wr_burst_reg_0,
    curr_fixed_burst_reg_reg_0,
    curr_wrap_burst_reg_reg_0,
    DI,
    S,
    ua_narrow_load1_carry_i_8,
    curr_narrow_burst_en,
    s_axi_aresetn,
    \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ,
    s_axi_awsize,
    \ADDR_SNG_PORT.bram_addr_int_reg[13] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[13]_0 ,
    s_axi_awaddr,
    E,
    Q,
    s_axi_araddr,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    s_axi_wvalid,
    aw_active_re,
    s_axi_wlast,
    s_axi_bready,
    \save_init_bram_addr_ld_reg[11]_0 ,
    s_axi_awlen,
    s_axi_awvalid,
    arb_sm_cs,
    s_axi_wstrb);
  output aw_active_d1_reg_0;
  output BRAM_En_A_i;
  output [127:0]dina;
  output axi_wr_burst;
  output s_axi_wready;
  output axi_bvalid_int_reg_0;
  output curr_fixed_burst_reg;
  output curr_wrap_burst_reg;
  output s_axi_awsize_0_sp_1;
  output [2:0]D;
  output [6:0]\save_init_bram_addr_ld_reg[11] ;
  output aw_active_d1_reg_1;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0 ;
  output \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0 ;
  output \s_axi_awsize[0]_0 ;
  output s_axi_awsize_1_sp_1;
  output s_axi_awlen_2_sp_1;
  output s_axi_awlen_3_sp_1;
  output \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ;
  output \bvalid_cnt_reg[2]_0 ;
  output s_axi_awvalid_0;
  output [0:0]SR;
  output \s_axi_awsize[0]_1 ;
  output [1:0]s_axi_bid;
  output [15:0]\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 ;
  input \wrap_burst_total_reg[0] ;
  input s_axi_aclk;
  input [1:0]s_axi_awid;
  input aw_active_d1_reg_2;
  input [127:0]s_axi_wdata;
  input axi_wr_burst_reg_0;
  input curr_fixed_burst_reg_reg_0;
  input curr_wrap_burst_reg_reg_0;
  input [3:0]DI;
  input [0:0]S;
  input [3:0]ua_narrow_load1_carry_i_8;
  input curr_narrow_burst_en;
  input s_axi_aresetn;
  input \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  input [2:0]s_axi_awsize;
  input [1:0]\ADDR_SNG_PORT.bram_addr_int_reg[13] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[13]_0 ;
  input [12:0]s_axi_awaddr;
  input [0:0]E;
  input [2:0]Q;
  input [0:0]s_axi_araddr;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  input s_axi_wvalid;
  input aw_active_re;
  input s_axi_wlast;
  input s_axi_bready;
  input \save_init_bram_addr_ld_reg[11]_0 ;
  input [7:0]s_axi_awlen;
  input s_axi_awvalid;
  input [1:0]arb_sm_cs;
  input [15:0]s_axi_wstrb;

  wire [1:0]\ADDR_SNG_PORT.bram_addr_int_reg[13] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[13]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire [2:0]AW2Arb_BVALID_Cnt;
  wire BID_FIFO_n_1;
  wire BID_FIFO_n_2;
  wire BID_FIFO_n_3;
  wire BID_FIFO_n_4;
  wire BRAM_En_A_i;
  wire [2:0]D;
  wire [3:0]DI;
  wire [0:0]E;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ;
  wire \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ;
  wire \GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_22_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_23_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_24_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_25_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ;
  wire \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ;
  wire \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0 ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ;
  wire \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ;
  wire \GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_0 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_1 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_10 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_2 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_3 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_4 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_5 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_6 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_7 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_8 ;
  wire \GEN_UA_NARROW.I_UA_NARROW_n_9 ;
  wire \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0 ;
  wire \GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ;
  wire \GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ;
  wire [15:0]\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 ;
  wire I_WRAP_BRST_n_11;
  wire [2:0]Q;
  wire [0:0]S;
  wire [0:0]SR;
  wire [1:0]arb_sm_cs;
  wire aw_active_d1_reg_0;
  wire aw_active_d1_reg_1;
  wire aw_active_d1_reg_2;
  wire aw_active_re;
  wire axi_bvalid_int_i_1_n_0;
  wire axi_bvalid_int_i_2_n_0;
  wire axi_bvalid_int_reg_0;
  wire axi_wdata_full_cmb;
  wire axi_wdata_full_reg;
  wire axi_wlast_d1;
  wire axi_wr_burst;
  wire axi_wr_burst_reg_0;
  wire axi_wready_int_mod_i_1_n_0;
  wire bid_gets_fifo_load;
  wire bid_gets_fifo_load_d1;
  wire \bvalid_cnt[0]_i_1_n_0 ;
  wire \bvalid_cnt[1]_i_1_n_0 ;
  wire \bvalid_cnt[2]_i_1_n_0 ;
  wire bvalid_cnt_inc;
  wire \bvalid_cnt_reg[2]_0 ;
  wire clr_bram_we;
  wire curr_fixed_burst_reg;
  wire curr_fixed_burst_reg_reg_0;
  wire curr_narrow_burst;
  wire curr_narrow_burst_en;
  wire curr_wrap_burst_reg;
  wire curr_wrap_burst_reg_reg_0;
  wire [127:0]dina;
  wire [3:0]narrow_addr_int;
  wire narrow_bram_addr_inc;
  wire narrow_bram_addr_inc_d1;
  wire [3:0]narrow_burst_cnt_ld_reg;
  wire p_8_in;
  wire s_axi_aclk;
  wire [0:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [12:0]s_axi_awaddr;
  wire [1:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awlen_2_sn_1;
  wire s_axi_awlen_3_sn_1;
  wire [2:0]s_axi_awsize;
  wire \s_axi_awsize[0]_0 ;
  wire \s_axi_awsize[0]_1 ;
  wire s_axi_awsize_0_sn_1;
  wire s_axi_awsize_1_sn_1;
  wire s_axi_awvalid;
  wire s_axi_awvalid_0;
  wire [1:0]s_axi_bid;
  wire s_axi_bready;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [15:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [6:0]\save_init_bram_addr_ld_reg[11] ;
  wire \save_init_bram_addr_ld_reg[11]_0 ;
  wire [3:0]ua_narrow_load1_carry_i_8;
  wire \wrap_burst_total_reg[0] ;

  assign s_axi_awlen_2_sp_1 = s_axi_awlen_2_sn_1;
  assign s_axi_awlen_3_sp_1 = s_axi_awlen_3_sn_1;
  assign s_axi_awsize_0_sp_1 = s_axi_awsize_0_sn_1;
  assign s_axi_awsize_1_sp_1 = s_axi_awsize_1_sn_1;
  LUT6 #(
    .INIT(64'h00000000000100FF)) 
    \ADDR_SNG_PORT.bram_addr_int[13]_i_5 
       (.I0(narrow_bram_addr_inc_d1),
        .I1(narrow_addr_int[3]),
        .I2(I_WRAP_BRST_n_11),
        .I3(\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ),
        .I4(curr_narrow_burst),
        .I5(curr_fixed_burst_reg),
        .O(\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0 ));
  axi_bram_ctrl_0_SRL_FIFO BID_FIFO
       (.AW2Arb_BVALID_Cnt(AW2Arb_BVALID_Cnt),
        .\Addr_Counters[3].FDRE_I_0 (\wrap_burst_total_reg[0] ),
        .Data_Exists_DFF_0(axi_bvalid_int_reg_0),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] (BID_FIFO_n_2),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] (BID_FIFO_n_1),
        .\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] (\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .aw_active_re(aw_active_re),
        .axi_wdata_full_reg(axi_wdata_full_reg),
        .axi_wr_burst(axi_wr_burst),
        .bid_gets_fifo_load(bid_gets_fifo_load),
        .bid_gets_fifo_load_d1(bid_gets_fifo_load_d1),
        .bid_gets_fifo_load_d1_reg(axi_bvalid_int_i_2_n_0),
        .bid_gets_fifo_load_d1_reg_0(aw_active_d1_reg_0),
        .bid_gets_fifo_load_d1_reg_1(aw_active_d1_reg_2),
        .bid_gets_fifo_load_d1_reg_2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_awid(s_axi_awid),
        .s_axi_awid_0_sp_1(BID_FIFO_n_4),
        .s_axi_awid_1_sp_1(BID_FIFO_n_3),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wvalid(s_axi_wvalid));
  LUT6 #(
    .INIT(64'hFFFF1555FFFF0000)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0 ),
        .I1(s_axi_wlast),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I3(s_axi_wvalid),
        .I4(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ),
        .I5(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA202FFFFA2020000)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I1(s_axi_wlast),
        .I2(axi_wdata_full_reg),
        .I3(axi_wr_burst),
        .I4(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0 ),
        .I5(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hFFFFEAAA)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0 ),
        .I1(s_axi_wlast),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I3(s_axi_wvalid),
        .I4(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFAAFC88CC88)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1 
       (.I0(BID_FIFO_n_2),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0 ),
        .I2(s_axi_wlast),
        .I3(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I4(s_axi_wvalid),
        .I5(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_3 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I1(aw_active_d1_reg_2),
        .I2(axi_wdata_full_reg),
        .I3(s_axi_wvalid),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0]_0 ));
  (* FSM_ENCODED_STATES = "idle:001,brst_wr_data:010,sng_wr_data:100" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .S(\wrap_burst_total_reg[0] ));
  (* FSM_ENCODED_STATES = "idle:001,brst_wr_data:010,sng_wr_data:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .R(\wrap_burst_total_reg[0] ));
  (* FSM_ENCODED_STATES = "idle:001,brst_wr_data:010,sng_wr_data:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs[2]_i_1_n_0 ),
        .Q(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ),
        .R(\wrap_burst_total_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \GEN_NARROW_CNT.narrow_addr_int[2]_i_2 
       (.I0(narrow_addr_int[1]),
        .I1(narrow_addr_int[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \GEN_NARROW_CNT.narrow_addr_int[2]_i_4 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h80FF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_1 
       (.I0(curr_narrow_burst),
        .I1(s_axi_wvalid),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCF00A800CF00FFFF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_12 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0 ),
        .I2(s_axi_awsize[0]),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0 ),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(\s_axi_awsize[0]_1 ));
  LUT6 #(
    .INIT(64'h553F5F0F3F5F0F0F)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_13 
       (.I0(\GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0 ),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[2]),
        .I5(s_axi_awsize[0]),
        .O(s_axi_awsize_1_sn_1));
  LUT6 #(
    .INIT(64'hFFFFFFFFF4F4F8FF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_14 
       (.I0(s_axi_awsize[0]),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0 ),
        .I2(\GEN_NARROW_CNT.narrow_addr_int[3]_i_22_n_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[3]_i_23_n_0 ),
        .I4(s_axi_awsize[1]),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[3]_i_24_n_0 ),
        .O(\s_axi_awsize[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h47FF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_16 
       (.I0(s_axi_awlen[4]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[5]),
        .I3(s_axi_awvalid),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'h4F7F)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_17 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h37F7000037F737F7)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_18 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awvalid),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[2]),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[3]_i_23_n_0 ),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h4F7F)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_19 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[2]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h77FFFF3F7700003F)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_20 
       (.I0(s_axi_awlen[7]),
        .I1(s_axi_awvalid),
        .I2(s_axi_awlen[6]),
        .I3(s_axi_awsize[1]),
        .I4(s_axi_awsize[0]),
        .I5(\GEN_NARROW_CNT.narrow_addr_int[3]_i_25_n_0 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FA00CC00FA00)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_21 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awlen[6]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awsize[0]),
        .I5(s_axi_awlen[7]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hA0800080)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_22 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[0]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h4F7F)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_23 
       (.I0(s_axi_awlen[6]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[7]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hF8002200F800BA00)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_24 
       (.I0(s_axi_awlen[4]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[5]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awsize[1]),
        .I5(s_axi_awsize[2]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h4F7F)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_25 
       (.I0(s_axi_awlen[5]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[4]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h10FF10FF10FF0000)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_3 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(aw_active_re),
        .I4(\GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0 ),
        .I5(narrow_bram_addr_inc_d1),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_4 
       (.I0(narrow_addr_int[2]),
        .I1(narrow_addr_int[0]),
        .I2(narrow_addr_int[1]),
        .I3(narrow_addr_int[3]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA59995559)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_5 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .I1(\GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ),
        .I2(\GEN_UA_NARROW.I_UA_NARROW_n_4 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_5 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_6 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_7 
       (.I0(curr_narrow_burst),
        .I1(\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ),
        .I2(narrow_addr_int[2]),
        .I3(narrow_addr_int[0]),
        .I4(narrow_addr_int[1]),
        .I5(narrow_addr_int[3]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4474747447777777)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_8 
       (.I0(\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(s_axi_awsize[0]),
        .I4(\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .I5(\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \GEN_NARROW_CNT.narrow_addr_int[3]_i_9 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_3 ),
        .Q(narrow_addr_int[0]),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_2 ),
        .Q(narrow_addr_int[1]),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_1 ),
        .Q(narrow_addr_int[2]),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_addr_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_NARROW_CNT.narrow_addr_int[3]_i_1_n_0 ),
        .D(\GEN_UA_NARROW.I_UA_NARROW_n_0 ),
        .Q(narrow_addr_int[3]),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_1 
       (.I0(narrow_addr_int[3]),
        .I1(narrow_addr_int[1]),
        .I2(narrow_addr_int[0]),
        .I3(narrow_addr_int[2]),
        .I4(\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ),
        .I5(curr_narrow_burst),
        .O(narrow_bram_addr_inc));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2 
       (.I0(s_axi_wvalid),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .O(\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_bram_addr_inc),
        .Q(narrow_bram_addr_inc_d1),
        .R(\wrap_burst_total_reg[0] ));
  LUT4 #(
    .INIT(16'hF704)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[0]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(aw_active_d1_reg_2),
        .I2(aw_active_d1_reg_0),
        .I3(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ),
        .O(narrow_burst_cnt_ld_reg[0]));
  LUT6 #(
    .INIT(64'hFFFF15FF00001500)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[1]_i_1 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(aw_active_d1_reg_2),
        .I4(aw_active_d1_reg_0),
        .I5(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ),
        .O(narrow_burst_cnt_ld_reg[1]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'hFF1F0010)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[2]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(aw_active_d1_reg_2),
        .I3(aw_active_d1_reg_0),
        .I4(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ),
        .O(narrow_burst_cnt_ld_reg[2]));
  LUT6 #(
    .INIT(64'hFFFF01FF00000100)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg[3]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .I3(aw_active_d1_reg_2),
        .I4(aw_active_d1_reg_0),
        .I5(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ),
        .O(narrow_burst_cnt_ld_reg[3]));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[0]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[0] ),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[1]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[1] ),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[2]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[2] ),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(narrow_burst_cnt_ld_reg[3]),
        .Q(\GEN_NARROW_CNT_LD.narrow_burst_cnt_ld_reg_reg_n_0_[3] ),
        .R(\wrap_burst_total_reg[0] ));
  LUT3 #(
    .INIT(8'h80)) 
    \GEN_NARROW_EN.axi_wlast_d1_i_1 
       (.I0(s_axi_wready),
        .I1(s_axi_wvalid),
        .I2(s_axi_wlast),
        .O(p_8_in));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_EN.axi_wlast_d1_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_8_in),
        .Q(axi_wlast_d1),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'h0FBB0F0000000000)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_1 
       (.I0(axi_wlast_d1),
        .I1(p_8_in),
        .I2(s_axi_awsize_0_sn_1),
        .I3(curr_narrow_burst_en),
        .I4(curr_narrow_burst),
        .I5(s_axi_aresetn),
        .O(\GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F0E0)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_3 
       (.I0(s_axi_awlen[2]),
        .I1(s_axi_awlen[6]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awlen[4]),
        .O(s_axi_awlen_2_sn_1));
  LUT5 #(
    .INIT(32'hF0F0F0E0)) 
    \GEN_NARROW_EN.curr_narrow_burst_i_4 
       (.I0(s_axi_awlen[3]),
        .I1(s_axi_awlen[5]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[7]),
        .I4(s_axi_awlen[0]),
        .O(s_axi_awlen_3_sn_1));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_NARROW_EN.curr_narrow_burst_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_NARROW_EN.curr_narrow_burst_i_1_n_0 ),
        .Q(curr_narrow_burst),
        .R(1'b0));
  axi_bram_ctrl_0_ua_narrow \GEN_UA_NARROW.I_UA_NARROW 
       (.D({\GEN_UA_NARROW.I_UA_NARROW_n_0 ,\GEN_UA_NARROW.I_UA_NARROW_n_1 ,\GEN_UA_NARROW.I_UA_NARROW_n_2 ,\GEN_UA_NARROW.I_UA_NARROW_n_3 }),
        .DI(DI),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[1] (\GEN_NARROW_CNT.narrow_addr_int_reg[1]_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[2] (\GEN_NARROW_CNT.narrow_addr_int[2]_i_2_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[2]_0 (\GEN_NARROW_CNT.narrow_addr_int[2]_i_4_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[3] (\GEN_NARROW_CNT.narrow_addr_int[3]_i_4_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[3]_0 (\GEN_NARROW_CNT.narrow_addr_int[3]_i_3_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[3]_1 (\GEN_NARROW_CNT.narrow_addr_int[3]_i_5_n_0 ),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[3]_2 (narrow_burst_cnt_ld_reg),
        .Q(narrow_addr_int[2:0]),
        .S(S),
        .s_axi_awaddr(s_axi_awaddr[2:0]),
        .s_axi_awsize(s_axi_awsize),
        .\s_axi_awsize[0]_0 (\GEN_UA_NARROW.I_UA_NARROW_n_9 ),
        .\s_axi_awsize[0]_1 (\GEN_UA_NARROW.I_UA_NARROW_n_10 ),
        .\s_axi_awsize[1]_0 (\GEN_UA_NARROW.I_UA_NARROW_n_8 ),
        .\s_axi_awsize[2]_0 (\GEN_UA_NARROW.I_UA_NARROW_n_7 ),
        .s_axi_awsize_0_sp_1(\GEN_UA_NARROW.I_UA_NARROW_n_5 ),
        .s_axi_awsize_1_sp_1(\GEN_UA_NARROW.I_UA_NARROW_n_6 ),
        .s_axi_awsize_2_sp_1(\GEN_UA_NARROW.I_UA_NARROW_n_4 ),
        .ua_narrow_load1_carry_i_8_0(ua_narrow_load1_carry_i_8));
  LUT6 #(
    .INIT(64'hFFFFF020F222F020)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_i_1 
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I1(aw_active_d1_reg_2),
        .I2(axi_wdata_full_reg),
        .I3(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I4(s_axi_wvalid),
        .I5(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ),
        .O(axi_wdata_full_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.axi_wdata_full_reg_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wdata_full_cmb),
        .Q(axi_wdata_full_reg),
        .R(\wrap_burst_total_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hFFC08080)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1 
       (.I0(axi_wdata_full_reg),
        .I1(aw_active_d1_reg_2),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I3(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I4(s_axi_wvalid),
        .O(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.bram_en_int_i_1_n_0 ),
        .Q(BRAM_En_A_i),
        .R(\wrap_burst_total_reg[0] ));
  LUT1 #(
    .INIT(2'h1)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_i_1 
       (.I0(BID_FIFO_n_1),
        .O(bvalid_cnt_inc));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.clr_bram_we_reg 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bvalid_cnt_inc),
        .Q(clr_bram_we),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[0].bram_wrdata_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(dina[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[100].bram_wrdata_int_reg[100] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[100]),
        .Q(dina[100]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[101].bram_wrdata_int_reg[101] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[101]),
        .Q(dina[101]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[102].bram_wrdata_int_reg[102] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[102]),
        .Q(dina[102]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[103].bram_wrdata_int_reg[103] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[103]),
        .Q(dina[103]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[104].bram_wrdata_int_reg[104] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[104]),
        .Q(dina[104]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[105].bram_wrdata_int_reg[105] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[105]),
        .Q(dina[105]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[106].bram_wrdata_int_reg[106] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[106]),
        .Q(dina[106]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[107].bram_wrdata_int_reg[107] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[107]),
        .Q(dina[107]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[108].bram_wrdata_int_reg[108] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[108]),
        .Q(dina[108]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[109].bram_wrdata_int_reg[109] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[109]),
        .Q(dina[109]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[10].bram_wrdata_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(dina[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[110].bram_wrdata_int_reg[110] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[110]),
        .Q(dina[110]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[111].bram_wrdata_int_reg[111] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[111]),
        .Q(dina[111]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[112].bram_wrdata_int_reg[112] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[112]),
        .Q(dina[112]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[113].bram_wrdata_int_reg[113] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[113]),
        .Q(dina[113]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[114].bram_wrdata_int_reg[114] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[114]),
        .Q(dina[114]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[115].bram_wrdata_int_reg[115] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[115]),
        .Q(dina[115]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[116].bram_wrdata_int_reg[116] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[116]),
        .Q(dina[116]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[117].bram_wrdata_int_reg[117] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[117]),
        .Q(dina[117]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[118].bram_wrdata_int_reg[118] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[118]),
        .Q(dina[118]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[119].bram_wrdata_int_reg[119] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[119]),
        .Q(dina[119]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[11].bram_wrdata_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(dina[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[120].bram_wrdata_int_reg[120] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[120]),
        .Q(dina[120]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[121].bram_wrdata_int_reg[121] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[121]),
        .Q(dina[121]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[122].bram_wrdata_int_reg[122] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[122]),
        .Q(dina[122]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[123].bram_wrdata_int_reg[123] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[123]),
        .Q(dina[123]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[124].bram_wrdata_int_reg[124] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[124]),
        .Q(dina[124]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[125].bram_wrdata_int_reg[125] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[125]),
        .Q(dina[125]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[126].bram_wrdata_int_reg[126] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[126]),
        .Q(dina[126]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[127].bram_wrdata_int_reg[127] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[127]),
        .Q(dina[127]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[12].bram_wrdata_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(dina[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[13].bram_wrdata_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(dina[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[14].bram_wrdata_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(dina[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[15].bram_wrdata_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(dina[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[16].bram_wrdata_int_reg[16] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(dina[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[17].bram_wrdata_int_reg[17] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(dina[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[18].bram_wrdata_int_reg[18] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(dina[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[19].bram_wrdata_int_reg[19] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(dina[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[1].bram_wrdata_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(dina[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[20].bram_wrdata_int_reg[20] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(dina[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[21].bram_wrdata_int_reg[21] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(dina[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[22].bram_wrdata_int_reg[22] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(dina[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[23].bram_wrdata_int_reg[23] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(dina[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[24].bram_wrdata_int_reg[24] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(dina[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[25].bram_wrdata_int_reg[25] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(dina[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[26].bram_wrdata_int_reg[26] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(dina[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[27].bram_wrdata_int_reg[27] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(dina[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[28].bram_wrdata_int_reg[28] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(dina[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[29].bram_wrdata_int_reg[29] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(dina[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[2].bram_wrdata_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(dina[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[30].bram_wrdata_int_reg[30] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(dina[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[31].bram_wrdata_int_reg[31] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(dina[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[32].bram_wrdata_int_reg[32] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[32]),
        .Q(dina[32]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[33].bram_wrdata_int_reg[33] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[33]),
        .Q(dina[33]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[34].bram_wrdata_int_reg[34] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[34]),
        .Q(dina[34]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[35].bram_wrdata_int_reg[35] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[35]),
        .Q(dina[35]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[36].bram_wrdata_int_reg[36] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[36]),
        .Q(dina[36]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[37].bram_wrdata_int_reg[37] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[37]),
        .Q(dina[37]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[38].bram_wrdata_int_reg[38] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[38]),
        .Q(dina[38]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[39].bram_wrdata_int_reg[39] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[39]),
        .Q(dina[39]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[3].bram_wrdata_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(dina[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[40].bram_wrdata_int_reg[40] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[40]),
        .Q(dina[40]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[41].bram_wrdata_int_reg[41] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[41]),
        .Q(dina[41]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[42].bram_wrdata_int_reg[42] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[42]),
        .Q(dina[42]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[43].bram_wrdata_int_reg[43] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[43]),
        .Q(dina[43]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[44].bram_wrdata_int_reg[44] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[44]),
        .Q(dina[44]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[45].bram_wrdata_int_reg[45] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[45]),
        .Q(dina[45]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[46].bram_wrdata_int_reg[46] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[46]),
        .Q(dina[46]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[47].bram_wrdata_int_reg[47] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[47]),
        .Q(dina[47]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[48].bram_wrdata_int_reg[48] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[48]),
        .Q(dina[48]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[49].bram_wrdata_int_reg[49] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[49]),
        .Q(dina[49]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[4].bram_wrdata_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(dina[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[50].bram_wrdata_int_reg[50] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[50]),
        .Q(dina[50]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[51].bram_wrdata_int_reg[51] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[51]),
        .Q(dina[51]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[52].bram_wrdata_int_reg[52] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[52]),
        .Q(dina[52]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[53].bram_wrdata_int_reg[53] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[53]),
        .Q(dina[53]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[54].bram_wrdata_int_reg[54] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[54]),
        .Q(dina[54]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[55].bram_wrdata_int_reg[55] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[55]),
        .Q(dina[55]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[56].bram_wrdata_int_reg[56] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[56]),
        .Q(dina[56]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[57].bram_wrdata_int_reg[57] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[57]),
        .Q(dina[57]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[58].bram_wrdata_int_reg[58] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[58]),
        .Q(dina[58]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[59].bram_wrdata_int_reg[59] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[59]),
        .Q(dina[59]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[5].bram_wrdata_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(dina[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[60].bram_wrdata_int_reg[60] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[60]),
        .Q(dina[60]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[61].bram_wrdata_int_reg[61] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[61]),
        .Q(dina[61]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[62].bram_wrdata_int_reg[62] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[62]),
        .Q(dina[62]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[63].bram_wrdata_int_reg[63] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[63]),
        .Q(dina[63]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[64].bram_wrdata_int_reg[64] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[64]),
        .Q(dina[64]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[65].bram_wrdata_int_reg[65] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[65]),
        .Q(dina[65]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[66].bram_wrdata_int_reg[66] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[66]),
        .Q(dina[66]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[67].bram_wrdata_int_reg[67] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[67]),
        .Q(dina[67]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[68].bram_wrdata_int_reg[68] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[68]),
        .Q(dina[68]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[69].bram_wrdata_int_reg[69] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[69]),
        .Q(dina[69]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[6].bram_wrdata_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(dina[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[70].bram_wrdata_int_reg[70] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[70]),
        .Q(dina[70]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[71].bram_wrdata_int_reg[71] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[71]),
        .Q(dina[71]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[72].bram_wrdata_int_reg[72] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[72]),
        .Q(dina[72]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[73].bram_wrdata_int_reg[73] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[73]),
        .Q(dina[73]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[74].bram_wrdata_int_reg[74] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[74]),
        .Q(dina[74]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[75].bram_wrdata_int_reg[75] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[75]),
        .Q(dina[75]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[76].bram_wrdata_int_reg[76] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[76]),
        .Q(dina[76]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[77].bram_wrdata_int_reg[77] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[77]),
        .Q(dina[77]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[78].bram_wrdata_int_reg[78] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[78]),
        .Q(dina[78]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[79].bram_wrdata_int_reg[79] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[79]),
        .Q(dina[79]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[7].bram_wrdata_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(dina[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[80].bram_wrdata_int_reg[80] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[80]),
        .Q(dina[80]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[81].bram_wrdata_int_reg[81] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[81]),
        .Q(dina[81]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[82].bram_wrdata_int_reg[82] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[82]),
        .Q(dina[82]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[83].bram_wrdata_int_reg[83] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[83]),
        .Q(dina[83]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[84].bram_wrdata_int_reg[84] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[84]),
        .Q(dina[84]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[85].bram_wrdata_int_reg[85] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[85]),
        .Q(dina[85]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[86].bram_wrdata_int_reg[86] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[86]),
        .Q(dina[86]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[87].bram_wrdata_int_reg[87] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[87]),
        .Q(dina[87]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[88].bram_wrdata_int_reg[88] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[88]),
        .Q(dina[88]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[89].bram_wrdata_int_reg[89] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[89]),
        .Q(dina[89]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[8].bram_wrdata_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(dina[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[90].bram_wrdata_int_reg[90] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[90]),
        .Q(dina[90]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[91].bram_wrdata_int_reg[91] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[91]),
        .Q(dina[91]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[92].bram_wrdata_int_reg[92] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[92]),
        .Q(dina[92]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[93].bram_wrdata_int_reg[93] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[93]),
        .Q(dina[93]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[94].bram_wrdata_int_reg[94] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[94]),
        .Q(dina[94]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[95].bram_wrdata_int_reg[95] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[95]),
        .Q(dina[95]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[96].bram_wrdata_int_reg[96] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[96]),
        .Q(dina[96]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[97].bram_wrdata_int_reg[97] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[97]),
        .Q(dina[97]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[98].bram_wrdata_int_reg[98] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[98]),
        .Q(dina[98]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[99].bram_wrdata_int_reg[99] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[99]),
        .Q(dina[99]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WRDATA[9].bram_wrdata_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(dina[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h4F)) 
    \GEN_WR_NO_ECC.bram_we_int[15]_i_1 
       (.I0(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .I1(clr_bram_we),
        .I2(s_axi_aresetn),
        .O(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFF40000)) 
    \GEN_WR_NO_ECC.bram_we_int[15]_i_2 
       (.I0(axi_wdata_full_reg),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I2(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ),
        .I3(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .I4(s_axi_wvalid),
        .O(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[0]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [0]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[10] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[10]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [10]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[11] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[11]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [11]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[12] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[12]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [12]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[13] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[13]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [13]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[14] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[14]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [14]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[15] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[15]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [15]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[1]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [1]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[2] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[2]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [2]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[3] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[3]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [3]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[4] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[4]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [4]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[5] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[5]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [5]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[6] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[6]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [6]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[7] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[7]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [7]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[8] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[8]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [8]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \GEN_WR_NO_ECC.bram_we_int_reg[9] 
       (.C(s_axi_aclk),
        .CE(\GEN_WR_NO_ECC.bram_we_int[15]_i_2_n_0 ),
        .D(s_axi_wstrb[9]),
        .Q(\GEN_WR_NO_ECC.bram_we_int_reg[15]_0 [9]),
        .R(\GEN_WR_NO_ECC.bram_we_int[15]_i_1_n_0 ));
  axi_bram_ctrl_0_wrap_brst I_WRAP_BRST
       (.\ADDR_SNG_PORT.bram_addr_int_reg[13] (\ADDR_SNG_PORT.bram_addr_int_reg[13] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[13]_0 (\ADDR_SNG_PORT.bram_addr_int_reg[13]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4] (\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 (\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[1] ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4]_1 (\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ),
        .\ADDR_SNG_PORT.bram_addr_int_reg[4]_2 (\GEN_NARROW_CNT.narrow_bram_addr_inc_d1_reg_0 ),
        .D(D),
        .E(E),
        .\GEN_NARROW_CNT.narrow_addr_int_reg[2] (I_WRAP_BRST_n_11),
        .Q(Q),
        .SR(SR),
        .aw_active_d1_reg(aw_active_d1_reg_1),
        .aw_active_re(aw_active_re),
        .curr_narrow_burst(curr_narrow_burst),
        .curr_wrap_burst_reg(curr_wrap_burst_reg),
        .narrow_bram_addr_inc_d1(narrow_bram_addr_inc_d1),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_awaddr(s_axi_awaddr[12:3]),
        .s_axi_awlen(s_axi_awlen[3:0]),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awsize_0_sp_1(s_axi_awsize_0_sn_1),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_wvalid(s_axi_wvalid),
        .\save_init_bram_addr_ld[11]_i_2_0 (narrow_addr_int),
        .\save_init_bram_addr_ld_reg[11]_0 (\save_init_bram_addr_ld_reg[11] ),
        .\save_init_bram_addr_ld_reg[11]_1 (aw_active_d1_reg_0),
        .\save_init_bram_addr_ld_reg[11]_2 (aw_active_d1_reg_2),
        .\save_init_bram_addr_ld_reg[11]_3 (\save_init_bram_addr_ld_reg[11]_0 ),
        .\wrap_burst_total_reg[0]_0 (\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    aw_active_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_active_d1_reg_2),
        .Q(aw_active_d1_reg_0),
        .R(\wrap_burst_total_reg[0] ));
  LUT4 #(
    .INIT(16'h2AAA)) 
    axi_awready_int_i_4
       (.I0(s_axi_awvalid),
        .I1(AW2Arb_BVALID_Cnt[0]),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .O(s_axi_awvalid_0));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(BID_FIFO_n_4),
        .Q(s_axi_bid[0]),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \axi_bid_int_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(BID_FIFO_n_3),
        .Q(s_axi_bid[1]),
        .R(\wrap_burst_total_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'h8A)) 
    axi_bvalid_int_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_bvalid_int_i_2_n_0),
        .I2(BID_FIFO_n_1),
        .O(axi_bvalid_int_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFF70)) 
    axi_bvalid_int_i_2
       (.I0(s_axi_bready),
        .I1(axi_bvalid_int_reg_0),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .I3(AW2Arb_BVALID_Cnt[1]),
        .I4(AW2Arb_BVALID_Cnt[2]),
        .O(axi_bvalid_int_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_bvalid_int_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_int_i_1_n_0),
        .Q(axi_bvalid_int_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hA0E0)) 
    axi_wr_burst_i_2
       (.I0(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_0 ),
        .I1(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg_n_0_[0] ),
        .I2(s_axi_wvalid),
        .I3(axi_wdata_full_reg),
        .O(\FSM_onehot_GEN_WDATA_SM_NO_ECC_SNG_REG_WREADY.wr_data_sng_sm_cs_reg[2]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    axi_wr_burst_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wr_burst_reg_0),
        .Q(axi_wr_burst),
        .R(\wrap_burst_total_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_wready_int_mod_i_1
       (.I0(s_axi_aresetn),
        .I1(axi_wdata_full_cmb),
        .O(axi_wready_int_mod_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    axi_wready_int_mod_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready_int_mod_i_1_n_0),
        .Q(s_axi_wready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    bid_gets_fifo_load_d1_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(bid_gets_fifo_load),
        .Q(bid_gets_fifo_load_d1),
        .R(\wrap_burst_total_reg[0] ));
  LUT6 #(
    .INIT(64'h777788888880777F)) 
    \bvalid_cnt[0]_i_1 
       (.I0(axi_bvalid_int_reg_0),
        .I1(s_axi_bready),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(AW2Arb_BVALID_Cnt[2]),
        .I4(BID_FIFO_n_1),
        .I5(AW2Arb_BVALID_Cnt[0]),
        .O(\bvalid_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF058A5F0A5F0A5F0)) 
    \bvalid_cnt[1]_i_1 
       (.I0(BID_FIFO_n_1),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(AW2Arb_BVALID_Cnt[0]),
        .I4(s_axi_bready),
        .I5(axi_bvalid_int_reg_0),
        .O(\bvalid_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCC49CCC9CCC9CCC)) 
    \bvalid_cnt[2]_i_1 
       (.I0(BID_FIFO_n_1),
        .I1(AW2Arb_BVALID_Cnt[2]),
        .I2(AW2Arb_BVALID_Cnt[1]),
        .I3(AW2Arb_BVALID_Cnt[0]),
        .I4(s_axi_bready),
        .I5(axi_bvalid_int_reg_0),
        .O(\bvalid_cnt[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[0]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[0]),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[1]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[1]),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_cnt_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\bvalid_cnt[2]_i_1_n_0 ),
        .Q(AW2Arb_BVALID_Cnt[2]),
        .R(\wrap_burst_total_reg[0] ));
  FDRE #(
    .INIT(1'b0)) 
    curr_fixed_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(curr_fixed_burst_reg_reg_0),
        .Q(curr_fixed_burst_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    curr_wrap_burst_reg_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(curr_wrap_burst_reg_reg_0),
        .Q(curr_wrap_burst_reg),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000007F00)) 
    last_arb_won_i_3
       (.I0(AW2Arb_BVALID_Cnt[2]),
        .I1(AW2Arb_BVALID_Cnt[1]),
        .I2(AW2Arb_BVALID_Cnt[0]),
        .I3(s_axi_awvalid),
        .I4(arb_sm_cs[0]),
        .I5(arb_sm_cs[1]),
        .O(\bvalid_cnt_reg[2]_0 ));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module axi_bram_ctrl_0_wrap_brst
   (D,
    \save_init_bram_addr_ld_reg[11]_0 ,
    aw_active_d1_reg,
    \GEN_NARROW_CNT.narrow_addr_int_reg[2] ,
    s_axi_awsize_0_sp_1,
    SR,
    \ADDR_SNG_PORT.bram_addr_int_reg[13] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[13]_0 ,
    s_axi_awaddr,
    \save_init_bram_addr_ld_reg[11]_1 ,
    \save_init_bram_addr_ld_reg[11]_2 ,
    E,
    Q,
    s_axi_araddr,
    \ADDR_SNG_PORT.bram_addr_int_reg[4] ,
    s_axi_wvalid,
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ,
    \save_init_bram_addr_ld_reg[11]_3 ,
    curr_wrap_burst_reg,
    curr_narrow_burst,
    \save_init_bram_addr_ld[11]_i_2_0 ,
    narrow_bram_addr_inc_d1,
    s_axi_awlen,
    s_axi_awvalid,
    s_axi_awsize,
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_1 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[4]_2 ,
    s_axi_aresetn,
    \wrap_burst_total_reg[0]_0 ,
    aw_active_re,
    s_axi_aclk);
  output [2:0]D;
  output [6:0]\save_init_bram_addr_ld_reg[11]_0 ;
  output aw_active_d1_reg;
  output \GEN_NARROW_CNT.narrow_addr_int_reg[2] ;
  output s_axi_awsize_0_sp_1;
  output [0:0]SR;
  input [1:0]\ADDR_SNG_PORT.bram_addr_int_reg[13] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[13]_0 ;
  input [9:0]s_axi_awaddr;
  input \save_init_bram_addr_ld_reg[11]_1 ;
  input \save_init_bram_addr_ld_reg[11]_2 ;
  input [0:0]E;
  input [2:0]Q;
  input [0:0]s_axi_araddr;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  input s_axi_wvalid;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  input \save_init_bram_addr_ld_reg[11]_3 ;
  input curr_wrap_burst_reg;
  input curr_narrow_burst;
  input [3:0]\save_init_bram_addr_ld[11]_i_2_0 ;
  input narrow_bram_addr_inc_d1;
  input [3:0]s_axi_awlen;
  input s_axi_awvalid;
  input [2:0]s_axi_awsize;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4]_1 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[4]_2 ;
  input s_axi_aresetn;
  input \wrap_burst_total_reg[0]_0 ;
  input aw_active_re;
  input s_axi_aclk;

  wire \ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ;
  wire [1:0]\ADDR_SNG_PORT.bram_addr_int_reg[13] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[13]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[4]_2 ;
  wire [2:0]D;
  wire [0:0]E;
  wire \GEN_NARROW_CNT.narrow_addr_int_reg[2] ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire [13:12]WrChnl_BRAM_Addr_Ld;
  wire aw_active_d1_reg;
  wire aw_active_re;
  wire curr_narrow_burst;
  wire curr_wrap_burst_reg;
  wire [9:1]data0;
  wire narrow_bram_addr_inc_d1;
  wire s_axi_aclk;
  wire [0:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [9:0]s_axi_awaddr;
  wire [3:0]s_axi_awlen;
  wire [2:0]s_axi_awsize;
  wire s_axi_awsize_0_sn_1;
  wire s_axi_awvalid;
  wire s_axi_wvalid;
  wire [3:0]\save_init_bram_addr_ld[11]_i_2_0 ;
  wire \save_init_bram_addr_ld[11]_i_2_n_0 ;
  wire \save_init_bram_addr_ld[11]_i_3_n_0 ;
  wire \save_init_bram_addr_ld[11]_i_4_n_0 ;
  wire \save_init_bram_addr_ld[11]_i_5_n_0 ;
  wire \save_init_bram_addr_ld[13]_i_3__0_n_0 ;
  wire [6:0]\save_init_bram_addr_ld_reg[11]_0 ;
  wire \save_init_bram_addr_ld_reg[11]_1 ;
  wire \save_init_bram_addr_ld_reg[11]_2 ;
  wire \save_init_bram_addr_ld_reg[11]_3 ;
  wire [2:0]wrap_burst_total;
  wire \wrap_burst_total[0]_i_2_n_0 ;
  wire \wrap_burst_total[0]_i_3_n_0 ;
  wire \wrap_burst_total[0]_i_4_n_0 ;
  wire \wrap_burst_total[1]_i_2_n_0 ;
  wire \wrap_burst_total[1]_i_3_n_0 ;
  wire \wrap_burst_total[1]_i_4_n_0 ;
  wire [2:0]wrap_burst_total_cmb;
  wire \wrap_burst_total_reg[0]_0 ;

  assign s_axi_awsize_0_sp_1 = s_axi_awsize_0_sn_1;
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ADDR_SNG_PORT.bram_addr_int[12]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[13] [0]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[13]_0 ),
        .I2(data0[8]),
        .I3(\save_init_bram_addr_ld[13]_i_3__0_n_0 ),
        .I4(s_axi_awaddr[8]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h04FF)) 
    \ADDR_SNG_PORT.bram_addr_int[13]_i_1 
       (.I0(aw_active_d1_reg),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[4]_1 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[4]_2 ),
        .I3(s_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \ADDR_SNG_PORT.bram_addr_int[13]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[13] [1]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[13]_0 ),
        .I2(data0[9]),
        .I3(\save_init_bram_addr_ld[13]_i_3__0_n_0 ),
        .I4(s_axi_awaddr[9]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h4F444444)) 
    \ADDR_SNG_PORT.bram_addr_int[13]_i_4 
       (.I0(\save_init_bram_addr_ld_reg[11]_1 ),
        .I1(\save_init_bram_addr_ld_reg[11]_2 ),
        .I2(\save_init_bram_addr_ld[11]_i_2_n_0 ),
        .I3(s_axi_wvalid),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ),
        .O(aw_active_d1_reg));
  LUT3 #(
    .INIT(8'hFE)) 
    \ADDR_SNG_PORT.bram_addr_int[13]_i_6 
       (.I0(\save_init_bram_addr_ld[11]_i_2_0 [2]),
        .I1(\save_init_bram_addr_ld[11]_i_2_0 [0]),
        .I2(\save_init_bram_addr_ld[11]_i_2_0 [1]),
        .O(\GEN_NARROW_CNT.narrow_addr_int_reg[2] ));
  LUT3 #(
    .INIT(8'h8B)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_1 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ),
        .I1(E),
        .I2(Q[0]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h0404F404)) 
    \ADDR_SNG_PORT.bram_addr_int[4]_i_2 
       (.I0(\save_init_bram_addr_ld[13]_i_3__0_n_0 ),
        .I1(s_axi_awaddr[0]),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[13]_0 ),
        .I3(s_axi_araddr),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[4] ),
        .O(\ADDR_SNG_PORT.bram_addr_int[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[10]_i_1 
       (.I0(data0[6]),
        .I1(\save_init_bram_addr_ld[13]_i_3__0_n_0 ),
        .I2(s_axi_awaddr[6]),
        .O(\save_init_bram_addr_ld_reg[11]_0 [5]));
  LUT5 #(
    .INIT(32'hFFBA008A)) 
    \save_init_bram_addr_ld[11]_i_1 
       (.I0(data0[7]),
        .I1(\save_init_bram_addr_ld_reg[11]_1 ),
        .I2(\save_init_bram_addr_ld_reg[11]_2 ),
        .I3(\save_init_bram_addr_ld[11]_i_2_n_0 ),
        .I4(s_axi_awaddr[7]),
        .O(\save_init_bram_addr_ld_reg[11]_0 [6]));
  LUT5 #(
    .INIT(32'hBBBAFFFF)) 
    \save_init_bram_addr_ld[11]_i_2 
       (.I0(\save_init_bram_addr_ld[11]_i_3_n_0 ),
        .I1(\save_init_bram_addr_ld[11]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld[11]_i_5_n_0 ),
        .I3(\save_init_bram_addr_ld_reg[11]_3 ),
        .I4(curr_wrap_burst_reg),
        .O(\save_init_bram_addr_ld[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAA2A)) 
    \save_init_bram_addr_ld[11]_i_3 
       (.I0(curr_narrow_burst),
        .I1(s_axi_wvalid),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[4]_0 ),
        .I3(\GEN_NARROW_CNT.narrow_addr_int_reg[2] ),
        .I4(\save_init_bram_addr_ld[11]_i_2_0 [3]),
        .I5(narrow_bram_addr_inc_d1),
        .O(\save_init_bram_addr_ld[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000008FA00000)) 
    \save_init_bram_addr_ld[11]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(wrap_burst_total[1]),
        .I3(wrap_burst_total[0]),
        .I4(Q[0]),
        .I5(wrap_burst_total[2]),
        .O(\save_init_bram_addr_ld[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFB)) 
    \save_init_bram_addr_ld[11]_i_5 
       (.I0(wrap_burst_total[0]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[1]),
        .O(\save_init_bram_addr_ld[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[12]_i_1 
       (.I0(data0[8]),
        .I1(\save_init_bram_addr_ld[13]_i_3__0_n_0 ),
        .I2(s_axi_awaddr[8]),
        .O(WrChnl_BRAM_Addr_Ld[12]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[13]_i_2 
       (.I0(data0[9]),
        .I1(\save_init_bram_addr_ld[13]_i_3__0_n_0 ),
        .I2(s_axi_awaddr[9]),
        .O(WrChnl_BRAM_Addr_Ld[13]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h0B)) 
    \save_init_bram_addr_ld[13]_i_3__0 
       (.I0(\save_init_bram_addr_ld_reg[11]_1 ),
        .I1(\save_init_bram_addr_ld_reg[11]_2 ),
        .I2(\save_init_bram_addr_ld[11]_i_2_n_0 ),
        .O(\save_init_bram_addr_ld[13]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hC80CFFFFC80C0000)) 
    \save_init_bram_addr_ld[5]_i_1 
       (.I0(wrap_burst_total[0]),
        .I1(data0[1]),
        .I2(wrap_burst_total[1]),
        .I3(wrap_burst_total[2]),
        .I4(\save_init_bram_addr_ld[13]_i_3__0_n_0 ),
        .I5(s_axi_awaddr[1]),
        .O(\save_init_bram_addr_ld_reg[11]_0 [0]));
  LUT6 #(
    .INIT(64'hA28AFFFFA28A0000)) 
    \save_init_bram_addr_ld[6]_i_1 
       (.I0(data0[2]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .I4(\save_init_bram_addr_ld[13]_i_3__0_n_0 ),
        .I5(s_axi_awaddr[2]),
        .O(\save_init_bram_addr_ld_reg[11]_0 [1]));
  LUT6 #(
    .INIT(64'hAA8AFFFFAA8A0000)) 
    \save_init_bram_addr_ld[7]_i_1 
       (.I0(data0[3]),
        .I1(wrap_burst_total[1]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[0]),
        .I4(\save_init_bram_addr_ld[13]_i_3__0_n_0 ),
        .I5(s_axi_awaddr[3]),
        .O(\save_init_bram_addr_ld_reg[11]_0 [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[8]_i_1 
       (.I0(data0[4]),
        .I1(\save_init_bram_addr_ld[13]_i_3__0_n_0 ),
        .I2(s_axi_awaddr[4]),
        .O(\save_init_bram_addr_ld_reg[11]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[9]_i_1 
       (.I0(data0[5]),
        .I1(\save_init_bram_addr_ld[13]_i_3__0_n_0 ),
        .I2(s_axi_awaddr[5]),
        .O(\save_init_bram_addr_ld_reg[11]_0 [4]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(\save_init_bram_addr_ld_reg[11]_0 [5]),
        .Q(data0[6]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(\save_init_bram_addr_ld_reg[11]_0 [6]),
        .Q(data0[7]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(WrChnl_BRAM_Addr_Ld[12]),
        .Q(data0[8]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(WrChnl_BRAM_Addr_Ld[13]),
        .Q(data0[9]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(\save_init_bram_addr_ld_reg[11]_0 [0]),
        .Q(data0[1]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(\save_init_bram_addr_ld_reg[11]_0 [1]),
        .Q(data0[2]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(\save_init_bram_addr_ld_reg[11]_0 [2]),
        .Q(data0[3]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(\save_init_bram_addr_ld_reg[11]_0 [3]),
        .Q(data0[4]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(\save_init_bram_addr_ld_reg[11]_0 [4]),
        .Q(data0[5]),
        .R(\wrap_burst_total_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF82AA2000)) 
    \wrap_burst_total[0]_i_1 
       (.I0(\wrap_burst_total[1]_i_4_n_0 ),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awlen[2]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awsize[0]),
        .I5(\wrap_burst_total[0]_i_2_n_0 ),
        .O(wrap_burst_total_cmb[0]));
  LUT6 #(
    .INIT(64'h88228C2288228822)) 
    \wrap_burst_total[0]_i_2 
       (.I0(\wrap_burst_total[1]_i_2_n_0 ),
        .I1(s_axi_awlen[1]),
        .I2(\wrap_burst_total[0]_i_3_n_0 ),
        .I3(s_axi_awlen[2]),
        .I4(\wrap_burst_total[1]_i_3_n_0 ),
        .I5(\wrap_burst_total[0]_i_4_n_0 ),
        .O(\wrap_burst_total[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \wrap_burst_total[0]_i_3 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[0]),
        .O(\wrap_burst_total[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \wrap_burst_total[0]_i_4 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(\wrap_burst_total[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF8FF888888888888)) 
    \wrap_burst_total[1]_i_1 
       (.I0(\wrap_burst_total[1]_i_2_n_0 ),
        .I1(s_axi_awlen[1]),
        .I2(s_axi_awsize[0]),
        .I3(\wrap_burst_total[1]_i_3_n_0 ),
        .I4(s_axi_awlen[2]),
        .I5(\wrap_burst_total[1]_i_4_n_0 ),
        .O(wrap_burst_total_cmb[1]));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \wrap_burst_total[1]_i_2 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awlen[0]),
        .I5(s_axi_awlen[3]),
        .O(\wrap_burst_total[1]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \wrap_burst_total[1]_i_3 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awlen[3]),
        .O(\wrap_burst_total[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \wrap_burst_total[1]_i_4 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awlen[1]),
        .I3(s_axi_awvalid),
        .I4(s_axi_awlen[0]),
        .O(\wrap_burst_total[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \wrap_burst_total[2]_i_1 
       (.I0(s_axi_awsize_0_sn_1),
        .I1(s_axi_awlen[3]),
        .I2(s_axi_awvalid),
        .I3(s_axi_awlen[2]),
        .I4(s_axi_awlen[0]),
        .I5(s_axi_awlen[1]),
        .O(wrap_burst_total_cmb[2]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \wrap_burst_total[2]_i_2__0 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(s_axi_awsize_0_sn_1));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(wrap_burst_total_cmb[0]),
        .Q(wrap_burst_total[0]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(wrap_burst_total_cmb[1]),
        .Q(wrap_burst_total[1]),
        .R(\wrap_burst_total_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(aw_active_re),
        .D(wrap_burst_total_cmb[2]),
        .Q(wrap_burst_total[2]),
        .R(\wrap_burst_total_reg[0]_0 ));
endmodule

(* ORIG_REF_NAME = "wrap_brst" *) 
module axi_bram_ctrl_0_wrap_brst_1
   (SR,
    D,
    ar_active_reg,
    \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ,
    \ADDR_SNG_PORT.bram_addr_int_reg[5] ,
    ar_active_reg_0,
    \save_init_bram_addr_ld_reg[13]_0 ,
    \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ,
    curr_narrow_burst_cmb,
    s_axi_aresetn,
    Q,
    \ADDR_SNG_PORT.bram_addr_int_reg[9] ,
    s_axi_araddr,
    \ADDR_SNG_PORT.bram_addr_int_reg[10] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[11] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[7] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[6] ,
    curr_fixed_burst_reg,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ,
    \ADDR_SNG_PORT.bram_addr_int_reg[13] ,
    \ADDR_SNG_PORT.bram_addr_int_reg[13]_0 ,
    curr_wrap_burst_reg,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ,
    narrow_bram_addr_inc_d1,
    \ADDR_SNG_PORT.bram_addr_int_reg[11]_2 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0 ,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ,
    s_axi_rready,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_1 ,
    end_brst_rd,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_2 ,
    s_axi_arlen,
    s_axi_arsize,
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_3 ,
    E,
    s_axi_aclk);
  output [0:0]SR;
  output [6:0]D;
  output ar_active_reg;
  output \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ;
  output \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  output [0:0]ar_active_reg_0;
  output [1:0]\save_init_bram_addr_ld_reg[13]_0 ;
  output \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ;
  output curr_narrow_burst_cmb;
  input s_axi_aresetn;
  input [7:0]Q;
  input \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  input [8:0]s_axi_araddr;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  input [6:0]\ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  input curr_fixed_burst_reg;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[13] ;
  input \ADDR_SNG_PORT.bram_addr_int_reg[13]_0 ;
  input curr_wrap_burst_reg;
  input [3:0]\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  input narrow_bram_addr_inc_d1;
  input \ADDR_SNG_PORT.bram_addr_int_reg[11]_2 ;
  input [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0 ;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  input s_axi_rready;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_1 ;
  input end_brst_rd;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_2 ;
  input [3:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_3 ;
  input [0:0]E;
  input s_axi_aclk;

  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_3_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ;
  wire [6:0]\ADDR_SNG_PORT.bram_addr_int_reg[11] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ;
  wire [3:0]\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[11]_2 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[13] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[13]_0 ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[5] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[6] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[7] ;
  wire \ADDR_SNG_PORT.bram_addr_int_reg[9] ;
  wire [6:0]D;
  wire [0:0]E;
  wire \FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ;
  wire [3:0]\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_1 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_2 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_3 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ;
  wire \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ;
  wire \GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ;
  wire [7:0]Q;
  wire [11:5]RdChnl_BRAM_Addr_Ld;
  wire [0:0]SR;
  wire ar_active_reg;
  wire [0:0]ar_active_reg_0;
  wire curr_fixed_burst_reg;
  wire curr_narrow_burst_cmb;
  wire curr_wrap_burst_reg;
  wire [9:1]data0;
  wire end_brst_rd;
  wire narrow_bram_addr_inc_d1;
  wire s_axi_aclk;
  wire [8:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire [3:0]s_axi_arlen;
  wire [2:0]s_axi_arsize;
  wire s_axi_rready;
  wire \save_init_bram_addr_ld[13]_i_4_n_0 ;
  wire \save_init_bram_addr_ld[13]_i_5_n_0 ;
  wire [1:0]\save_init_bram_addr_ld_reg[13]_0 ;
  wire [2:0]wrap_burst_total;
  wire \wrap_burst_total[0]_i_2__0_n_0 ;
  wire \wrap_burst_total[0]_i_3__0_n_0 ;
  wire \wrap_burst_total[0]_i_4__0_n_0 ;
  wire \wrap_burst_total[1]_i_2__0_n_0 ;
  wire \wrap_burst_total[1]_i_3__0_n_0 ;
  wire \wrap_burst_total[1]_i_4__0_n_0 ;
  wire \wrap_burst_total[2]_i_1__0_n_0 ;
  wire [1:0]wrap_burst_total_cmb;

  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[10]_i_1 
       (.I0(RdChnl_BRAM_Addr_Ld[10]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[11] [5]),
        .I3(ar_active_reg),
        .I4(Q[6]),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[10]_0 ),
        .O(D[5]));
  LUT5 #(
    .INIT(32'hAFEFAAEA)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_1 
       (.I0(ar_active_reg),
        .I1(\ADDR_SNG_PORT.bram_addr_int[11]_i_3_n_0 ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I3(curr_fixed_burst_reg),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[11]_0 ),
        .O(ar_active_reg_0));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B8B8)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_2 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0 ),
        .I1(ar_active_reg),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[9] ),
        .I5(Q[6]),
        .O(D[6]));
  LUT5 #(
    .INIT(32'h000100FF)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0 ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 [3]),
        .I2(narrow_bram_addr_inc_d1),
        .I3(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[11]_2 ),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_4 
       (.I0(data0[7]),
        .I1(\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I2(s_axi_araddr[6]),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[11] [6]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \ADDR_SNG_PORT.bram_addr_int[11]_i_6 
       (.I0(\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 [2]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 [0]),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[11]_1 [1]),
        .O(\ADDR_SNG_PORT.bram_addr_int[11]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEEFE)) 
    \ADDR_SNG_PORT.bram_addr_int[13]_i_2 
       (.I0(\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[13] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[13]_0 ),
        .O(ar_active_reg));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[5]_i_1 
       (.I0(RdChnl_BRAM_Addr_Ld[5]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[11] [0]),
        .I3(ar_active_reg),
        .I4(Q[1]),
        .I5(Q[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[6]_i_1 
       (.I0(RdChnl_BRAM_Addr_Ld[6]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[11] [1]),
        .I3(ar_active_reg),
        .I4(Q[2]),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[6] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \ADDR_SNG_PORT.bram_addr_int[7]_i_1 
       (.I0(RdChnl_BRAM_Addr_Ld[7]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[11] [2]),
        .I3(ar_active_reg),
        .I4(Q[3]),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[7] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hB8FFB800B800B8FF)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_1 
       (.I0(RdChnl_BRAM_Addr_Ld[8]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[11] [3]),
        .I3(ar_active_reg),
        .I4(\ADDR_SNG_PORT.bram_addr_int_reg[5] ),
        .I5(Q[4]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \ADDR_SNG_PORT.bram_addr_int[8]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\ADDR_SNG_PORT.bram_addr_int_reg[5] ));
  LUT6 #(
    .INIT(64'hB800B8FFB8FFB800)) 
    \ADDR_SNG_PORT.bram_addr_int[9]_i_1 
       (.I0(RdChnl_BRAM_Addr_Ld[9]),
        .I1(\ADDR_SNG_PORT.bram_addr_int_reg[10] ),
        .I2(\ADDR_SNG_PORT.bram_addr_int_reg[11] [4]),
        .I3(ar_active_reg),
        .I4(Q[5]),
        .I5(\ADDR_SNG_PORT.bram_addr_int_reg[9] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFF0FEF4F0F0FFF5)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0 [2]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0 [0]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0 [1]),
        .O(\FSM_sequential_GEN_NO_RD_CMD_OPT.rd_data_sm_cs_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFFEEEEFFFF2024)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_8 
       (.I0(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0 [1]),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0 [0]),
        .I2(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int_reg[0] ),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_3 ),
        .I4(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0 [3]),
        .I5(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_0 [2]),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_9 
       (.I0(s_axi_rready),
        .I1(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_1 ),
        .I2(end_brst_rd),
        .I3(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_3_2 ),
        .O(\GEN_NO_RD_CMD_OPT.GEN_NARROW_CNT.narrow_addr_int[3]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_int_i_1
       (.I0(s_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[10]_i_1__0 
       (.I0(data0[6]),
        .I1(\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I2(s_axi_araddr[5]),
        .O(RdChnl_BRAM_Addr_Ld[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[11]_i_1__0 
       (.I0(data0[7]),
        .I1(\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I2(s_axi_araddr[6]),
        .O(RdChnl_BRAM_Addr_Ld[11]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[12]_i_1__0 
       (.I0(data0[8]),
        .I1(\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I2(s_axi_araddr[7]),
        .O(\save_init_bram_addr_ld_reg[13]_0 [0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[13]_i_2__0 
       (.I0(data0[9]),
        .I1(\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I2(s_axi_araddr[8]),
        .O(\save_init_bram_addr_ld_reg[13]_0 [1]));
  LUT5 #(
    .INIT(32'h88A80000)) 
    \save_init_bram_addr_ld[13]_i_3 
       (.I0(\ADDR_SNG_PORT.bram_addr_int[11]_i_3_n_0 ),
        .I1(\save_init_bram_addr_ld[13]_i_4_n_0 ),
        .I2(\save_init_bram_addr_ld[13]_i_5_n_0 ),
        .I3(\ADDR_SNG_PORT.bram_addr_int_reg[5] ),
        .I4(curr_wrap_burst_reg),
        .O(\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ));
  LUT6 #(
    .INIT(64'h000000008F00A000)) 
    \save_init_bram_addr_ld[13]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(wrap_burst_total[1]),
        .I3(Q[0]),
        .I4(wrap_burst_total[0]),
        .I5(wrap_burst_total[2]),
        .O(\save_init_bram_addr_ld[13]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \save_init_bram_addr_ld[13]_i_5 
       (.I0(wrap_burst_total[1]),
        .I1(wrap_burst_total[2]),
        .I2(wrap_burst_total[0]),
        .O(\save_init_bram_addr_ld[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA08AFFFFA08A0000)) 
    \save_init_bram_addr_ld[5]_i_1__0 
       (.I0(data0[1]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .I4(\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I5(s_axi_araddr[0]),
        .O(RdChnl_BRAM_Addr_Ld[5]));
  LUT6 #(
    .INIT(64'hA28AFFFFA28A0000)) 
    \save_init_bram_addr_ld[6]_i_1__0 
       (.I0(data0[2]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .I4(\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I5(s_axi_araddr[1]),
        .O(RdChnl_BRAM_Addr_Ld[6]));
  LUT6 #(
    .INIT(64'hAA8AFFFFAA8A0000)) 
    \save_init_bram_addr_ld[7]_i_1__0 
       (.I0(data0[3]),
        .I1(wrap_burst_total[0]),
        .I2(wrap_burst_total[2]),
        .I3(wrap_burst_total[1]),
        .I4(\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I5(s_axi_araddr[2]),
        .O(RdChnl_BRAM_Addr_Ld[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[8]_i_1__0 
       (.I0(data0[4]),
        .I1(\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I2(s_axi_araddr[3]),
        .O(RdChnl_BRAM_Addr_Ld[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \save_init_bram_addr_ld[9]_i_1__0 
       (.I0(data0[5]),
        .I1(\GEN_NO_RD_CMD_OPT.curr_wrap_burst_reg_reg ),
        .I2(s_axi_araddr[4]),
        .O(RdChnl_BRAM_Addr_Ld[9]));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[10] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(RdChnl_BRAM_Addr_Ld[10]),
        .Q(data0[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[11] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(RdChnl_BRAM_Addr_Ld[11]),
        .Q(data0[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[12] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\save_init_bram_addr_ld_reg[13]_0 [0]),
        .Q(data0[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[13] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\save_init_bram_addr_ld_reg[13]_0 [1]),
        .Q(data0[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[5] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(RdChnl_BRAM_Addr_Ld[5]),
        .Q(data0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[6] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(RdChnl_BRAM_Addr_Ld[6]),
        .Q(data0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[7] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(RdChnl_BRAM_Addr_Ld[7]),
        .Q(data0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[8] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(RdChnl_BRAM_Addr_Ld[8]),
        .Q(data0[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \save_init_bram_addr_ld_reg[9] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(RdChnl_BRAM_Addr_Ld[9]),
        .Q(data0[5]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFF40)) 
    \wrap_burst_total[0]_i_1__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(\wrap_burst_total[0]_i_2__0_n_0 ),
        .I3(\wrap_burst_total[0]_i_3__0_n_0 ),
        .O(wrap_burst_total_cmb[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h80004080)) 
    \wrap_burst_total[0]_i_2__0 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arlen[3]),
        .O(\wrap_burst_total[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h800000008000C300)) 
    \wrap_burst_total[0]_i_3__0 
       (.I0(\wrap_burst_total[0]_i_4__0_n_0 ),
        .I1(s_axi_arlen[2]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[0]),
        .I4(s_axi_arlen[3]),
        .I5(curr_narrow_burst_cmb),
        .O(\wrap_burst_total[0]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \wrap_burst_total[0]_i_4__0 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .O(\wrap_burst_total[0]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8888888888)) 
    \wrap_burst_total[1]_i_1__0 
       (.I0(s_axi_arlen[1]),
        .I1(\wrap_burst_total[1]_i_2__0_n_0 ),
        .I2(\wrap_burst_total[1]_i_3__0_n_0 ),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arlen[3]),
        .I5(\wrap_burst_total[1]_i_4__0_n_0 ),
        .O(wrap_burst_total_cmb[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \wrap_burst_total[1]_i_2__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[0]),
        .O(\wrap_burst_total[1]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \wrap_burst_total[1]_i_3__0 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .O(\wrap_burst_total[1]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \wrap_burst_total[1]_i_4__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[2]),
        .O(\wrap_burst_total[1]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h40000000)) 
    \wrap_burst_total[2]_i_1__0 
       (.I0(curr_narrow_burst_cmb),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arlen[2]),
        .I4(s_axi_arlen[3]),
        .O(\wrap_burst_total[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hFB)) 
    \wrap_burst_total[2]_i_2 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(curr_narrow_burst_cmb));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[0] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wrap_burst_total_cmb[0]),
        .Q(wrap_burst_total[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[1] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(wrap_burst_total_cmb[1]),
        .Q(wrap_burst_total[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \wrap_burst_total_reg[2] 
       (.C(s_axi_aclk),
        .CE(E),
        .D(\wrap_burst_total[2]_i_1__0_n_0 ),
        .Q(wrap_burst_total[2]),
        .R(SR));
endmodule

(* ADDR_WIDTH_A = "10" *) (* ADDR_WIDTH_B = "10" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "8" *) (* BYTE_WRITE_WIDTH_B = "128" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "2" *) (* MEMORY_SIZE = "131072" *) (* MEMORY_TYPE = "0" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "no_ecc" *) (* P_ENABLE_BYTE_WRITE_A = "1" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "1024" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "block" *) 
(* P_MIN_WIDTH_DATA = "128" *) (* P_MIN_WIDTH_DATA_A = "128" *) (* P_MIN_WIDTH_DATA_B = "128" *) 
(* P_MIN_WIDTH_DATA_ECC = "128" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "128" *) 
(* P_NUM_COLS_WRITE_A = "16" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_ROWS_READ_A = "1" *) 
(* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) (* P_NUM_ROWS_WRITE_B = "1" *) 
(* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_READ_A = "10" *) 
(* P_WIDTH_ADDR_READ_B = "10" *) (* P_WIDTH_ADDR_WRITE_A = "10" *) (* P_WIDTH_ADDR_WRITE_B = "10" *) 
(* P_WIDTH_COL_WRITE_A = "8" *) (* P_WIDTH_COL_WRITE_B = "128" *) (* READ_DATA_WIDTH_A = "128" *) 
(* READ_DATA_WIDTH_B = "128" *) (* READ_LATENCY_A = "1" *) (* READ_LATENCY_B = "1" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "1" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "128" *) (* WRITE_DATA_WIDTH_B = "128" *) 
(* WRITE_MODE_A = "0" *) (* WRITE_MODE_B = "0" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "128" *) 
(* rstb_loop_iter = "128" *) 
module axi_bram_ctrl_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [15:0]wea;
  input [9:0]addra;
  input [127:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [127:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [9:0]addrb;
  input [127:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [127:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [9:0]addra;
  wire clka;
  wire [127:0]dina;
  wire [127:0]douta;
  wire ena;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_1_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_2_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_3_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_4_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_1_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_2_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_3_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_4_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_1_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_2_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_3_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_4_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_1_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_2_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_3_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_4_n_0 ;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_5_n_0 ;
  wire rsta;
  wire sleep;
  wire [15:0]wea;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_RDADDRECC_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_INJECTDBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_INJECTSBITERR_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DOPADOP_UNCONNECTED ;
  wire [3:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_RDADDRECC_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign doutb[127] = \<const0> ;
  assign doutb[126] = \<const0> ;
  assign doutb[125] = \<const0> ;
  assign doutb[124] = \<const0> ;
  assign doutb[123] = \<const0> ;
  assign doutb[122] = \<const0> ;
  assign doutb[121] = \<const0> ;
  assign doutb[120] = \<const0> ;
  assign doutb[119] = \<const0> ;
  assign doutb[118] = \<const0> ;
  assign doutb[117] = \<const0> ;
  assign doutb[116] = \<const0> ;
  assign doutb[115] = \<const0> ;
  assign doutb[114] = \<const0> ;
  assign doutb[113] = \<const0> ;
  assign doutb[112] = \<const0> ;
  assign doutb[111] = \<const0> ;
  assign doutb[110] = \<const0> ;
  assign doutb[109] = \<const0> ;
  assign doutb[108] = \<const0> ;
  assign doutb[107] = \<const0> ;
  assign doutb[106] = \<const0> ;
  assign doutb[105] = \<const0> ;
  assign doutb[104] = \<const0> ;
  assign doutb[103] = \<const0> ;
  assign doutb[102] = \<const0> ;
  assign doutb[101] = \<const0> ;
  assign doutb[100] = \<const0> ;
  assign doutb[99] = \<const0> ;
  assign doutb[98] = \<const0> ;
  assign doutb[97] = \<const0> ;
  assign doutb[96] = \<const0> ;
  assign doutb[95] = \<const0> ;
  assign doutb[94] = \<const0> ;
  assign doutb[93] = \<const0> ;
  assign doutb[92] = \<const0> ;
  assign doutb[91] = \<const0> ;
  assign doutb[90] = \<const0> ;
  assign doutb[89] = \<const0> ;
  assign doutb[88] = \<const0> ;
  assign doutb[87] = \<const0> ;
  assign doutb[86] = \<const0> ;
  assign doutb[85] = \<const0> ;
  assign doutb[84] = \<const0> ;
  assign doutb[83] = \<const0> ;
  assign doutb[82] = \<const0> ;
  assign doutb[81] = \<const0> ;
  assign doutb[80] = \<const0> ;
  assign doutb[79] = \<const0> ;
  assign doutb[78] = \<const0> ;
  assign doutb[77] = \<const0> ;
  assign doutb[76] = \<const0> ;
  assign doutb[75] = \<const0> ;
  assign doutb[74] = \<const0> ;
  assign doutb[73] = \<const0> ;
  assign doutb[72] = \<const0> ;
  assign doutb[71] = \<const0> ;
  assign doutb[70] = \<const0> ;
  assign doutb[69] = \<const0> ;
  assign doutb[68] = \<const0> ;
  assign doutb[67] = \<const0> ;
  assign doutb[66] = \<const0> ;
  assign doutb[65] = \<const0> ;
  assign doutb[64] = \<const0> ;
  assign doutb[63] = \<const0> ;
  assign doutb[62] = \<const0> ;
  assign doutb[61] = \<const0> ;
  assign doutb[60] = \<const0> ;
  assign doutb[59] = \<const0> ;
  assign doutb[58] = \<const0> ;
  assign doutb[57] = \<const0> ;
  assign doutb[56] = \<const0> ;
  assign doutb[55] = \<const0> ;
  assign doutb[54] = \<const0> ;
  assign doutb[53] = \<const0> ;
  assign doutb[52] = \<const0> ;
  assign doutb[51] = \<const0> ;
  assign doutb[50] = \<const0> ;
  assign doutb[49] = \<const0> ;
  assign doutb[48] = \<const0> ;
  assign doutb[47] = \<const0> ;
  assign doutb[46] = \<const0> ;
  assign doutb[45] = \<const0> ;
  assign doutb[44] = \<const0> ;
  assign doutb[43] = \<const0> ;
  assign doutb[42] = \<const0> ;
  assign doutb[41] = \<const0> ;
  assign doutb[40] = \<const0> ;
  assign doutb[39] = \<const0> ;
  assign doutb[38] = \<const0> ;
  assign doutb[37] = \<const0> ;
  assign doutb[36] = \<const0> ;
  assign doutb[35] = \<const0> ;
  assign doutb[34] = \<const0> ;
  assign doutb[33] = \<const0> ;
  assign doutb[32] = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "31" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/gint_inst.xpm_spram_mem_gen.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "31" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(0)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(1'b0),
        .DBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DBITERR_UNCONNECTED ),
        .DIADI(dina[31:0]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1,1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(douta[31:0]),
        .DOBDO(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_SBITERR_UNCONNECTED ),
        .WEA({\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_1_n_0 ,\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_2_n_0 ,\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_3_n_0 ,\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_4_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_1 
       (.I0(ena),
        .I1(wea[3]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_2 
       (.I0(ena),
        .I1(wea[2]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_3 
       (.I0(ena),
        .I1(wea[1]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_4 
       (.I0(ena),
        .I1(wea[0]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0_i_4_n_0 ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTA.DATA_LSB  = "32" *) 
  (* \MEM.PORTA.DATA_MSB  = "63" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/gint_inst.xpm_spram_mem_gen.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "32" *) 
  (* ram_slice_end = "63" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(0)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(1'b0),
        .DBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DBITERR_UNCONNECTED ),
        .DIADI(dina[63:32]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1,1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(douta[63:32]),
        .DOBDO(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_SBITERR_UNCONNECTED ),
        .WEA({\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_1_n_0 ,\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_2_n_0 ,\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_3_n_0 ,\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_4_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_1 
       (.I0(ena),
        .I1(wea[7]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_2 
       (.I0(ena),
        .I1(wea[6]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_3 
       (.I0(ena),
        .I1(wea[5]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_4 
       (.I0(ena),
        .I1(wea[4]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_1_i_4_n_0 ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTA.DATA_LSB  = "64" *) 
  (* \MEM.PORTA.DATA_MSB  = "95" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/gint_inst.xpm_spram_mem_gen.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "64" *) 
  (* ram_slice_end = "95" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(0)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(1'b0),
        .DBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DBITERR_UNCONNECTED ),
        .DIADI(dina[95:64]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1,1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(douta[95:64]),
        .DOBDO(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_SBITERR_UNCONNECTED ),
        .WEA({\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_1_n_0 ,\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_2_n_0 ,\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_3_n_0 ,\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_4_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_1 
       (.I0(ena),
        .I1(wea[11]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_2 
       (.I0(ena),
        .I1(wea[10]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_3 
       (.I0(ena),
        .I1(wea[9]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_4 
       (.I0(ena),
        .I1(wea[8]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_2_i_4_n_0 ));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "1023" *) 
  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8_p0_d8_p0_d8_p0_d8" *) 
  (* \MEM.PORTA.DATA_LSB  = "96" *) 
  (* \MEM.PORTA.DATA_MSB  = "127" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "131072" *) 
  (* RTL_RAM_NAME = "U0/gint_inst.xpm_spram_mem_gen.xpm_memory_spram_inst/xpm_memory_base_inst/gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "1023" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "96" *) 
  (* ram_slice_end = "127" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(36),
    .WRITE_WIDTH_B(0)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3 
       (.ADDRARDADDR({1'b1,addra,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b1),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(1'b0),
        .DBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DBITERR_UNCONNECTED ),
        .DIADI(dina[127:96]),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b1,1'b1,1'b1,1'b1}),
        .DIPBDIP({1'b1,1'b1,1'b1,1'b1}),
        .DOADO(douta[127:96]),
        .DOBDO(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DOBDO_UNCONNECTED [31:0]),
        .DOPADOP(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_DOPBDOP_UNCONNECTED [3:0]),
        .ECCPARITY(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_1_n_0 ),
        .ENBWREN(1'b0),
        .INJECTDBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_INJECTDBITERR_UNCONNECTED ),
        .INJECTSBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_INJECTSBITERR_UNCONNECTED ),
        .RDADDRECC(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(rsta),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_SBITERR_UNCONNECTED ),
        .WEA({\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_2_n_0 ,\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_3_n_0 ,\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_4_n_0 ,\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_5_n_0 }),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_1 
       (.I0(rsta),
        .I1(ena),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_2 
       (.I0(ena),
        .I1(wea[15]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_3 
       (.I0(ena),
        .I1(wea[14]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_4 
       (.I0(ena),
        .I1(wea[13]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_5 
       (.I0(ena),
        .I1(wea[12]),
        .O(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_3_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_memory_spram" *) 
module axi_bram_ctrl_0_xpm_memory_spram
   (douta,
    s_axi_aclk,
    \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0 ,
    ena,
    wea,
    Q,
    dina);
  output [127:0]douta;
  input s_axi_aclk;
  input \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0 ;
  input ena;
  input [15:0]wea;
  input [9:0]Q;
  input [127:0]dina;

  wire [9:0]Q;
  wire [127:0]dina;
  wire [127:0]douta;
  wire ena;
  wire \gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0 ;
  wire s_axi_aclk;
  wire [15:0]wea;
  wire NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED;
  wire NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED;
  wire [127:0]NLW_xpm_memory_base_inst_doutb_UNCONNECTED;

  (* ADDR_WIDTH_A = "10" *) 
  (* ADDR_WIDTH_B = "10" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "8" *) 
  (* BYTE_WRITE_WIDTH_B = "128" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* \MEM.ADDRESS_SPACE  *) 
  (* \MEM.ADDRESS_SPACE_BEGIN  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_LSB  = "0" *) 
  (* \MEM.ADDRESS_SPACE_DATA_MSB  = "127" *) 
  (* \MEM.ADDRESS_SPACE_END  = "1023" *) 
  (* \MEM.CORE_MEMORY_WIDTH  = "128" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "2" *) 
  (* MEMORY_SIZE = "131072" *) 
  (* MEMORY_TYPE = "0" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "1" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "1024" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "block" *) 
  (* P_MIN_WIDTH_DATA = "128" *) 
  (* P_MIN_WIDTH_DATA_A = "128" *) 
  (* P_MIN_WIDTH_DATA_B = "128" *) 
  (* P_MIN_WIDTH_DATA_ECC = "128" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "128" *) 
  (* P_NUM_COLS_WRITE_A = "16" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_READ_A = "10" *) 
  (* P_WIDTH_ADDR_READ_B = "10" *) 
  (* P_WIDTH_ADDR_WRITE_A = "10" *) 
  (* P_WIDTH_ADDR_WRITE_B = "10" *) 
  (* P_WIDTH_COL_WRITE_A = "8" *) 
  (* P_WIDTH_COL_WRITE_B = "128" *) 
  (* READ_DATA_WIDTH_A = "128" *) 
  (* READ_DATA_WIDTH_B = "128" *) 
  (* READ_LATENCY_A = "1" *) 
  (* READ_LATENCY_B = "1" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "1" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "128" *) 
  (* WRITE_DATA_WIDTH_B = "128" *) 
  (* WRITE_MODE_A = "0" *) 
  (* WRITE_MODE_B = "0" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "128" *) 
  (* rstb_loop_iter = "128" *) 
  axi_bram_ctrl_0_xpm_memory_base xpm_memory_base_inst
       (.addra(Q),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(s_axi_aclk),
        .clkb(1'b0),
        .dbiterra(NLW_xpm_memory_base_inst_dbiterra_UNCONNECTED),
        .dbiterrb(NLW_xpm_memory_base_inst_dbiterrb_UNCONNECTED),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_xpm_memory_base_inst_doutb_UNCONNECTED[127:0]),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b1),
        .regceb(1'b0),
        .rsta(\gen_wr_a.gen_byte_narrow.for_mem_cols[1].mem_reg_0 ),
        .rstb(1'b0),
        .sbiterra(NLW_xpm_memory_base_inst_sbiterra_UNCONNECTED),
        .sbiterrb(NLW_xpm_memory_base_inst_sbiterrb_UNCONNECTED),
        .sleep(1'b0),
        .wea(wea),
        .web(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
