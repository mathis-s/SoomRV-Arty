// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sat Nov 18 12:50:46 2023
// Host        : m-desktop running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim -rename_top axi_map_auto_pc_0 -prefix
//               axi_map_auto_pc_0_ axi_map_auto_pc_0_sim_netlist.v
// Design      : axi_map_auto_pc_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_map_auto_pc_0,axi_protocol_converter_v2_1_29_axi_protocol_converter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_protocol_converter_v2_1_29_axi_protocol_converter,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module axi_map_auto_pc_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
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
    s_axi_arregion,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awaddr,
    m_axi_awprot,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_araddr,
    m_axi_arprot,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 41666666, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) input [1:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [11:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREGION" *) input [3:0]s_axi_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [1:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [1:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [11:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREGION" *) input [3:0]s_axi_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [1:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 41666666, ID_WIDTH 2, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 4, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [11:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [11:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 128, PROTOCOL AXI4LITE, FREQ_HZ 41666666, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [11:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [11:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [31:0]m_axi_wdata;
  wire m_axi_wready;
  wire [3:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [11:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [1:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [1:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [1:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_inst_m_axi_wlast_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arcache_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_arlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awcache_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_inst_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awlock_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_inst_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [1:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ADDR_WIDTH = "12" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "32" *) 
  (* C_AXI_ID_WIDTH = "2" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_READ = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_IGNORE_ID = "0" *) 
  (* C_M_AXI_PROTOCOL = "2" *) 
  (* C_S_AXI_PROTOCOL = "0" *) 
  (* C_TRANSLATION_MODE = "2" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_AXILITE_SIZE = "3'b010" *) 
  (* P_CONVERSION = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_INCR = "2'b01" *) 
  (* P_PROTECTION = "1" *) 
  (* P_SLVERR = "2'b10" *) 
  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_axi_protocol_converter inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(NLW_inst_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_inst_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_inst_m_axi_arid_UNCONNECTED[1:0]),
        .m_axi_arlen(NLW_inst_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_inst_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(NLW_inst_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(m_axi_arready),
        .m_axi_arregion(NLW_inst_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_inst_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(NLW_inst_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_inst_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_inst_m_axi_awid_UNCONNECTED[1:0]),
        .m_axi_awlen(NLW_inst_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_inst_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(NLW_inst_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(m_axi_awready),
        .m_axi_awregion(NLW_inst_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_inst_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid({1'b0,1'b0}),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid({1'b0,1'b0}),
        .m_axi_rlast(1'b1),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[1:0]),
        .m_axi_wlast(NLW_inst_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(1'b0),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(s_axi_arready),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,s_axi_arsize[1:0]}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(1'b0),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,s_axi_awsize[1:0]}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid({1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* C_AXI_ADDR_WIDTH = "12" *) (* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) 
(* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_DATA_WIDTH = "32" *) (* C_AXI_ID_WIDTH = "2" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_READ = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
(* C_AXI_SUPPORTS_WRITE = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_FAMILY = "artix7" *) 
(* C_IGNORE_ID = "0" *) (* C_M_AXI_PROTOCOL = "2" *) (* C_S_AXI_PROTOCOL = "0" *) 
(* C_TRANSLATION_MODE = "2" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) 
(* P_AXI4 = "0" *) (* P_AXILITE = "2" *) (* P_AXILITE_SIZE = "3'b010" *) 
(* P_CONVERSION = "2" *) (* P_DECERR = "2'b11" *) (* P_INCR = "2'b01" *) 
(* P_PROTECTION = "1" *) (* P_SLVERR = "2'b10" *) 
module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_axi_protocol_converter
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awregion,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
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
    s_axi_arregion,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awregion,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arregion,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [1:0]s_axi_awid;
  input [11:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awregion;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [1:0]s_axi_wid;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [1:0]s_axi_arid;
  input [11:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arregion;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [1:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [1:0]m_axi_awid;
  output [11:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [1:0]m_axi_wid;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [1:0]m_axi_arid;
  output [11:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [1:0]m_axi_rid;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [11:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [11:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [31:0]m_axi_rdata;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire [11:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [1:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [1:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [1:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [1:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[1] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[1] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_wdata[31:0] = s_axi_wdata;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[3:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = s_axi_wvalid;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_wready = m_axi_wready;
  GND GND
       (.G(\<const0> ));
  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s \gen_axilite.gen_b2s_conv.axilite_b2s 
       (.Q({s_axi_bid,s_axi_bresp}),
        .aclk(aclk),
        .aresetn(aresetn),
        .in({m_axi_rresp,m_axi_rdata}),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .\m_payload_i_reg[36] ({s_axi_rid,s_axi_rlast,s_axi_rresp,s_axi_rdata}),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize[1:0]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize[1:0]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid));
endmodule

module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s
   (s_axi_bvalid,
    s_axi_awready,
    s_axi_arready,
    m_axi_awprot,
    m_axi_arprot,
    Q,
    s_axi_rvalid,
    \m_payload_i_reg[36] ,
    m_axi_awvalid,
    m_axi_bready,
    m_axi_arvalid,
    m_axi_rready,
    m_axi_awaddr,
    m_axi_araddr,
    s_axi_bready,
    s_axi_awvalid,
    s_axi_arvalid,
    aclk,
    in,
    s_axi_awid,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awsize,
    s_axi_awprot,
    s_axi_awaddr,
    m_axi_bresp,
    s_axi_arid,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arsize,
    s_axi_arprot,
    s_axi_araddr,
    m_axi_arready,
    m_axi_awready,
    m_axi_bvalid,
    s_axi_rready,
    m_axi_rvalid,
    aresetn);
  output s_axi_bvalid;
  output s_axi_awready;
  output s_axi_arready;
  output [2:0]m_axi_awprot;
  output [2:0]m_axi_arprot;
  output [3:0]Q;
  output s_axi_rvalid;
  output [36:0]\m_payload_i_reg[36] ;
  output m_axi_awvalid;
  output m_axi_bready;
  output m_axi_arvalid;
  output m_axi_rready;
  output [11:0]m_axi_awaddr;
  output [11:0]m_axi_araddr;
  input s_axi_bready;
  input s_axi_awvalid;
  input s_axi_arvalid;
  input aclk;
  input [33:0]in;
  input [1:0]s_axi_awid;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awsize;
  input [2:0]s_axi_awprot;
  input [11:0]s_axi_awaddr;
  input [1:0]m_axi_bresp;
  input [1:0]s_axi_arid;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arsize;
  input [2:0]s_axi_arprot;
  input [11:0]s_axi_araddr;
  input m_axi_arready;
  input m_axi_awready;
  input m_axi_bvalid;
  input s_axi_rready;
  input m_axi_rvalid;
  input aresetn;

  wire [3:0]Q;
  wire \RD.ar_channel_0_n_1 ;
  wire \RD.ar_channel_0_n_10 ;
  wire \RD.ar_channel_0_n_11 ;
  wire \RD.ar_channel_0_n_12 ;
  wire \RD.ar_channel_0_n_13 ;
  wire \RD.ar_channel_0_n_14 ;
  wire \RD.ar_channel_0_n_15 ;
  wire \RD.ar_channel_0_n_16 ;
  wire \RD.ar_channel_0_n_17 ;
  wire \RD.ar_channel_0_n_18 ;
  wire \RD.ar_channel_0_n_19 ;
  wire \RD.ar_channel_0_n_20 ;
  wire \RD.ar_channel_0_n_21 ;
  wire \RD.ar_channel_0_n_22 ;
  wire \RD.ar_channel_0_n_23 ;
  wire \RD.ar_channel_0_n_24 ;
  wire \RD.ar_channel_0_n_25 ;
  wire \RD.ar_channel_0_n_26 ;
  wire \RD.ar_channel_0_n_27 ;
  wire \RD.ar_channel_0_n_28 ;
  wire \RD.ar_channel_0_n_29 ;
  wire \RD.ar_channel_0_n_30 ;
  wire \RD.ar_channel_0_n_32 ;
  wire \RD.ar_channel_0_n_39 ;
  wire \RD.ar_channel_0_n_47 ;
  wire \RD.ar_channel_0_n_48 ;
  wire \RD.ar_channel_0_n_49 ;
  wire \RD.ar_channel_0_n_5 ;
  wire \RD.ar_channel_0_n_50 ;
  wire \RD.ar_channel_0_n_6 ;
  wire \RD.ar_channel_0_n_7 ;
  wire \RD.ar_channel_0_n_8 ;
  wire \RD.ar_channel_0_n_9 ;
  wire \RD.r_channel_0_n_0 ;
  wire SI_REG_n_105;
  wire SI_REG_n_112;
  wire SI_REG_n_113;
  wire SI_REG_n_114;
  wire SI_REG_n_115;
  wire SI_REG_n_120;
  wire SI_REG_n_125;
  wire SI_REG_n_126;
  wire SI_REG_n_127;
  wire SI_REG_n_128;
  wire SI_REG_n_129;
  wire SI_REG_n_130;
  wire SI_REG_n_131;
  wire SI_REG_n_132;
  wire SI_REG_n_133;
  wire SI_REG_n_134;
  wire SI_REG_n_135;
  wire SI_REG_n_136;
  wire SI_REG_n_137;
  wire SI_REG_n_138;
  wire SI_REG_n_21;
  wire SI_REG_n_39;
  wire SI_REG_n_40;
  wire SI_REG_n_41;
  wire SI_REG_n_42;
  wire SI_REG_n_54;
  wire SI_REG_n_55;
  wire SI_REG_n_56;
  wire SI_REG_n_72;
  wire SI_REG_n_73;
  wire SI_REG_n_8;
  wire SI_REG_n_86;
  wire SI_REG_n_87;
  wire SI_REG_n_88;
  wire SI_REG_n_89;
  wire SI_REG_n_9;
  wire SI_REG_n_90;
  wire SI_REG_n_91;
  wire SI_REG_n_92;
  wire SI_REG_n_93;
  wire SI_REG_n_94;
  wire SI_REG_n_95;
  wire SI_REG_n_96;
  wire SI_REG_n_97;
  wire SI_REG_n_98;
  wire \WR.aw_channel_0_n_16 ;
  wire \WR.aw_channel_0_n_17 ;
  wire \WR.aw_channel_0_n_18 ;
  wire \WR.aw_channel_0_n_19 ;
  wire \WR.aw_channel_0_n_20 ;
  wire \WR.aw_channel_0_n_21 ;
  wire \WR.aw_channel_0_n_22 ;
  wire \WR.aw_channel_0_n_23 ;
  wire \WR.aw_channel_0_n_24 ;
  wire \WR.aw_channel_0_n_25 ;
  wire \WR.aw_channel_0_n_26 ;
  wire \WR.aw_channel_0_n_27 ;
  wire \WR.aw_channel_0_n_30 ;
  wire \WR.aw_channel_0_n_38 ;
  wire \WR.aw_channel_0_n_53 ;
  wire \WR.aw_channel_0_n_54 ;
  wire \WR.aw_channel_0_n_55 ;
  wire \WR.aw_channel_0_n_56 ;
  wire \WR.b_channel_0_n_2 ;
  wire aclk;
  wire \ar.ar_pipe/p_1_in ;
  wire \ar.ar_pipe/s_ready_i0 ;
  wire [1:0]\ar_cmd_fsm_0/state ;
  wire areset_d1;
  wire areset_d1_i_1_n_0;
  wire aresetn;
  wire \aw.aw_pipe/p_1_in ;
  wire [0:0]\aw_cmd_fsm_0/next_state__0 ;
  wire [1:0]\aw_cmd_fsm_0/state ;
  wire [11:0]axaddr_incr;
  wire [11:0]axaddr_wrap;
  wire [7:4]axlen;
  wire [1:0]axsize;
  wire [1:0]b_awid;
  wire [7:0]b_awlen;
  wire b_push;
  wire \cmd_translator_0/incr_cmd_0/sel_first ;
  wire \cmd_translator_0/incr_cmd_0/sel_first_4 ;
  wire \cmd_translator_0/incr_next_pending ;
  wire \cmd_translator_0/s_axburst_eq0 ;
  wire \cmd_translator_0/s_axburst_eq1 ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/axaddr_offset ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/axaddr_offset_0 ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/axaddr_offset_r ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/axaddr_offset_r_2 ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/wrap_second_len ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/wrap_second_len_1 ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/wrap_second_len_r ;
  wire [3:0]\cmd_translator_0/wrap_cmd_0/wrap_second_len_r_3 ;
  wire [33:0]in;
  wire [11:0]m_axi_araddr;
  wire [2:0]m_axi_arprot;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [11:0]m_axi_awaddr;
  wire [2:0]m_axi_awprot;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [36:0]\m_payload_i_reg[36] ;
  wire r_full;
  wire r_push;
  wire r_rlast;
  wire [1:0]s_arid;
  wire [1:0]s_arid_r;
  wire [1:0]s_awid;
  wire [7:4]s_awlen;
  wire [11:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [1:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire s_axi_arready;
  wire [1:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [1:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awprot;
  wire s_axi_awready;
  wire [1:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire sel_first;
  wire shandshake;
  wire [11:0]si_rs_araddr;
  wire [1:1]si_rs_arburst;
  wire [3:0]si_rs_arlen;
  wire si_rs_arvalid;
  wire [11:0]si_rs_awaddr;
  wire [1:1]si_rs_awburst;
  wire [3:0]si_rs_awlen;
  wire si_rs_awvalid;
  wire [1:0]si_rs_bid;
  wire si_rs_bready;
  wire [1:0]si_rs_bresp;
  wire si_rs_bvalid;
  wire [31:0]si_rs_rdata;
  wire [1:0]si_rs_rid;
  wire si_rs_rlast;
  wire si_rs_rready;
  wire [1:0]si_rs_rresp;
  wire [3:2]wrap_cnt;

  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_ar_channel \RD.ar_channel_0 
       (.D(\cmd_translator_0/wrap_cmd_0/wrap_second_len ),
        .E(\ar.ar_pipe/p_1_in ),
        .\FSM_sequential_state_reg[1] (\RD.ar_channel_0_n_5 ),
        .\FSM_sequential_state_reg[1]_0 (\RD.ar_channel_0_n_32 ),
        .O({SI_REG_n_94,SI_REG_n_95,SI_REG_n_96,SI_REG_n_97}),
        .Q(\ar_cmd_fsm_0/state ),
        .S({SI_REG_n_72,SI_REG_n_73}),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\axaddr_incr_reg[11] ({\RD.ar_channel_0_n_18 ,\RD.ar_channel_0_n_19 ,\RD.ar_channel_0_n_20 ,\RD.ar_channel_0_n_21 ,\RD.ar_channel_0_n_22 ,\RD.ar_channel_0_n_23 ,\RD.ar_channel_0_n_24 ,\RD.ar_channel_0_n_25 ,\RD.ar_channel_0_n_26 ,\RD.ar_channel_0_n_27 ,\RD.ar_channel_0_n_28 ,\RD.ar_channel_0_n_29 }),
        .\axaddr_incr_reg[3] ({SI_REG_n_41,SI_REG_n_42}),
        .\axaddr_incr_reg[3]_0 ({SI_REG_n_86,SI_REG_n_87,SI_REG_n_88,SI_REG_n_89}),
        .\axaddr_incr_reg[7] ({SI_REG_n_90,SI_REG_n_91,SI_REG_n_92,SI_REG_n_93}),
        .axaddr_offset(\cmd_translator_0/wrap_cmd_0/axaddr_offset ),
        .\axaddr_offset_r_reg[3] (\cmd_translator_0/wrap_cmd_0/axaddr_offset_r ),
        .\axaddr_wrap_reg[11] ({\RD.ar_channel_0_n_6 ,\RD.ar_channel_0_n_7 ,\RD.ar_channel_0_n_8 ,\RD.ar_channel_0_n_9 ,\RD.ar_channel_0_n_10 ,\RD.ar_channel_0_n_11 ,\RD.ar_channel_0_n_12 ,\RD.ar_channel_0_n_13 ,\RD.ar_channel_0_n_14 ,\RD.ar_channel_0_n_15 ,\RD.ar_channel_0_n_16 ,\RD.ar_channel_0_n_17 }),
        .incr_next_pending(\cmd_translator_0/incr_next_pending ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arvalid(m_axi_arvalid),
        .\m_payload_i_reg[3] ({\RD.ar_channel_0_n_47 ,\RD.ar_channel_0_n_48 ,\RD.ar_channel_0_n_49 ,\RD.ar_channel_0_n_50 }),
        .next_pending_r_reg(\RD.ar_channel_0_n_30 ),
        .next_pending_r_reg_0(SI_REG_n_112),
        .r_full(r_full),
        .r_push(r_push),
        .r_rlast(r_rlast),
        .\s_arid_r_reg[1]_0 (s_arid_r),
        .\s_arid_r_reg[1]_1 ({s_arid,axlen,si_rs_arlen,si_rs_arburst,SI_REG_n_54,SI_REG_n_55,SI_REG_n_56,si_rs_araddr}),
        .s_axburst_eq1_reg(SI_REG_n_113),
        .s_axi_arvalid(s_axi_arvalid),
        .s_ready_i0(\ar.ar_pipe/s_ready_i0 ),
        .s_ready_i_reg(s_axi_arready),
        .sel_first(\cmd_translator_0/incr_cmd_0/sel_first ),
        .sel_first_reg(\RD.ar_channel_0_n_1 ),
        .sel_first_reg_0(\RD.ar_channel_0_n_39 ),
        .si_rs_arvalid(si_rs_arvalid),
        .\wrap_boundary_axaddr_r_reg[6] ({SI_REG_n_132,SI_REG_n_133,SI_REG_n_134,SI_REG_n_135,SI_REG_n_136,SI_REG_n_137,SI_REG_n_138}),
        .\wrap_cnt_r_reg[1] (SI_REG_n_120),
        .\wrap_cnt_r_reg[3] ({SI_REG_n_114,SI_REG_n_115}),
        .\wrap_second_len_r_reg[3] (\cmd_translator_0/wrap_cmd_0/wrap_second_len_r ));
  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_r_channel \RD.r_channel_0 
       (.D(s_arid_r),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\cnt_read_reg[1] (\RD.r_channel_0_n_0 ),
        .in(in),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out({si_rs_rresp,si_rs_rdata}),
        .r_full(r_full),
        .r_push(r_push),
        .r_push_r_reg_0({si_rs_rid,si_rs_rlast}),
        .r_rlast(r_rlast),
        .si_rs_rready(si_rs_rready));
  axi_map_auto_pc_0_axi_register_slice_v2_1_29_axi_register_slice SI_REG
       (.D(wrap_cnt),
        .E(\aw.aw_pipe/p_1_in ),
        .O({SI_REG_n_94,SI_REG_n_95,SI_REG_n_96,SI_REG_n_97}),
        .Q({\WR.aw_channel_0_n_16 ,\WR.aw_channel_0_n_17 ,\WR.aw_channel_0_n_18 ,\WR.aw_channel_0_n_19 ,\WR.aw_channel_0_n_20 ,\WR.aw_channel_0_n_21 ,\WR.aw_channel_0_n_22 ,\WR.aw_channel_0_n_23 ,\WR.aw_channel_0_n_24 ,\WR.aw_channel_0_n_25 ,\WR.aw_channel_0_n_26 ,\WR.aw_channel_0_n_27 }),
        .S({SI_REG_n_8,SI_REG_n_9}),
        .aclk(aclk),
        .aresetn(aresetn),
        .axaddr_incr(axaddr_incr),
        .\axaddr_incr_reg[3] ({SI_REG_n_41,SI_REG_n_42}),
        .\axaddr_incr_reg[3]_0 ({\WR.aw_channel_0_n_53 ,\WR.aw_channel_0_n_54 ,\WR.aw_channel_0_n_55 ,\WR.aw_channel_0_n_56 }),
        .\axaddr_incr_reg[3]_1 ({\RD.ar_channel_0_n_47 ,\RD.ar_channel_0_n_48 ,\RD.ar_channel_0_n_49 ,\RD.ar_channel_0_n_50 }),
        .axaddr_offset(\cmd_translator_0/wrap_cmd_0/axaddr_offset_0 ),
        .axaddr_offset_0(\cmd_translator_0/wrap_cmd_0/axaddr_offset ),
        .\axaddr_offset_r_reg[0] (\aw_cmd_fsm_0/state ),
        .\axaddr_offset_r_reg[3] (\cmd_translator_0/wrap_cmd_0/axaddr_offset_r_2 ),
        .\axaddr_offset_r_reg[3]_0 (\ar_cmd_fsm_0/state ),
        .\axaddr_offset_r_reg[3]_1 (\cmd_translator_0/wrap_cmd_0/axaddr_offset_r ),
        .\axaddr_wrap_reg[3] ({SI_REG_n_39,SI_REG_n_40}),
        .\axaddr_wrap_reg[3]_0 ({SI_REG_n_72,SI_REG_n_73}),
        .b_push(b_push),
        .incr_next_pending(\cmd_translator_0/incr_next_pending ),
        .m_axi_araddr(m_axi_araddr),
        .\m_axi_araddr[11] ({\RD.ar_channel_0_n_18 ,\RD.ar_channel_0_n_19 ,\RD.ar_channel_0_n_20 ,\RD.ar_channel_0_n_21 ,\RD.ar_channel_0_n_22 ,\RD.ar_channel_0_n_23 ,\RD.ar_channel_0_n_24 ,\RD.ar_channel_0_n_25 ,\RD.ar_channel_0_n_26 ,\RD.ar_channel_0_n_27 ,\RD.ar_channel_0_n_28 ,\RD.ar_channel_0_n_29 }),
        .\m_axi_araddr[11]_0 ({\RD.ar_channel_0_n_6 ,\RD.ar_channel_0_n_7 ,\RD.ar_channel_0_n_8 ,\RD.ar_channel_0_n_9 ,\RD.ar_channel_0_n_10 ,\RD.ar_channel_0_n_11 ,\RD.ar_channel_0_n_12 ,\RD.ar_channel_0_n_13 ,\RD.ar_channel_0_n_14 ,\RD.ar_channel_0_n_15 ,\RD.ar_channel_0_n_16 ,\RD.ar_channel_0_n_17 }),
        .\m_axi_araddr[11]_1 (\RD.ar_channel_0_n_39 ),
        .\m_axi_araddr[11]_2 (\RD.ar_channel_0_n_1 ),
        .m_axi_awaddr(m_axi_awaddr),
        .\m_axi_awaddr[11] (axaddr_wrap),
        .\m_axi_awaddr[11]_0 (\WR.aw_channel_0_n_38 ),
        .\m_payload_i_reg[0] (\ar.ar_pipe/p_1_in ),
        .\m_payload_i_reg[24] (SI_REG_n_105),
        .\m_payload_i_reg[24]_0 (SI_REG_n_120),
        .\m_payload_i_reg[27] (SI_REG_n_98),
        .\m_payload_i_reg[27]_0 (SI_REG_n_112),
        .\m_payload_i_reg[27]_1 ({SI_REG_n_125,SI_REG_n_126,SI_REG_n_127,SI_REG_n_128,SI_REG_n_129,SI_REG_n_130,SI_REG_n_131}),
        .\m_payload_i_reg[27]_2 ({SI_REG_n_132,SI_REG_n_133,SI_REG_n_134,SI_REG_n_135,SI_REG_n_136,SI_REG_n_137,SI_REG_n_138}),
        .\m_payload_i_reg[29] (SI_REG_n_113),
        .\m_payload_i_reg[34] ({s_awid,s_awlen,si_rs_awlen,si_rs_awburst,SI_REG_n_21,axsize,m_axi_awprot,si_rs_awaddr}),
        .\m_payload_i_reg[34]_0 ({s_arid,axlen,si_rs_arlen,si_rs_arburst,SI_REG_n_54,SI_REG_n_55,SI_REG_n_56,m_axi_arprot,si_rs_araddr}),
        .\m_payload_i_reg[36] (\m_payload_i_reg[36] ),
        .\m_payload_i_reg[3] ({SI_REG_n_86,SI_REG_n_87,SI_REG_n_88,SI_REG_n_89}),
        .\m_payload_i_reg[3]_0 (Q),
        .\m_payload_i_reg[7] ({SI_REG_n_90,SI_REG_n_91,SI_REG_n_92,SI_REG_n_93}),
        .m_valid_i_reg(s_axi_bvalid),
        .m_valid_i_reg_0(s_axi_rvalid),
        .m_valid_i_reg_1(\RD.ar_channel_0_n_5 ),
        .m_valid_i_reg_2(\RD.r_channel_0_n_0 ),
        .next_pending_r_reg(\RD.ar_channel_0_n_30 ),
        .out(si_rs_bid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rready(s_axi_rready),
        .s_ready_i0(\ar.ar_pipe/s_ready_i0 ),
        .s_ready_i_reg(s_axi_awready),
        .s_ready_i_reg_0(s_axi_arready),
        .sel_first(sel_first),
        .sel_first_1(\cmd_translator_0/incr_cmd_0/sel_first_4 ),
        .sel_first_2(\cmd_translator_0/incr_cmd_0/sel_first ),
        .shandshake(shandshake),
        .si_rs_arvalid(si_rs_arvalid),
        .si_rs_awvalid(si_rs_awvalid),
        .si_rs_bready(si_rs_bready),
        .si_rs_bvalid(si_rs_bvalid),
        .si_rs_rready(si_rs_rready),
        .\skid_buffer_reg[1] (si_rs_bresp),
        .\skid_buffer_reg[33] ({si_rs_rresp,si_rs_rdata}),
        .\skid_buffer_reg[36] ({si_rs_rid,si_rs_rlast}),
        .\wrap_second_len_r_reg[2] ({SI_REG_n_114,SI_REG_n_115}),
        .\wrap_second_len_r_reg[2]_0 (\WR.aw_channel_0_n_30 ),
        .\wrap_second_len_r_reg[3] (\cmd_translator_0/wrap_cmd_0/wrap_second_len_1 ),
        .\wrap_second_len_r_reg[3]_0 (\cmd_translator_0/wrap_cmd_0/wrap_second_len ),
        .\wrap_second_len_r_reg[3]_1 (\cmd_translator_0/wrap_cmd_0/wrap_second_len_r_3 ),
        .\wrap_second_len_r_reg[3]_2 (\RD.ar_channel_0_n_32 ),
        .\wrap_second_len_r_reg[3]_3 (\cmd_translator_0/wrap_cmd_0/wrap_second_len_r ));
  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_aw_channel \WR.aw_channel_0 
       (.D(wrap_cnt),
        .E(\aw.aw_pipe/p_1_in ),
        .\FSM_sequential_state_reg[0] (\aw_cmd_fsm_0/next_state__0 ),
        .\FSM_sequential_state_reg[1] (\aw_cmd_fsm_0/state ),
        .\FSM_sequential_state_reg[1]_0 (\WR.aw_channel_0_n_30 ),
        .Q(axaddr_wrap),
        .S({SI_REG_n_8,SI_REG_n_9}),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .axaddr_incr(axaddr_incr),
        .\axaddr_incr_reg[11] ({\WR.aw_channel_0_n_16 ,\WR.aw_channel_0_n_17 ,\WR.aw_channel_0_n_18 ,\WR.aw_channel_0_n_19 ,\WR.aw_channel_0_n_20 ,\WR.aw_channel_0_n_21 ,\WR.aw_channel_0_n_22 ,\WR.aw_channel_0_n_23 ,\WR.aw_channel_0_n_24 ,\WR.aw_channel_0_n_25 ,\WR.aw_channel_0_n_26 ,\WR.aw_channel_0_n_27 }),
        .\axaddr_offset_r_reg[3] (\cmd_translator_0/wrap_cmd_0/axaddr_offset_r_2 ),
        .\axaddr_offset_r_reg[3]_0 (\cmd_translator_0/wrap_cmd_0/axaddr_offset_0 ),
        .\axaddr_wrap_reg[0] (\WR.b_channel_0_n_2 ),
        .\axaddr_wrap_reg[3] ({SI_REG_n_39,SI_REG_n_40}),
        .b_push(b_push),
        .in({b_awid,b_awlen}),
        .m_axi_awready(m_axi_awready),
        .m_axi_awvalid(m_axi_awvalid),
        .\m_payload_i_reg[3] ({\WR.aw_channel_0_n_53 ,\WR.aw_channel_0_n_54 ,\WR.aw_channel_0_n_55 ,\WR.aw_channel_0_n_56 }),
        .next_pending_r_reg(SI_REG_n_98),
        .\s_awid_r_reg[1]_0 ({s_awid,s_awlen,si_rs_awlen,si_rs_awburst,SI_REG_n_21,axsize,si_rs_awaddr}),
        .s_axburst_eq0(\cmd_translator_0/s_axburst_eq0 ),
        .s_axburst_eq1(\cmd_translator_0/s_axburst_eq1 ),
        .sel_first(sel_first),
        .sel_first_0(\cmd_translator_0/incr_cmd_0/sel_first_4 ),
        .sel_first_reg(\WR.aw_channel_0_n_38 ),
        .si_rs_awvalid(si_rs_awvalid),
        .\wrap_boundary_axaddr_r_reg[6] ({SI_REG_n_125,SI_REG_n_126,SI_REG_n_127,SI_REG_n_128,SI_REG_n_129,SI_REG_n_130,SI_REG_n_131}),
        .\wrap_cnt_r_reg[1] (SI_REG_n_105),
        .\wrap_second_len_r_reg[3] (\cmd_translator_0/wrap_cmd_0/wrap_second_len_r_3 ),
        .\wrap_second_len_r_reg[3]_0 (\cmd_translator_0/wrap_cmd_0/wrap_second_len_1 ));
  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_b_channel \WR.b_channel_0 
       (.\FSM_sequential_state_reg[0] (\aw_cmd_fsm_0/next_state__0 ),
        .\FSM_sequential_state_reg[0]_0 (\aw_cmd_fsm_0/state ),
        .\FSM_sequential_state_reg[0]_1 (si_rs_awburst),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .b_push(b_push),
        .\cnt_read_reg[0] (\WR.b_channel_0_n_2 ),
        .in({b_awid,b_awlen}),
        .m_axi_awready(m_axi_awready),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_bvalid(m_axi_bvalid),
        .out(si_rs_bid),
        .s_axburst_eq0(\cmd_translator_0/s_axburst_eq0 ),
        .s_axburst_eq1(\cmd_translator_0/s_axburst_eq1 ),
        .\s_bresp_acc_reg[1]_0 (si_rs_bresp),
        .shandshake(shandshake),
        .si_rs_bready(si_rs_bready),
        .si_rs_bvalid(si_rs_bvalid));
  LUT1 #(
    .INIT(2'h1)) 
    areset_d1_i_1
       (.I0(aresetn),
        .O(areset_d1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    areset_d1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(areset_d1_i_1_n_0),
        .Q(areset_d1),
        .R(1'b0));
endmodule

module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_ar_channel
   (sel_first,
    sel_first_reg,
    s_ready_i0,
    Q,
    \FSM_sequential_state_reg[1] ,
    \axaddr_wrap_reg[11] ,
    \axaddr_incr_reg[11] ,
    next_pending_r_reg,
    r_push,
    \FSM_sequential_state_reg[1]_0 ,
    m_axi_arvalid,
    r_rlast,
    \wrap_second_len_r_reg[3] ,
    sel_first_reg_0,
    E,
    \axaddr_offset_r_reg[3] ,
    \s_arid_r_reg[1]_0 ,
    \m_payload_i_reg[3] ,
    incr_next_pending,
    aclk,
    si_rs_arvalid,
    s_axi_arvalid,
    s_ready_i_reg,
    S,
    \axaddr_incr_reg[3] ,
    areset_d1,
    m_axi_arready,
    s_axburst_eq1_reg,
    \s_arid_r_reg[1]_1 ,
    next_pending_r_reg_0,
    r_full,
    axaddr_offset,
    \wrap_cnt_r_reg[1] ,
    O,
    \axaddr_incr_reg[7] ,
    \axaddr_incr_reg[3]_0 ,
    D,
    \wrap_cnt_r_reg[3] ,
    \wrap_boundary_axaddr_r_reg[6] );
  output sel_first;
  output sel_first_reg;
  output s_ready_i0;
  output [1:0]Q;
  output \FSM_sequential_state_reg[1] ;
  output [11:0]\axaddr_wrap_reg[11] ;
  output [11:0]\axaddr_incr_reg[11] ;
  output next_pending_r_reg;
  output r_push;
  output \FSM_sequential_state_reg[1]_0 ;
  output m_axi_arvalid;
  output r_rlast;
  output [3:0]\wrap_second_len_r_reg[3] ;
  output sel_first_reg_0;
  output [0:0]E;
  output [3:0]\axaddr_offset_r_reg[3] ;
  output [1:0]\s_arid_r_reg[1]_0 ;
  output [3:0]\m_payload_i_reg[3] ;
  input incr_next_pending;
  input aclk;
  input si_rs_arvalid;
  input s_axi_arvalid;
  input s_ready_i_reg;
  input [1:0]S;
  input [1:0]\axaddr_incr_reg[3] ;
  input areset_d1;
  input m_axi_arready;
  input s_axburst_eq1_reg;
  input [25:0]\s_arid_r_reg[1]_1 ;
  input next_pending_r_reg_0;
  input r_full;
  input [3:0]axaddr_offset;
  input \wrap_cnt_r_reg[1] ;
  input [3:0]O;
  input [3:0]\axaddr_incr_reg[7] ;
  input [3:0]\axaddr_incr_reg[3]_0 ;
  input [3:0]D;
  input [1:0]\wrap_cnt_r_reg[3] ;
  input [6:0]\wrap_boundary_axaddr_r_reg[6] ;

  wire [3:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [3:0]O;
  wire [1:0]Q;
  wire [1:0]S;
  wire aclk;
  wire ar_cmd_fsm_0_n_10;
  wire ar_cmd_fsm_0_n_11;
  wire ar_cmd_fsm_0_n_12;
  wire ar_cmd_fsm_0_n_13;
  wire ar_cmd_fsm_0_n_14;
  wire ar_cmd_fsm_0_n_15;
  wire ar_cmd_fsm_0_n_16;
  wire ar_cmd_fsm_0_n_17;
  wire ar_cmd_fsm_0_n_18;
  wire ar_cmd_fsm_0_n_19;
  wire ar_cmd_fsm_0_n_20;
  wire ar_cmd_fsm_0_n_23;
  wire ar_cmd_fsm_0_n_4;
  wire ar_cmd_fsm_0_n_5;
  wire ar_cmd_fsm_0_n_6;
  wire ar_cmd_fsm_0_n_7;
  wire ar_cmd_fsm_0_n_9;
  wire areset_d1;
  wire [11:0]\axaddr_incr_reg[11] ;
  wire [1:0]\axaddr_incr_reg[3] ;
  wire [3:0]\axaddr_incr_reg[3]_0 ;
  wire [3:0]\axaddr_incr_reg[7] ;
  wire [3:0]axaddr_offset;
  wire [3:0]\axaddr_offset_r_reg[3] ;
  wire [11:0]\axaddr_wrap_reg[11] ;
  wire cmd_translator_0_n_0;
  wire cmd_translator_0_n_19;
  wire cmd_translator_0_n_20;
  wire cmd_translator_0_n_21;
  wire cmd_translator_0_n_22;
  wire cmd_translator_0_n_23;
  wire cmd_translator_0_n_24;
  wire cmd_translator_0_n_25;
  wire cmd_translator_0_n_26;
  wire cmd_translator_0_n_3;
  wire cmd_translator_0_n_4;
  wire cmd_translator_0_n_41;
  wire cmd_translator_0_n_42;
  wire cmd_translator_0_n_5;
  wire cmd_translator_0_n_52;
  wire cmd_translator_0_n_53;
  wire cmd_translator_0_n_54;
  wire cmd_translator_0_n_55;
  wire cmd_translator_0_n_56;
  wire cmd_translator_0_n_57;
  wire cmd_translator_0_n_58;
  wire cmd_translator_0_n_59;
  wire cmd_translator_0_n_6;
  wire cmd_translator_0_n_60;
  wire cmd_translator_0_n_61;
  wire cmd_translator_0_n_62;
  wire cmd_translator_0_n_63;
  wire incr_next_pending;
  wire m_axi_arready;
  wire m_axi_arvalid;
  wire [3:0]\m_payload_i_reg[3] ;
  wire next_pending_r_reg;
  wire next_pending_r_reg_0;
  wire r_full;
  wire r_push;
  wire r_rlast;
  wire [1:0]\s_arid_r_reg[1]_0 ;
  wire [25:0]\s_arid_r_reg[1]_1 ;
  wire s_axburst_eq1_reg;
  wire s_axi_arvalid;
  wire s_ready_i0;
  wire s_ready_i_reg;
  wire sel_first;
  wire sel_first_i;
  wire sel_first_reg;
  wire sel_first_reg_0;
  wire si_rs_arvalid;
  wire [6:0]\wrap_boundary_axaddr_r_reg[6] ;
  wire \wrap_cnt_r_reg[1] ;
  wire [1:0]\wrap_cnt_r_reg[3] ;
  wire [3:0]\wrap_second_len_r_reg[3] ;

  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_rd_cmd_fsm ar_cmd_fsm_0
       (.D({ar_cmd_fsm_0_n_9,ar_cmd_fsm_0_n_10,ar_cmd_fsm_0_n_11,ar_cmd_fsm_0_n_12,ar_cmd_fsm_0_n_13,ar_cmd_fsm_0_n_14,ar_cmd_fsm_0_n_15,ar_cmd_fsm_0_n_16,ar_cmd_fsm_0_n_17,ar_cmd_fsm_0_n_18,ar_cmd_fsm_0_n_19,ar_cmd_fsm_0_n_20}),
        .E(ar_cmd_fsm_0_n_6),
        .\FSM_sequential_state_reg[0]_0 (cmd_translator_0_n_41),
        .\FSM_sequential_state_reg[1]_0 (\FSM_sequential_state_reg[1] ),
        .\FSM_sequential_state_reg[1]_1 (r_push),
        .\FSM_sequential_state_reg[1]_2 (ar_cmd_fsm_0_n_23),
        .\FSM_sequential_state_reg[1]_3 (\FSM_sequential_state_reg[1]_0 ),
        .\FSM_sequential_state_reg[1]_4 (E),
        .O({cmd_translator_0_n_3,cmd_translator_0_n_4,cmd_translator_0_n_5,cmd_translator_0_n_6}),
        .Q(Q),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .areset_d1_reg(ar_cmd_fsm_0_n_4),
        .areset_d1_reg_0(ar_cmd_fsm_0_n_5),
        .\axaddr_incr_reg[0] (sel_first),
        .axaddr_offset(axaddr_offset[0]),
        .\axaddr_wrap_reg[11] (\s_arid_r_reg[1]_1 [11:0]),
        .\axaddr_wrap_reg[11]_0 ({cmd_translator_0_n_52,cmd_translator_0_n_53,cmd_translator_0_n_54,cmd_translator_0_n_55,cmd_translator_0_n_56,cmd_translator_0_n_57,cmd_translator_0_n_58,cmd_translator_0_n_59,cmd_translator_0_n_60,cmd_translator_0_n_61,cmd_translator_0_n_62,cmd_translator_0_n_63}),
        .\axaddr_wrap_reg[11]_1 ({cmd_translator_0_n_23,cmd_translator_0_n_24,cmd_translator_0_n_25,cmd_translator_0_n_26}),
        .\axaddr_wrap_reg[11]_2 (cmd_translator_0_n_42),
        .\axaddr_wrap_reg[7] ({cmd_translator_0_n_19,cmd_translator_0_n_20,cmd_translator_0_n_21,cmd_translator_0_n_22}),
        .m_axi_arready(m_axi_arready),
        .m_axi_arready_0(ar_cmd_fsm_0_n_7),
        .m_axi_arvalid(m_axi_arvalid),
        .r_full(r_full),
        .s_axi_arvalid(s_axi_arvalid),
        .s_ready_i0(s_ready_i0),
        .s_ready_i_reg(s_ready_i_reg),
        .sel_first_i(sel_first_i),
        .sel_first_reg(sel_first_reg),
        .sel_first_reg_0(cmd_translator_0_n_0),
        .si_rs_arvalid(si_rs_arvalid),
        .\wrap_cnt_r_reg[0] (\wrap_second_len_r_reg[3] [0]),
        .\wrap_cnt_r_reg[0]_0 (\wrap_cnt_r_reg[1] ));
  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_cmd_translator_1 cmd_translator_0
       (.D(D),
        .E(\FSM_sequential_state_reg[1]_0 ),
        .O({cmd_translator_0_n_3,cmd_translator_0_n_4,cmd_translator_0_n_5,cmd_translator_0_n_6}),
        .Q(Q),
        .S(S),
        .aclk(aclk),
        .\axaddr_incr_reg[0] (ar_cmd_fsm_0_n_6),
        .\axaddr_incr_reg[11] (\axaddr_incr_reg[11] ),
        .\axaddr_incr_reg[11]_0 (O),
        .\axaddr_incr_reg[3] (\axaddr_incr_reg[3] ),
        .\axaddr_incr_reg[3]_0 (\axaddr_incr_reg[3]_0 ),
        .\axaddr_incr_reg[7] (\axaddr_incr_reg[7] ),
        .axaddr_offset(axaddr_offset),
        .\axaddr_offset_r_reg[3] (\axaddr_offset_r_reg[3] ),
        .\axaddr_wrap_reg[0] (ar_cmd_fsm_0_n_7),
        .\axaddr_wrap_reg[11] (\axaddr_wrap_reg[11] ),
        .\axaddr_wrap_reg[11]_0 ({cmd_translator_0_n_23,cmd_translator_0_n_24,cmd_translator_0_n_25,cmd_translator_0_n_26}),
        .\axaddr_wrap_reg[11]_1 ({ar_cmd_fsm_0_n_9,ar_cmd_fsm_0_n_10,ar_cmd_fsm_0_n_11,ar_cmd_fsm_0_n_12,ar_cmd_fsm_0_n_13,ar_cmd_fsm_0_n_14,ar_cmd_fsm_0_n_15,ar_cmd_fsm_0_n_16,ar_cmd_fsm_0_n_17,ar_cmd_fsm_0_n_18,ar_cmd_fsm_0_n_19,ar_cmd_fsm_0_n_20}),
        .\axaddr_wrap_reg[7] ({cmd_translator_0_n_19,cmd_translator_0_n_20,cmd_translator_0_n_21,cmd_translator_0_n_22}),
        .\axlen_cnt_reg[4] (cmd_translator_0_n_42),
        .\axlen_cnt_reg[7] ({\s_arid_r_reg[1]_1 [23:7],\s_arid_r_reg[1]_1 [3:0]}),
        .incr_next_pending(incr_next_pending),
        .m_axi_arready(m_axi_arready),
        .\m_payload_i_reg[3] (\m_payload_i_reg[3] ),
        .next_pending_r_reg(next_pending_r_reg),
        .next_pending_r_reg_0(next_pending_r_reg_0),
        .r_push(r_push),
        .r_rlast(r_rlast),
        .s_axburst_eq1_reg_0(cmd_translator_0_n_41),
        .s_axburst_eq1_reg_1(s_axburst_eq1_reg),
        .sel_first_i(sel_first_i),
        .sel_first_reg_0(cmd_translator_0_n_0),
        .sel_first_reg_1(sel_first),
        .sel_first_reg_2(sel_first_reg),
        .sel_first_reg_3(sel_first_reg_0),
        .sel_first_reg_4(ar_cmd_fsm_0_n_4),
        .sel_first_reg_5(ar_cmd_fsm_0_n_5),
        .si_rs_arvalid(si_rs_arvalid),
        .\wrap_boundary_axaddr_r_reg[11] ({cmd_translator_0_n_52,cmd_translator_0_n_53,cmd_translator_0_n_54,cmd_translator_0_n_55,cmd_translator_0_n_56,cmd_translator_0_n_57,cmd_translator_0_n_58,cmd_translator_0_n_59,cmd_translator_0_n_60,cmd_translator_0_n_61,cmd_translator_0_n_62,cmd_translator_0_n_63}),
        .\wrap_boundary_axaddr_r_reg[6] (\wrap_boundary_axaddr_r_reg[6] ),
        .\wrap_cnt_r_reg[1] (\wrap_cnt_r_reg[1] ),
        .\wrap_cnt_r_reg[3] ({\wrap_cnt_r_reg[3] ,ar_cmd_fsm_0_n_23}),
        .\wrap_second_len_r_reg[3] (\wrap_second_len_r_reg[3] ));
  FDRE \s_arid_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arid_r_reg[1]_1 [24]),
        .Q(\s_arid_r_reg[1]_0 [0]),
        .R(1'b0));
  FDRE \s_arid_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_arid_r_reg[1]_1 [25]),
        .Q(\s_arid_r_reg[1]_0 [1]),
        .R(1'b0));
endmodule

module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_aw_channel
   (s_axburst_eq0,
    s_axburst_eq1,
    sel_first_0,
    sel_first,
    Q,
    \axaddr_incr_reg[11] ,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    E,
    b_push,
    \wrap_second_len_r_reg[3] ,
    m_axi_awvalid,
    sel_first_reg,
    \axaddr_offset_r_reg[3] ,
    in,
    \m_payload_i_reg[3] ,
    aclk,
    \s_awid_r_reg[1]_0 ,
    \axaddr_wrap_reg[3] ,
    S,
    si_rs_awvalid,
    areset_d1,
    next_pending_r_reg,
    m_axi_awready,
    \axaddr_wrap_reg[0] ,
    D,
    \axaddr_offset_r_reg[3]_0 ,
    \wrap_cnt_r_reg[1] ,
    axaddr_incr,
    \FSM_sequential_state_reg[0] ,
    \wrap_second_len_r_reg[3]_0 ,
    \wrap_boundary_axaddr_r_reg[6] );
  output s_axburst_eq0;
  output s_axburst_eq1;
  output sel_first_0;
  output sel_first;
  output [11:0]Q;
  output [11:0]\axaddr_incr_reg[11] ;
  output [1:0]\FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[1]_0 ;
  output [0:0]E;
  output b_push;
  output [3:0]\wrap_second_len_r_reg[3] ;
  output m_axi_awvalid;
  output sel_first_reg;
  output [3:0]\axaddr_offset_r_reg[3] ;
  output [9:0]in;
  output [3:0]\m_payload_i_reg[3] ;
  input aclk;
  input [25:0]\s_awid_r_reg[1]_0 ;
  input [1:0]\axaddr_wrap_reg[3] ;
  input [1:0]S;
  input si_rs_awvalid;
  input areset_d1;
  input next_pending_r_reg;
  input m_axi_awready;
  input \axaddr_wrap_reg[0] ;
  input [1:0]D;
  input [3:0]\axaddr_offset_r_reg[3]_0 ;
  input \wrap_cnt_r_reg[1] ;
  input [11:0]axaddr_incr;
  input [0:0]\FSM_sequential_state_reg[0] ;
  input [3:0]\wrap_second_len_r_reg[3]_0 ;
  input [6:0]\wrap_boundary_axaddr_r_reg[6] ;

  wire [1:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg[0] ;
  wire [1:0]\FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [11:0]Q;
  wire [1:0]S;
  wire aclk;
  wire areset_d1;
  wire aw_cmd_fsm_0_n_0;
  wire aw_cmd_fsm_0_n_10;
  wire aw_cmd_fsm_0_n_13;
  wire aw_cmd_fsm_0_n_4;
  wire aw_cmd_fsm_0_n_5;
  wire aw_cmd_fsm_0_n_7;
  wire [11:0]axaddr_incr;
  wire [11:0]\axaddr_incr_reg[11] ;
  wire [3:0]\axaddr_offset_r_reg[3] ;
  wire [3:0]\axaddr_offset_r_reg[3]_0 ;
  wire \axaddr_wrap_reg[0] ;
  wire [1:0]\axaddr_wrap_reg[3] ;
  wire b_push;
  wire cmd_translator_0_n_2;
  wire cmd_translator_0_n_31;
  wire cmd_translator_0_n_32;
  wire cmd_translator_0_n_33;
  wire cmd_translator_0_n_34;
  wire [9:0]in;
  wire \incr_cmd_0/next_pending_r ;
  wire incr_next_pending;
  wire m_axi_awready;
  wire m_axi_awvalid;
  wire [3:0]\m_payload_i_reg[3] ;
  wire next;
  wire next_pending_r_reg;
  wire [25:0]\s_awid_r_reg[1]_0 ;
  wire s_axburst_eq0;
  wire s_axburst_eq1;
  wire sel_first;
  wire sel_first_0;
  wire sel_first_i;
  wire sel_first_reg;
  wire si_rs_awvalid;
  wire [6:0]\wrap_boundary_axaddr_r_reg[6] ;
  wire [0:0]wrap_cnt;
  wire \wrap_cnt_r_reg[1] ;
  wire wrap_next_pending;
  wire [3:0]\wrap_second_len_r_reg[3] ;
  wire [3:0]\wrap_second_len_r_reg[3]_0 ;

  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_wr_cmd_fsm aw_cmd_fsm_0
       (.D(aw_cmd_fsm_0_n_13),
        .E(\FSM_sequential_state_reg[1]_0 ),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[1]_0 (aw_cmd_fsm_0_n_0),
        .\FSM_sequential_state_reg[1]_1 (aw_cmd_fsm_0_n_4),
        .\FSM_sequential_state_reg[1]_2 (wrap_cnt),
        .Q(\FSM_sequential_state_reg[1] ),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\axaddr_wrap_reg[0] (cmd_translator_0_n_34),
        .\axaddr_wrap_reg[0]_0 (\axaddr_wrap_reg[0] ),
        .\axlen_cnt_reg[0] (cmd_translator_0_n_32),
        .\axlen_cnt_reg[0]_0 (cmd_translator_0_n_31),
        .b_push(b_push),
        .incr_next_pending(incr_next_pending),
        .m_axi_awready(m_axi_awready),
        .m_axi_awready_0(aw_cmd_fsm_0_n_10),
        .m_axi_awvalid(m_axi_awvalid),
        .\m_payload_i_reg[19] (aw_cmd_fsm_0_n_5),
        .\m_payload_i_reg[19]_0 (aw_cmd_fsm_0_n_7),
        .m_valid_i_reg(E),
        .next(next),
        .next_pending_r(\incr_cmd_0/next_pending_r ),
        .next_pending_r_reg({\s_awid_r_reg[1]_0 [23:20],\s_awid_r_reg[1]_0 [16:15]}),
        .next_pending_r_reg_0(cmd_translator_0_n_33),
        .next_pending_r_reg_1(next_pending_r_reg),
        .sel_first(sel_first),
        .sel_first_i(sel_first_i),
        .sel_first_reg(sel_first_0),
        .sel_first_reg_0(cmd_translator_0_n_2),
        .si_rs_awvalid(si_rs_awvalid),
        .\wrap_cnt_r_reg[0] (\axaddr_offset_r_reg[3]_0 [0]),
        .\wrap_cnt_r_reg[0]_0 (\wrap_second_len_r_reg[3] [0]),
        .\wrap_cnt_r_reg[0]_1 (\wrap_cnt_r_reg[1] ),
        .wrap_next_pending(wrap_next_pending));
  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_cmd_translator cmd_translator_0
       (.D({D,wrap_cnt}),
        .E(\FSM_sequential_state_reg[1]_0 ),
        .Q(Q),
        .S(S),
        .aclk(aclk),
        .axaddr_incr(axaddr_incr),
        .\axaddr_incr_reg[11] (\axaddr_incr_reg[11] ),
        .\axaddr_offset_r_reg[3] (\axaddr_offset_r_reg[3] ),
        .\axaddr_offset_r_reg[3]_0 (\axaddr_offset_r_reg[3]_0 ),
        .\axaddr_wrap_reg[0] (aw_cmd_fsm_0_n_10),
        .\axaddr_wrap_reg[3] (\axaddr_wrap_reg[3] ),
        .\axlen_cnt_reg[0] (cmd_translator_0_n_32),
        .\axlen_cnt_reg[0]_0 (\FSM_sequential_state_reg[1] ),
        .\axlen_cnt_reg[0]_1 (aw_cmd_fsm_0_n_13),
        .\axlen_cnt_reg[2] (cmd_translator_0_n_33),
        .\axlen_cnt_reg[3] (cmd_translator_0_n_31),
        .\axlen_cnt_reg[7] (\s_awid_r_reg[1]_0 [23:0]),
        .incr_next_pending(incr_next_pending),
        .\m_payload_i_reg[3] (\m_payload_i_reg[3] ),
        .next(next),
        .next_pending_r(\incr_cmd_0/next_pending_r ),
        .next_pending_r_reg(next_pending_r_reg),
        .s_axburst_eq0(s_axburst_eq0),
        .s_axburst_eq0_reg_0(aw_cmd_fsm_0_n_5),
        .s_axburst_eq1(s_axburst_eq1),
        .s_axburst_eq1_reg_0(cmd_translator_0_n_34),
        .s_axburst_eq1_reg_1(aw_cmd_fsm_0_n_7),
        .sel_first(sel_first),
        .sel_first_i(sel_first_i),
        .sel_first_reg_0(cmd_translator_0_n_2),
        .sel_first_reg_1(sel_first_0),
        .sel_first_reg_2(sel_first_reg),
        .sel_first_reg_3(aw_cmd_fsm_0_n_0),
        .sel_first_reg_4(aw_cmd_fsm_0_n_4),
        .si_rs_awvalid(si_rs_awvalid),
        .\wrap_boundary_axaddr_r_reg[6] (\wrap_boundary_axaddr_r_reg[6] ),
        .\wrap_cnt_r_reg[1] (\wrap_cnt_r_reg[1] ),
        .wrap_next_pending(wrap_next_pending),
        .\wrap_second_len_r_reg[3] (\wrap_second_len_r_reg[3] ),
        .\wrap_second_len_r_reg[3]_0 (\wrap_second_len_r_reg[3]_0 ));
  FDRE \s_awid_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[1]_0 [24]),
        .Q(in[8]),
        .R(1'b0));
  FDRE \s_awid_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[1]_0 [25]),
        .Q(in[9]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[1]_0 [16]),
        .Q(in[0]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[1]_0 [17]),
        .Q(in[1]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[1]_0 [18]),
        .Q(in[2]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[1]_0 [19]),
        .Q(in[3]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[4] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[1]_0 [20]),
        .Q(in[4]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[5] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[1]_0 [21]),
        .Q(in[5]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[6] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[1]_0 [22]),
        .Q(in[6]),
        .R(1'b0));
  FDRE \s_awlen_r_reg[7] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_awid_r_reg[1]_0 [23]),
        .Q(in[7]),
        .R(1'b0));
endmodule

module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_b_channel
   (si_rs_bvalid,
    \FSM_sequential_state_reg[0] ,
    \cnt_read_reg[0] ,
    m_axi_bready,
    out,
    \s_bresp_acc_reg[1]_0 ,
    areset_d1,
    shandshake,
    aclk,
    \FSM_sequential_state_reg[0]_0 ,
    s_axburst_eq0,
    \FSM_sequential_state_reg[0]_1 ,
    s_axburst_eq1,
    m_axi_awready,
    si_rs_bready,
    m_axi_bvalid,
    b_push,
    in,
    m_axi_bresp);
  output si_rs_bvalid;
  output [0:0]\FSM_sequential_state_reg[0] ;
  output \cnt_read_reg[0] ;
  output m_axi_bready;
  output [1:0]out;
  output [1:0]\s_bresp_acc_reg[1]_0 ;
  input areset_d1;
  input shandshake;
  input aclk;
  input [1:0]\FSM_sequential_state_reg[0]_0 ;
  input s_axburst_eq0;
  input [0:0]\FSM_sequential_state_reg[0]_1 ;
  input s_axburst_eq1;
  input m_axi_awready;
  input si_rs_bready;
  input m_axi_bvalid;
  input b_push;
  input [9:0]in;
  input [1:0]m_axi_bresp;

  wire [0:0]\FSM_sequential_state_reg[0] ;
  wire [1:0]\FSM_sequential_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_state_reg[0]_1 ;
  wire aclk;
  wire areset_d1;
  wire b_push;
  wire bid_fifo_0_n_4;
  wire \bresp_cnt[7]_i_5_n_0 ;
  wire [7:0]bresp_cnt_reg;
  wire bresp_fifo_0_n_0;
  wire bresp_push;
  wire \cnt_read_reg[0] ;
  wire [9:0]in;
  wire m_axi_awready;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire mhandshake;
  wire mhandshake_r;
  wire [1:0]out;
  wire [7:0]p_0_in;
  wire s_axburst_eq0;
  wire s_axburst_eq1;
  wire s_bresp_acc0;
  wire \s_bresp_acc[0]_i_1_n_0 ;
  wire \s_bresp_acc[1]_i_1_n_0 ;
  wire [1:0]\s_bresp_acc_reg[1]_0 ;
  wire \s_bresp_acc_reg_n_0_[0] ;
  wire \s_bresp_acc_reg_n_0_[1] ;
  wire shandshake;
  wire shandshake_r;
  wire si_rs_bready;
  wire si_rs_bvalid;

  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_simple_fifo bid_fifo_0
       (.\FSM_sequential_state_reg[0] (\FSM_sequential_state_reg[0] ),
        .\FSM_sequential_state_reg[0]_0 (\FSM_sequential_state_reg[0]_0 ),
        .\FSM_sequential_state_reg[0]_1 (\FSM_sequential_state_reg[0]_1 ),
        .Q(bresp_cnt_reg),
        .SR(s_bresp_acc0),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .b_push(b_push),
        .bresp_push(bresp_push),
        .\cnt_read_reg[0]_0 (\cnt_read_reg[0] ),
        .\cnt_read_reg[1]_0 (bid_fifo_0_n_4),
        .in(in),
        .m_axi_awready(m_axi_awready),
        .mhandshake_r(mhandshake_r),
        .out(out),
        .s_axburst_eq0(s_axburst_eq0),
        .s_axburst_eq1(s_axburst_eq1),
        .shandshake_r(shandshake_r));
  LUT1 #(
    .INIT(2'h1)) 
    \bresp_cnt[0]_i_1 
       (.I0(bresp_cnt_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \bresp_cnt[1]_i_1 
       (.I0(bresp_cnt_reg[0]),
        .I1(bresp_cnt_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bresp_cnt[2]_i_1 
       (.I0(bresp_cnt_reg[0]),
        .I1(bresp_cnt_reg[1]),
        .I2(bresp_cnt_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \bresp_cnt[3]_i_1 
       (.I0(bresp_cnt_reg[2]),
        .I1(bresp_cnt_reg[1]),
        .I2(bresp_cnt_reg[0]),
        .I3(bresp_cnt_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \bresp_cnt[4]_i_1 
       (.I0(bresp_cnt_reg[3]),
        .I1(bresp_cnt_reg[0]),
        .I2(bresp_cnt_reg[1]),
        .I3(bresp_cnt_reg[2]),
        .I4(bresp_cnt_reg[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \bresp_cnt[5]_i_1 
       (.I0(bresp_cnt_reg[2]),
        .I1(bresp_cnt_reg[1]),
        .I2(bresp_cnt_reg[0]),
        .I3(bresp_cnt_reg[3]),
        .I4(bresp_cnt_reg[4]),
        .I5(bresp_cnt_reg[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \bresp_cnt[6]_i_1 
       (.I0(\bresp_cnt[7]_i_5_n_0 ),
        .I1(bresp_cnt_reg[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \bresp_cnt[7]_i_2 
       (.I0(bresp_cnt_reg[6]),
        .I1(\bresp_cnt[7]_i_5_n_0 ),
        .I2(bresp_cnt_reg[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \bresp_cnt[7]_i_5 
       (.I0(bresp_cnt_reg[2]),
        .I1(bresp_cnt_reg[1]),
        .I2(bresp_cnt_reg[0]),
        .I3(bresp_cnt_reg[3]),
        .I4(bresp_cnt_reg[4]),
        .I5(bresp_cnt_reg[5]),
        .O(\bresp_cnt[7]_i_5_n_0 ));
  FDRE \bresp_cnt_reg[0] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[0]),
        .Q(bresp_cnt_reg[0]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[1] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[1]),
        .Q(bresp_cnt_reg[1]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[2] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[2]),
        .Q(bresp_cnt_reg[2]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[3] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[3]),
        .Q(bresp_cnt_reg[3]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[4] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[4]),
        .Q(bresp_cnt_reg[4]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[5] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[5]),
        .Q(bresp_cnt_reg[5]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[6] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[6]),
        .Q(bresp_cnt_reg[6]),
        .R(s_bresp_acc0));
  FDRE \bresp_cnt_reg[7] 
       (.C(aclk),
        .CE(mhandshake_r),
        .D(p_0_in[7]),
        .Q(bresp_cnt_reg[7]),
        .R(s_bresp_acc0));
  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_simple_fifo__parameterized0 bresp_fifo_0
       (.aclk(aclk),
        .areset_d1(areset_d1),
        .areset_d1_reg(bresp_fifo_0_n_0),
        .bresp_push(bresp_push),
        .bvalid_i_reg(bid_fifo_0_n_4),
        .in({\s_bresp_acc_reg_n_0_[1] ,\s_bresp_acc_reg_n_0_[0] }),
        .m_axi_bready(m_axi_bready),
        .m_axi_bvalid(m_axi_bvalid),
        .mhandshake(mhandshake),
        .mhandshake_r(mhandshake_r),
        .\s_bresp_acc_reg[1] (\s_bresp_acc_reg[1]_0 ),
        .shandshake_r(shandshake_r),
        .si_rs_bready(si_rs_bready),
        .si_rs_bvalid(si_rs_bvalid));
  FDRE #(
    .INIT(1'b0)) 
    bvalid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(bresp_fifo_0_n_0),
        .Q(si_rs_bvalid),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    mhandshake_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(mhandshake),
        .Q(mhandshake_r),
        .R(areset_d1));
  LUT6 #(
    .INIT(64'h00000000EACECCCC)) 
    \s_bresp_acc[0]_i_1 
       (.I0(m_axi_bresp[0]),
        .I1(\s_bresp_acc_reg_n_0_[0] ),
        .I2(\s_bresp_acc_reg_n_0_[1] ),
        .I3(m_axi_bresp[1]),
        .I4(mhandshake),
        .I5(s_bresp_acc0),
        .O(\s_bresp_acc[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00EA)) 
    \s_bresp_acc[1]_i_1 
       (.I0(\s_bresp_acc_reg_n_0_[1] ),
        .I1(m_axi_bresp[1]),
        .I2(mhandshake),
        .I3(s_bresp_acc0),
        .O(\s_bresp_acc[1]_i_1_n_0 ));
  FDRE \s_bresp_acc_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_bresp_acc[0]_i_1_n_0 ),
        .Q(\s_bresp_acc_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \s_bresp_acc_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\s_bresp_acc[1]_i_1_n_0 ),
        .Q(\s_bresp_acc_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    shandshake_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(shandshake),
        .Q(shandshake_r),
        .R(areset_d1));
endmodule

module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_cmd_translator
   (next_pending_r,
    wrap_next_pending,
    sel_first_reg_0,
    s_axburst_eq0,
    s_axburst_eq1,
    sel_first_reg_1,
    sel_first,
    Q,
    \axaddr_incr_reg[11] ,
    \axlen_cnt_reg[3] ,
    \axlen_cnt_reg[0] ,
    \axlen_cnt_reg[2] ,
    s_axburst_eq1_reg_0,
    sel_first_reg_2,
    \wrap_second_len_r_reg[3] ,
    \axaddr_offset_r_reg[3] ,
    \m_payload_i_reg[3] ,
    incr_next_pending,
    aclk,
    sel_first_i,
    s_axburst_eq0_reg_0,
    s_axburst_eq1_reg_1,
    sel_first_reg_3,
    sel_first_reg_4,
    next,
    \axlen_cnt_reg[7] ,
    \axaddr_wrap_reg[3] ,
    S,
    next_pending_r_reg,
    E,
    \axlen_cnt_reg[0]_0 ,
    si_rs_awvalid,
    axaddr_incr,
    D,
    \axaddr_offset_r_reg[3]_0 ,
    \wrap_cnt_r_reg[1] ,
    \axaddr_wrap_reg[0] ,
    \wrap_second_len_r_reg[3]_0 ,
    \axlen_cnt_reg[0]_1 ,
    \wrap_boundary_axaddr_r_reg[6] );
  output next_pending_r;
  output wrap_next_pending;
  output sel_first_reg_0;
  output s_axburst_eq0;
  output s_axburst_eq1;
  output sel_first_reg_1;
  output sel_first;
  output [11:0]Q;
  output [11:0]\axaddr_incr_reg[11] ;
  output \axlen_cnt_reg[3] ;
  output [0:0]\axlen_cnt_reg[0] ;
  output \axlen_cnt_reg[2] ;
  output s_axburst_eq1_reg_0;
  output sel_first_reg_2;
  output [3:0]\wrap_second_len_r_reg[3] ;
  output [3:0]\axaddr_offset_r_reg[3] ;
  output [3:0]\m_payload_i_reg[3] ;
  input incr_next_pending;
  input aclk;
  input sel_first_i;
  input s_axburst_eq0_reg_0;
  input s_axburst_eq1_reg_1;
  input sel_first_reg_3;
  input sel_first_reg_4;
  input next;
  input [23:0]\axlen_cnt_reg[7] ;
  input [1:0]\axaddr_wrap_reg[3] ;
  input [1:0]S;
  input next_pending_r_reg;
  input [0:0]E;
  input [1:0]\axlen_cnt_reg[0]_0 ;
  input si_rs_awvalid;
  input [11:0]axaddr_incr;
  input [2:0]D;
  input [3:0]\axaddr_offset_r_reg[3]_0 ;
  input \wrap_cnt_r_reg[1] ;
  input [0:0]\axaddr_wrap_reg[0] ;
  input [3:0]\wrap_second_len_r_reg[3]_0 ;
  input [0:0]\axlen_cnt_reg[0]_1 ;
  input [6:0]\wrap_boundary_axaddr_r_reg[6] ;

  wire [2:0]D;
  wire [0:0]E;
  wire [11:0]Q;
  wire [1:0]S;
  wire aclk;
  wire [11:0]axaddr_incr;
  wire [11:0]\axaddr_incr_reg[11] ;
  wire [3:0]\axaddr_offset_r_reg[3] ;
  wire [3:0]\axaddr_offset_r_reg[3]_0 ;
  wire [0:0]\axaddr_wrap_reg[0] ;
  wire [1:0]\axaddr_wrap_reg[3] ;
  wire [0:0]\axlen_cnt_reg[0] ;
  wire [1:0]\axlen_cnt_reg[0]_0 ;
  wire [0:0]\axlen_cnt_reg[0]_1 ;
  wire \axlen_cnt_reg[2] ;
  wire \axlen_cnt_reg[3] ;
  wire [23:0]\axlen_cnt_reg[7] ;
  wire incr_next_pending;
  wire [3:0]\m_payload_i_reg[3] ;
  wire next;
  wire next_pending_r;
  wire next_pending_r_reg;
  wire s_axburst_eq0;
  wire s_axburst_eq0_reg_0;
  wire s_axburst_eq1;
  wire s_axburst_eq1_reg_0;
  wire s_axburst_eq1_reg_1;
  wire sel_first;
  wire sel_first_i;
  wire sel_first_reg_0;
  wire sel_first_reg_1;
  wire sel_first_reg_2;
  wire sel_first_reg_3;
  wire sel_first_reg_4;
  wire si_rs_awvalid;
  wire [6:0]\wrap_boundary_axaddr_r_reg[6] ;
  wire \wrap_cnt_r_reg[1] ;
  wire wrap_next_pending;
  wire [3:0]\wrap_second_len_r_reg[3] ;
  wire [3:0]\wrap_second_len_r_reg[3]_0 ;

  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_incr_cmd incr_cmd_0
       (.E(E),
        .S(S),
        .aclk(aclk),
        .axaddr_incr(axaddr_incr),
        .\axaddr_incr_reg[11]_0 (\axaddr_incr_reg[11] ),
        .\axlen_cnt_reg[0]_0 (\axlen_cnt_reg[0]_0 ),
        .\axlen_cnt_reg[0]_1 (\axaddr_wrap_reg[0] ),
        .\axlen_cnt_reg[2]_0 (\axlen_cnt_reg[2] ),
        .\axlen_cnt_reg[7]_0 ({\axlen_cnt_reg[7] [23:16],\axlen_cnt_reg[7] [13:12],\axlen_cnt_reg[7] [3:0]}),
        .incr_next_pending(incr_next_pending),
        .\m_payload_i_reg[3] (\m_payload_i_reg[3] ),
        .next(next),
        .next_pending_r(next_pending_r),
        .sel_first_reg_0(sel_first_reg_1),
        .sel_first_reg_1(sel_first_reg_3),
        .si_rs_awvalid(si_rs_awvalid));
  FDRE s_axburst_eq0_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axburst_eq0_reg_0),
        .Q(s_axburst_eq0),
        .R(1'b0));
  FDRE s_axburst_eq1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_axburst_eq1_reg_1),
        .Q(s_axburst_eq1),
        .R(1'b0));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_i),
        .Q(sel_first_reg_0),
        .R(1'b0));
  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_wrap_cmd wrap_cmd_0
       (.D(D),
        .E(E),
        .Q(Q),
        .aclk(aclk),
        .\axaddr_offset_r_reg[3]_0 (\axaddr_offset_r_reg[3] ),
        .\axaddr_offset_r_reg[3]_1 (\axaddr_offset_r_reg[3]_0 ),
        .\axaddr_wrap_reg[0]_0 (\axaddr_wrap_reg[0] ),
        .\axaddr_wrap_reg[3]_0 (\axaddr_wrap_reg[3] ),
        .\axlen_cnt_reg[0]_0 (\axlen_cnt_reg[0] ),
        .\axlen_cnt_reg[0]_1 (\axlen_cnt_reg[0]_1 ),
        .\axlen_cnt_reg[3]_0 (\axlen_cnt_reg[3] ),
        .\axlen_cnt_reg[3]_1 ({\axlen_cnt_reg[7] [19:17],\axlen_cnt_reg[7] [15:0]}),
        .\m_axi_awaddr[11] (sel_first_reg_1),
        .next(next),
        .next_pending_r_reg_0(next_pending_r_reg),
        .s_axburst_eq0(s_axburst_eq0),
        .s_axburst_eq1(s_axburst_eq1),
        .s_axburst_eq1_reg(s_axburst_eq1_reg_0),
        .sel_first(sel_first),
        .sel_first_reg_0(sel_first_reg_2),
        .sel_first_reg_1(sel_first_reg_4),
        .\wrap_boundary_axaddr_r_reg[6]_0 (\wrap_boundary_axaddr_r_reg[6] ),
        .\wrap_cnt_r_reg[1]_0 (\wrap_cnt_r_reg[1] ),
        .wrap_next_pending(wrap_next_pending),
        .\wrap_second_len_r_reg[3]_0 (\wrap_second_len_r_reg[3] ),
        .\wrap_second_len_r_reg[3]_1 (\wrap_second_len_r_reg[3]_0 ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_b2s_cmd_translator" *) 
module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_cmd_translator_1
   (sel_first_reg_0,
    sel_first_reg_1,
    sel_first_reg_2,
    O,
    \axaddr_wrap_reg[11] ,
    \axaddr_wrap_reg[7] ,
    \axaddr_wrap_reg[11]_0 ,
    \axaddr_incr_reg[11] ,
    next_pending_r_reg,
    r_rlast,
    s_axburst_eq1_reg_0,
    \axlen_cnt_reg[4] ,
    sel_first_reg_3,
    \wrap_second_len_r_reg[3] ,
    \axaddr_offset_r_reg[3] ,
    \wrap_boundary_axaddr_r_reg[11] ,
    \m_payload_i_reg[3] ,
    incr_next_pending,
    aclk,
    sel_first_i,
    sel_first_reg_4,
    sel_first_reg_5,
    S,
    \axaddr_incr_reg[3] ,
    s_axburst_eq1_reg_1,
    \axlen_cnt_reg[7] ,
    r_push,
    E,
    next_pending_r_reg_0,
    \axaddr_incr_reg[11]_0 ,
    \axaddr_incr_reg[7] ,
    \axaddr_incr_reg[3]_0 ,
    Q,
    si_rs_arvalid,
    axaddr_offset,
    \wrap_cnt_r_reg[1] ,
    \axaddr_wrap_reg[0] ,
    D,
    \wrap_cnt_r_reg[3] ,
    \wrap_boundary_axaddr_r_reg[6] ,
    \axaddr_wrap_reg[11]_1 ,
    \axaddr_incr_reg[0] ,
    m_axi_arready);
  output sel_first_reg_0;
  output sel_first_reg_1;
  output sel_first_reg_2;
  output [3:0]O;
  output [11:0]\axaddr_wrap_reg[11] ;
  output [3:0]\axaddr_wrap_reg[7] ;
  output [3:0]\axaddr_wrap_reg[11]_0 ;
  output [11:0]\axaddr_incr_reg[11] ;
  output next_pending_r_reg;
  output r_rlast;
  output s_axburst_eq1_reg_0;
  output \axlen_cnt_reg[4] ;
  output sel_first_reg_3;
  output [3:0]\wrap_second_len_r_reg[3] ;
  output [3:0]\axaddr_offset_r_reg[3] ;
  output [11:0]\wrap_boundary_axaddr_r_reg[11] ;
  output [3:0]\m_payload_i_reg[3] ;
  input incr_next_pending;
  input aclk;
  input sel_first_i;
  input sel_first_reg_4;
  input sel_first_reg_5;
  input [1:0]S;
  input [1:0]\axaddr_incr_reg[3] ;
  input s_axburst_eq1_reg_1;
  input [20:0]\axlen_cnt_reg[7] ;
  input r_push;
  input [0:0]E;
  input next_pending_r_reg_0;
  input [3:0]\axaddr_incr_reg[11]_0 ;
  input [3:0]\axaddr_incr_reg[7] ;
  input [3:0]\axaddr_incr_reg[3]_0 ;
  input [1:0]Q;
  input si_rs_arvalid;
  input [3:0]axaddr_offset;
  input \wrap_cnt_r_reg[1] ;
  input [0:0]\axaddr_wrap_reg[0] ;
  input [3:0]D;
  input [2:0]\wrap_cnt_r_reg[3] ;
  input [6:0]\wrap_boundary_axaddr_r_reg[6] ;
  input [11:0]\axaddr_wrap_reg[11]_1 ;
  input [0:0]\axaddr_incr_reg[0] ;
  input m_axi_arready;

  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [1:0]Q;
  wire [1:0]S;
  wire aclk;
  wire [0:0]\axaddr_incr_reg[0] ;
  wire [11:0]\axaddr_incr_reg[11] ;
  wire [3:0]\axaddr_incr_reg[11]_0 ;
  wire [1:0]\axaddr_incr_reg[3] ;
  wire [3:0]\axaddr_incr_reg[3]_0 ;
  wire [3:0]\axaddr_incr_reg[7] ;
  wire [3:0]axaddr_offset;
  wire [3:0]\axaddr_offset_r_reg[3] ;
  wire [0:0]\axaddr_wrap_reg[0] ;
  wire [11:0]\axaddr_wrap_reg[11] ;
  wire [3:0]\axaddr_wrap_reg[11]_0 ;
  wire [11:0]\axaddr_wrap_reg[11]_1 ;
  wire [3:0]\axaddr_wrap_reg[7] ;
  wire \axlen_cnt_reg[4] ;
  wire [20:0]\axlen_cnt_reg[7] ;
  wire incr_cmd_0_n_13;
  wire incr_next_pending;
  wire m_axi_arready;
  wire [3:0]\m_payload_i_reg[3] ;
  wire next_pending_r_reg;
  wire next_pending_r_reg_0;
  wire r_push;
  wire r_rlast;
  wire s_axburst_eq0;
  wire s_axburst_eq1;
  wire s_axburst_eq1_reg_0;
  wire s_axburst_eq1_reg_1;
  wire sel_first_i;
  wire sel_first_reg_0;
  wire sel_first_reg_1;
  wire sel_first_reg_2;
  wire sel_first_reg_3;
  wire sel_first_reg_4;
  wire sel_first_reg_5;
  wire si_rs_arvalid;
  wire [11:0]\wrap_boundary_axaddr_r_reg[11] ;
  wire [6:0]\wrap_boundary_axaddr_r_reg[6] ;
  wire wrap_cmd_0_n_26;
  wire \wrap_cnt_r_reg[1] ;
  wire [2:0]\wrap_cnt_r_reg[3] ;
  wire wrap_next_pending;
  wire [3:0]\wrap_second_len_r_reg[3] ;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(s_axburst_eq1),
        .I1(\axlen_cnt_reg[7] [12]),
        .I2(s_axburst_eq0),
        .O(s_axburst_eq1_reg_0));
  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_incr_cmd_2 incr_cmd_0
       (.E(E),
        .Q(Q),
        .aclk(aclk),
        .\axaddr_incr_reg[0]_0 (\axaddr_incr_reg[0] ),
        .\axaddr_incr_reg[11]_0 (\axaddr_incr_reg[11] ),
        .\axaddr_incr_reg[11]_1 (\axaddr_incr_reg[11]_0 ),
        .\axaddr_incr_reg[3]_0 (\axaddr_incr_reg[3] ),
        .\axaddr_incr_reg[3]_1 (\axaddr_incr_reg[3]_0 ),
        .\axaddr_incr_reg[7]_0 (\axaddr_incr_reg[7] ),
        .\axlen_cnt_reg[0]_0 (\axaddr_wrap_reg[0] ),
        .\axlen_cnt_reg[7]_0 ({\axlen_cnt_reg[7] [20:12],\axlen_cnt_reg[7] [10:9],\axlen_cnt_reg[7] [3:0]}),
        .incr_next_pending(incr_next_pending),
        .m_axi_arready(m_axi_arready),
        .\m_payload_i_reg[19] (incr_cmd_0_n_13),
        .\m_payload_i_reg[3] (\m_payload_i_reg[3] ),
        .next_pending_r_reg_0(next_pending_r_reg),
        .r_push(r_push),
        .s_axburst_eq0_reg(s_axburst_eq1_reg_1),
        .s_axburst_eq0_reg_0(next_pending_r_reg_0),
        .sel_first_i(sel_first_i),
        .sel_first_reg_0(sel_first_reg_1),
        .sel_first_reg_1(sel_first_reg_4),
        .si_rs_arvalid(si_rs_arvalid),
        .wrap_next_pending(wrap_next_pending));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    r_rlast_r_i_1
       (.I0(s_axburst_eq0),
        .I1(\axlen_cnt_reg[7] [12]),
        .I2(s_axburst_eq1),
        .O(r_rlast));
  FDRE s_axburst_eq0_reg
       (.C(aclk),
        .CE(1'b1),
        .D(incr_cmd_0_n_13),
        .Q(s_axburst_eq0),
        .R(1'b0));
  FDRE s_axburst_eq1_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wrap_cmd_0_n_26),
        .Q(s_axburst_eq1),
        .R(1'b0));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_i),
        .Q(sel_first_reg_0),
        .R(1'b0));
  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_wrap_cmd_3 wrap_cmd_0
       (.D(D),
        .E(E),
        .O(O),
        .Q(Q[1]),
        .S(S),
        .aclk(aclk),
        .axaddr_offset(axaddr_offset),
        .\axaddr_offset_r_reg[3]_0 (\axaddr_offset_r_reg[3] ),
        .\axaddr_wrap_reg[0]_0 (\axaddr_wrap_reg[0] ),
        .\axaddr_wrap_reg[11]_0 (\axaddr_wrap_reg[11] ),
        .\axaddr_wrap_reg[11]_1 (\axaddr_wrap_reg[11]_0 ),
        .\axaddr_wrap_reg[11]_2 (\axaddr_wrap_reg[11]_1 ),
        .\axaddr_wrap_reg[7]_0 (\axaddr_wrap_reg[7] ),
        .\axlen_cnt_reg[3]_0 (\axlen_cnt_reg[7] [16:4]),
        .\axlen_cnt_reg[4]_0 (\axlen_cnt_reg[4] ),
        .\m_axi_araddr[11] (sel_first_reg_1),
        .\m_payload_i_reg[19] (wrap_cmd_0_n_26),
        .next_pending_r_reg_0(next_pending_r_reg_0),
        .r_push(r_push),
        .s_axburst_eq1_reg(next_pending_r_reg),
        .s_axburst_eq1_reg_0(s_axburst_eq1_reg_1),
        .sel_first_i(sel_first_i),
        .sel_first_reg_0(sel_first_reg_2),
        .sel_first_reg_1(sel_first_reg_3),
        .sel_first_reg_2(sel_first_reg_5),
        .si_rs_arvalid(si_rs_arvalid),
        .\wrap_boundary_axaddr_r_reg[11]_0 (\wrap_boundary_axaddr_r_reg[11] ),
        .\wrap_boundary_axaddr_r_reg[6]_0 (\wrap_boundary_axaddr_r_reg[6] ),
        .\wrap_cnt_r_reg[1]_0 (\wrap_cnt_r_reg[1] ),
        .\wrap_cnt_r_reg[3]_0 (\wrap_cnt_r_reg[3] ),
        .wrap_next_pending(wrap_next_pending),
        .\wrap_second_len_r_reg[3]_0 (\wrap_second_len_r_reg[3] ));
endmodule

module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_incr_cmd
   (next_pending_r,
    sel_first_reg_0,
    \axaddr_incr_reg[11]_0 ,
    \axlen_cnt_reg[2]_0 ,
    \m_payload_i_reg[3] ,
    incr_next_pending,
    aclk,
    sel_first_reg_1,
    S,
    next,
    \axlen_cnt_reg[0]_0 ,
    si_rs_awvalid,
    \axlen_cnt_reg[7]_0 ,
    E,
    axaddr_incr,
    \axlen_cnt_reg[0]_1 );
  output next_pending_r;
  output sel_first_reg_0;
  output [11:0]\axaddr_incr_reg[11]_0 ;
  output \axlen_cnt_reg[2]_0 ;
  output [3:0]\m_payload_i_reg[3] ;
  input incr_next_pending;
  input aclk;
  input sel_first_reg_1;
  input [1:0]S;
  input next;
  input [1:0]\axlen_cnt_reg[0]_0 ;
  input si_rs_awvalid;
  input [13:0]\axlen_cnt_reg[7]_0 ;
  input [0:0]E;
  input [11:0]axaddr_incr;
  input [0:0]\axlen_cnt_reg[0]_1 ;

  wire [0:0]E;
  wire [1:0]S;
  wire aclk;
  wire [11:0]axaddr_incr;
  wire \axaddr_incr[11]_i_1_n_0 ;
  wire \axaddr_incr[3]_i_12_n_0 ;
  wire \axaddr_incr[3]_i_13_n_0 ;
  wire [11:0]\axaddr_incr_reg[11]_0 ;
  wire \axaddr_incr_reg[11]_i_4_n_1 ;
  wire \axaddr_incr_reg[11]_i_4_n_2 ;
  wire \axaddr_incr_reg[11]_i_4_n_3 ;
  wire \axaddr_incr_reg[11]_i_4_n_4 ;
  wire \axaddr_incr_reg[11]_i_4_n_5 ;
  wire \axaddr_incr_reg[11]_i_4_n_6 ;
  wire \axaddr_incr_reg[11]_i_4_n_7 ;
  wire \axaddr_incr_reg[3]_i_3_n_0 ;
  wire \axaddr_incr_reg[3]_i_3_n_1 ;
  wire \axaddr_incr_reg[3]_i_3_n_2 ;
  wire \axaddr_incr_reg[3]_i_3_n_3 ;
  wire \axaddr_incr_reg[3]_i_3_n_4 ;
  wire \axaddr_incr_reg[3]_i_3_n_5 ;
  wire \axaddr_incr_reg[3]_i_3_n_6 ;
  wire \axaddr_incr_reg[3]_i_3_n_7 ;
  wire \axaddr_incr_reg[7]_i_3_n_0 ;
  wire \axaddr_incr_reg[7]_i_3_n_1 ;
  wire \axaddr_incr_reg[7]_i_3_n_2 ;
  wire \axaddr_incr_reg[7]_i_3_n_3 ;
  wire \axaddr_incr_reg[7]_i_3_n_4 ;
  wire \axaddr_incr_reg[7]_i_3_n_5 ;
  wire \axaddr_incr_reg[7]_i_3_n_6 ;
  wire \axaddr_incr_reg[7]_i_3_n_7 ;
  wire [8:0]axlen_cnt;
  wire \axlen_cnt[0]_i_1__0_n_0 ;
  wire \axlen_cnt[1]_i_1__0_n_0 ;
  wire \axlen_cnt[2]_i_1__0_n_0 ;
  wire \axlen_cnt[3]_i_1__0_n_0 ;
  wire \axlen_cnt[3]_i_2__1_n_0 ;
  wire \axlen_cnt[4]_i_1__0_n_0 ;
  wire \axlen_cnt[5]_i_1_n_0 ;
  wire \axlen_cnt[5]_i_2_n_0 ;
  wire \axlen_cnt[6]_i_1_n_0 ;
  wire \axlen_cnt[7]_i_1_n_0 ;
  wire \axlen_cnt[8]_i_2_n_0 ;
  wire \axlen_cnt[8]_i_3_n_0 ;
  wire [1:0]\axlen_cnt_reg[0]_0 ;
  wire [0:0]\axlen_cnt_reg[0]_1 ;
  wire \axlen_cnt_reg[2]_0 ;
  wire [13:0]\axlen_cnt_reg[7]_0 ;
  wire incr_next_pending;
  wire [3:0]\m_payload_i_reg[3] ;
  wire next;
  wire next_pending_r;
  wire next_pending_r_i_5_n_0;
  wire [11:0]p_1_in;
  wire sel_first_reg_0;
  wire sel_first_reg_1;
  wire si_rs_awvalid;
  wire [3:3]\NLW_axaddr_incr_reg[11]_i_4_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[0]_i_1 
       (.I0(axaddr_incr[0]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[3]_i_3_n_7 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[10]_i_1 
       (.I0(axaddr_incr[10]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[11]_i_4_n_5 ),
        .O(p_1_in[10]));
  LUT2 #(
    .INIT(4'hE)) 
    \axaddr_incr[11]_i_1 
       (.I0(sel_first_reg_0),
        .I1(next),
        .O(\axaddr_incr[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[11]_i_2 
       (.I0(axaddr_incr[11]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[11]_i_4_n_4 ),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[1]_i_1 
       (.I0(axaddr_incr[1]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[3]_i_3_n_6 ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[2]_i_1 
       (.I0(axaddr_incr[2]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[3]_i_3_n_5 ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[3]_i_1 
       (.I0(axaddr_incr[3]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[3]_i_3_n_4 ),
        .O(p_1_in[3]));
  LUT4 #(
    .INIT(16'h0102)) 
    \axaddr_incr[3]_i_10 
       (.I0(\axlen_cnt_reg[7]_0 [0]),
        .I1(\axlen_cnt_reg[7]_0 [4]),
        .I2(\axlen_cnt_reg[7]_0 [5]),
        .I3(next),
        .O(\m_payload_i_reg[3] [0]));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_incr[3]_i_12 
       (.I0(\axaddr_incr_reg[11]_0 [2]),
        .I1(\axlen_cnt_reg[7]_0 [4]),
        .I2(\axlen_cnt_reg[7]_0 [5]),
        .O(\axaddr_incr[3]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_incr[3]_i_13 
       (.I0(\axaddr_incr_reg[11]_0 [1]),
        .I1(\axlen_cnt_reg[7]_0 [5]),
        .I2(\axlen_cnt_reg[7]_0 [4]),
        .O(\axaddr_incr[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \axaddr_incr[3]_i_7 
       (.I0(\axlen_cnt_reg[7]_0 [3]),
        .I1(\axlen_cnt_reg[7]_0 [4]),
        .I2(\axlen_cnt_reg[7]_0 [5]),
        .I3(next),
        .O(\m_payload_i_reg[3] [3]));
  LUT4 #(
    .INIT(16'h0A6A)) 
    \axaddr_incr[3]_i_8 
       (.I0(\axlen_cnt_reg[7]_0 [2]),
        .I1(next),
        .I2(\axlen_cnt_reg[7]_0 [5]),
        .I3(\axlen_cnt_reg[7]_0 [4]),
        .O(\m_payload_i_reg[3] [2]));
  LUT4 #(
    .INIT(16'h006A)) 
    \axaddr_incr[3]_i_9 
       (.I0(\axlen_cnt_reg[7]_0 [1]),
        .I1(next),
        .I2(\axlen_cnt_reg[7]_0 [4]),
        .I3(\axlen_cnt_reg[7]_0 [5]),
        .O(\m_payload_i_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[4]_i_1 
       (.I0(axaddr_incr[4]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[7]_i_3_n_7 ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[5]_i_1 
       (.I0(axaddr_incr[5]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[7]_i_3_n_6 ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[6]_i_1 
       (.I0(axaddr_incr[6]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[7]_i_3_n_5 ),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[7]_i_1 
       (.I0(axaddr_incr[7]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[7]_i_3_n_4 ),
        .O(p_1_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[8]_i_1 
       (.I0(axaddr_incr[8]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[11]_i_4_n_7 ),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[9]_i_1 
       (.I0(axaddr_incr[9]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[11]_i_4_n_6 ),
        .O(p_1_in[9]));
  FDRE \axaddr_incr_reg[0] 
       (.C(aclk),
        .CE(\axaddr_incr[11]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\axaddr_incr_reg[11]_0 [0]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[10] 
       (.C(aclk),
        .CE(\axaddr_incr[11]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\axaddr_incr_reg[11]_0 [10]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[11] 
       (.C(aclk),
        .CE(\axaddr_incr[11]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\axaddr_incr_reg[11]_0 [11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[11]_i_4 
       (.CI(\axaddr_incr_reg[7]_i_3_n_0 ),
        .CO({\NLW_axaddr_incr_reg[11]_i_4_CO_UNCONNECTED [3],\axaddr_incr_reg[11]_i_4_n_1 ,\axaddr_incr_reg[11]_i_4_n_2 ,\axaddr_incr_reg[11]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axaddr_incr_reg[11]_i_4_n_4 ,\axaddr_incr_reg[11]_i_4_n_5 ,\axaddr_incr_reg[11]_i_4_n_6 ,\axaddr_incr_reg[11]_i_4_n_7 }),
        .S(\axaddr_incr_reg[11]_0 [11:8]));
  FDRE \axaddr_incr_reg[1] 
       (.C(aclk),
        .CE(\axaddr_incr[11]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\axaddr_incr_reg[11]_0 [1]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[2] 
       (.C(aclk),
        .CE(\axaddr_incr[11]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\axaddr_incr_reg[11]_0 [2]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[3] 
       (.C(aclk),
        .CE(\axaddr_incr[11]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\axaddr_incr_reg[11]_0 [3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[3]_i_3 
       (.CI(1'b0),
        .CO({\axaddr_incr_reg[3]_i_3_n_0 ,\axaddr_incr_reg[3]_i_3_n_1 ,\axaddr_incr_reg[3]_i_3_n_2 ,\axaddr_incr_reg[3]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(\axaddr_incr_reg[11]_0 [3:0]),
        .O({\axaddr_incr_reg[3]_i_3_n_4 ,\axaddr_incr_reg[3]_i_3_n_5 ,\axaddr_incr_reg[3]_i_3_n_6 ,\axaddr_incr_reg[3]_i_3_n_7 }),
        .S({S[1],\axaddr_incr[3]_i_12_n_0 ,\axaddr_incr[3]_i_13_n_0 ,S[0]}));
  FDRE \axaddr_incr_reg[4] 
       (.C(aclk),
        .CE(\axaddr_incr[11]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\axaddr_incr_reg[11]_0 [4]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[5] 
       (.C(aclk),
        .CE(\axaddr_incr[11]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\axaddr_incr_reg[11]_0 [5]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[6] 
       (.C(aclk),
        .CE(\axaddr_incr[11]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\axaddr_incr_reg[11]_0 [6]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[7] 
       (.C(aclk),
        .CE(\axaddr_incr[11]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\axaddr_incr_reg[11]_0 [7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[7]_i_3 
       (.CI(\axaddr_incr_reg[3]_i_3_n_0 ),
        .CO({\axaddr_incr_reg[7]_i_3_n_0 ,\axaddr_incr_reg[7]_i_3_n_1 ,\axaddr_incr_reg[7]_i_3_n_2 ,\axaddr_incr_reg[7]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axaddr_incr_reg[7]_i_3_n_4 ,\axaddr_incr_reg[7]_i_3_n_5 ,\axaddr_incr_reg[7]_i_3_n_6 ,\axaddr_incr_reg[7]_i_3_n_7 }),
        .S(\axaddr_incr_reg[11]_0 [7:4]));
  FDRE \axaddr_incr_reg[8] 
       (.C(aclk),
        .CE(\axaddr_incr[11]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\axaddr_incr_reg[11]_0 [8]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[9] 
       (.C(aclk),
        .CE(\axaddr_incr[11]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\axaddr_incr_reg[11]_0 [9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4F44444444444444)) 
    \axlen_cnt[0]_i_1__0 
       (.I0(axlen_cnt[0]),
        .I1(\axlen_cnt_reg[2]_0 ),
        .I2(\axlen_cnt_reg[0]_0 [1]),
        .I3(\axlen_cnt_reg[0]_0 [0]),
        .I4(si_rs_awvalid),
        .I5(\axlen_cnt_reg[7]_0 [6]),
        .O(\axlen_cnt[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \axlen_cnt[1]_i_1__0 
       (.I0(\axlen_cnt_reg[7]_0 [7]),
        .I1(E),
        .I2(\axlen_cnt_reg[2]_0 ),
        .I3(axlen_cnt[0]),
        .I4(axlen_cnt[1]),
        .O(\axlen_cnt[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F888888888F8)) 
    \axlen_cnt[2]_i_1__0 
       (.I0(\axlen_cnt_reg[7]_0 [8]),
        .I1(E),
        .I2(\axlen_cnt_reg[2]_0 ),
        .I3(axlen_cnt[1]),
        .I4(axlen_cnt[0]),
        .I5(axlen_cnt[2]),
        .O(\axlen_cnt[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \axlen_cnt[3]_i_1__0 
       (.I0(\axlen_cnt_reg[7]_0 [9]),
        .I1(E),
        .I2(\axlen_cnt_reg[2]_0 ),
        .I3(\axlen_cnt[3]_i_2__1_n_0 ),
        .I4(axlen_cnt[3]),
        .O(\axlen_cnt[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axlen_cnt[3]_i_2__1 
       (.I0(axlen_cnt[1]),
        .I1(axlen_cnt[0]),
        .I2(axlen_cnt[2]),
        .O(\axlen_cnt[3]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hF8888F88)) 
    \axlen_cnt[4]_i_1__0 
       (.I0(\axlen_cnt_reg[7]_0 [10]),
        .I1(E),
        .I2(\axlen_cnt[5]_i_2_n_0 ),
        .I3(\axlen_cnt_reg[2]_0 ),
        .I4(axlen_cnt[4]),
        .O(\axlen_cnt[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF88888888F8888)) 
    \axlen_cnt[5]_i_1 
       (.I0(\axlen_cnt_reg[7]_0 [11]),
        .I1(E),
        .I2(\axlen_cnt[5]_i_2_n_0 ),
        .I3(axlen_cnt[4]),
        .I4(\axlen_cnt_reg[2]_0 ),
        .I5(axlen_cnt[5]),
        .O(\axlen_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axlen_cnt[5]_i_2 
       (.I0(axlen_cnt[2]),
        .I1(axlen_cnt[0]),
        .I2(axlen_cnt[1]),
        .I3(axlen_cnt[3]),
        .O(\axlen_cnt[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8888F88)) 
    \axlen_cnt[6]_i_1 
       (.I0(\axlen_cnt_reg[7]_0 [12]),
        .I1(E),
        .I2(\axlen_cnt[8]_i_3_n_0 ),
        .I3(\axlen_cnt_reg[2]_0 ),
        .I4(axlen_cnt[6]),
        .O(\axlen_cnt[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF88888888F8888)) 
    \axlen_cnt[7]_i_1 
       (.I0(\axlen_cnt_reg[7]_0 [13]),
        .I1(E),
        .I2(\axlen_cnt[8]_i_3_n_0 ),
        .I3(axlen_cnt[6]),
        .I4(\axlen_cnt_reg[2]_0 ),
        .I5(axlen_cnt[7]),
        .O(\axlen_cnt[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000100)) 
    \axlen_cnt[8]_i_2 
       (.I0(axlen_cnt[6]),
        .I1(\axlen_cnt[8]_i_3_n_0 ),
        .I2(axlen_cnt[7]),
        .I3(\axlen_cnt_reg[2]_0 ),
        .I4(axlen_cnt[8]),
        .O(\axlen_cnt[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \axlen_cnt[8]_i_3 
       (.I0(axlen_cnt[4]),
        .I1(axlen_cnt[2]),
        .I2(axlen_cnt[0]),
        .I3(axlen_cnt[1]),
        .I4(axlen_cnt[3]),
        .I5(axlen_cnt[5]),
        .O(\axlen_cnt[8]_i_3_n_0 ));
  FDRE \axlen_cnt_reg[0] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[0]_i_1__0_n_0 ),
        .Q(axlen_cnt[0]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[1] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[1]_i_1__0_n_0 ),
        .Q(axlen_cnt[1]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[2] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[2]_i_1__0_n_0 ),
        .Q(axlen_cnt[2]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[3] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[3]_i_1__0_n_0 ),
        .Q(axlen_cnt[3]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[4] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[4]_i_1__0_n_0 ),
        .Q(axlen_cnt[4]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[5] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[5]_i_1_n_0 ),
        .Q(axlen_cnt[5]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[6] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[6]_i_1_n_0 ),
        .Q(axlen_cnt[6]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[7] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[7]_i_1_n_0 ),
        .Q(axlen_cnt[7]),
        .R(1'b0));
  FDRE \axlen_cnt_reg[8] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_1 ),
        .D(\axlen_cnt[8]_i_2_n_0 ),
        .Q(axlen_cnt[8]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    next_pending_r_i_3
       (.I0(next_pending_r_i_5_n_0),
        .I1(axlen_cnt[2]),
        .I2(axlen_cnt[1]),
        .I3(axlen_cnt[4]),
        .I4(axlen_cnt[3]),
        .I5(E),
        .O(\axlen_cnt_reg[2]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    next_pending_r_i_5
       (.I0(axlen_cnt[6]),
        .I1(axlen_cnt[5]),
        .I2(axlen_cnt[8]),
        .I3(axlen_cnt[7]),
        .O(next_pending_r_i_5_n_0));
  FDRE next_pending_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(incr_next_pending),
        .Q(next_pending_r),
        .R(1'b0));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_reg_1),
        .Q(sel_first_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_b2s_incr_cmd" *) 
module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_incr_cmd_2
   (sel_first_reg_0,
    \axaddr_incr_reg[11]_0 ,
    \m_payload_i_reg[19] ,
    next_pending_r_reg_0,
    \m_payload_i_reg[3] ,
    incr_next_pending,
    aclk,
    sel_first_reg_1,
    \axaddr_incr_reg[3]_0 ,
    s_axburst_eq0_reg,
    sel_first_i,
    \axlen_cnt_reg[7]_0 ,
    wrap_next_pending,
    r_push,
    E,
    s_axburst_eq0_reg_0,
    \axaddr_incr_reg[11]_1 ,
    \axaddr_incr_reg[7]_0 ,
    \axaddr_incr_reg[3]_1 ,
    Q,
    si_rs_arvalid,
    \axlen_cnt_reg[0]_0 ,
    \axaddr_incr_reg[0]_0 ,
    m_axi_arready);
  output sel_first_reg_0;
  output [11:0]\axaddr_incr_reg[11]_0 ;
  output \m_payload_i_reg[19] ;
  output next_pending_r_reg_0;
  output [3:0]\m_payload_i_reg[3] ;
  input incr_next_pending;
  input aclk;
  input sel_first_reg_1;
  input [1:0]\axaddr_incr_reg[3]_0 ;
  input s_axburst_eq0_reg;
  input sel_first_i;
  input [14:0]\axlen_cnt_reg[7]_0 ;
  input wrap_next_pending;
  input r_push;
  input [0:0]E;
  input s_axburst_eq0_reg_0;
  input [3:0]\axaddr_incr_reg[11]_1 ;
  input [3:0]\axaddr_incr_reg[7]_0 ;
  input [3:0]\axaddr_incr_reg[3]_1 ;
  input [1:0]Q;
  input si_rs_arvalid;
  input [0:0]\axlen_cnt_reg[0]_0 ;
  input [0:0]\axaddr_incr_reg[0]_0 ;
  input m_axi_arready;

  wire [0:0]E;
  wire [1:0]Q;
  wire aclk;
  wire \axaddr_incr[0]_i_1__0_n_0 ;
  wire \axaddr_incr[10]_i_1__0_n_0 ;
  wire \axaddr_incr[11]_i_2__0_n_0 ;
  wire \axaddr_incr[1]_i_1__0_n_0 ;
  wire \axaddr_incr[2]_i_1__0_n_0 ;
  wire \axaddr_incr[3]_i_12_n_0 ;
  wire \axaddr_incr[3]_i_13_n_0 ;
  wire \axaddr_incr[3]_i_1__0_n_0 ;
  wire \axaddr_incr[4]_i_1__0_n_0 ;
  wire \axaddr_incr[5]_i_1__0_n_0 ;
  wire \axaddr_incr[6]_i_1__0_n_0 ;
  wire \axaddr_incr[7]_i_1__0_n_0 ;
  wire \axaddr_incr[8]_i_1__0_n_0 ;
  wire \axaddr_incr[9]_i_1__0_n_0 ;
  wire [0:0]\axaddr_incr_reg[0]_0 ;
  wire [11:0]\axaddr_incr_reg[11]_0 ;
  wire [3:0]\axaddr_incr_reg[11]_1 ;
  wire \axaddr_incr_reg[11]_i_4__0_n_1 ;
  wire \axaddr_incr_reg[11]_i_4__0_n_2 ;
  wire \axaddr_incr_reg[11]_i_4__0_n_3 ;
  wire \axaddr_incr_reg[11]_i_4__0_n_4 ;
  wire \axaddr_incr_reg[11]_i_4__0_n_5 ;
  wire \axaddr_incr_reg[11]_i_4__0_n_6 ;
  wire \axaddr_incr_reg[11]_i_4__0_n_7 ;
  wire [1:0]\axaddr_incr_reg[3]_0 ;
  wire [3:0]\axaddr_incr_reg[3]_1 ;
  wire \axaddr_incr_reg[3]_i_3__0_n_0 ;
  wire \axaddr_incr_reg[3]_i_3__0_n_1 ;
  wire \axaddr_incr_reg[3]_i_3__0_n_2 ;
  wire \axaddr_incr_reg[3]_i_3__0_n_3 ;
  wire \axaddr_incr_reg[3]_i_3__0_n_4 ;
  wire \axaddr_incr_reg[3]_i_3__0_n_5 ;
  wire \axaddr_incr_reg[3]_i_3__0_n_6 ;
  wire \axaddr_incr_reg[3]_i_3__0_n_7 ;
  wire [3:0]\axaddr_incr_reg[7]_0 ;
  wire \axaddr_incr_reg[7]_i_3__0_n_0 ;
  wire \axaddr_incr_reg[7]_i_3__0_n_1 ;
  wire \axaddr_incr_reg[7]_i_3__0_n_2 ;
  wire \axaddr_incr_reg[7]_i_3__0_n_3 ;
  wire \axaddr_incr_reg[7]_i_3__0_n_4 ;
  wire \axaddr_incr_reg[7]_i_3__0_n_5 ;
  wire \axaddr_incr_reg[7]_i_3__0_n_6 ;
  wire \axaddr_incr_reg[7]_i_3__0_n_7 ;
  wire \axlen_cnt[0]_i_1__1_n_0 ;
  wire \axlen_cnt[1]_i_1__2_n_0 ;
  wire \axlen_cnt[2]_i_1__2_n_0 ;
  wire \axlen_cnt[3]_i_1__2_n_0 ;
  wire \axlen_cnt[3]_i_2__2_n_0 ;
  wire \axlen_cnt[4]_i_1__2_n_0 ;
  wire \axlen_cnt[5]_i_1__0_n_0 ;
  wire \axlen_cnt[5]_i_2__0_n_0 ;
  wire \axlen_cnt[6]_i_1__0_n_0 ;
  wire \axlen_cnt[7]_i_1__0_n_0 ;
  wire \axlen_cnt[8]_i_2__0_n_0 ;
  wire \axlen_cnt[8]_i_3__0_n_0 ;
  wire \axlen_cnt[8]_i_4_n_0 ;
  wire \axlen_cnt[8]_i_5_n_0 ;
  wire [0:0]\axlen_cnt_reg[0]_0 ;
  wire [14:0]\axlen_cnt_reg[7]_0 ;
  wire \axlen_cnt_reg_n_0_[0] ;
  wire \axlen_cnt_reg_n_0_[1] ;
  wire \axlen_cnt_reg_n_0_[2] ;
  wire \axlen_cnt_reg_n_0_[3] ;
  wire \axlen_cnt_reg_n_0_[4] ;
  wire \axlen_cnt_reg_n_0_[5] ;
  wire \axlen_cnt_reg_n_0_[6] ;
  wire \axlen_cnt_reg_n_0_[7] ;
  wire \axlen_cnt_reg_n_0_[8] ;
  wire incr_next_pending;
  wire m_axi_arready;
  wire \m_payload_i_reg[19] ;
  wire [3:0]\m_payload_i_reg[3] ;
  wire next_pending_r;
  wire next_pending_r_reg_0;
  wire r_push;
  wire s_axburst_eq0_reg;
  wire s_axburst_eq0_reg_0;
  wire sel_first_i;
  wire sel_first_reg_0;
  wire sel_first_reg_1;
  wire si_rs_arvalid;
  wire wrap_next_pending;
  wire [3:3]\NLW_axaddr_incr_reg[11]_i_4__0_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[0]_i_1__0 
       (.I0(\axaddr_incr_reg[3]_1 [0]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[3]_i_3__0_n_7 ),
        .O(\axaddr_incr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[10]_i_1__0 
       (.I0(\axaddr_incr_reg[11]_1 [2]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[11]_i_4__0_n_5 ),
        .O(\axaddr_incr[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[11]_i_2__0 
       (.I0(\axaddr_incr_reg[11]_1 [3]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[11]_i_4__0_n_4 ),
        .O(\axaddr_incr[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[1]_i_1__0 
       (.I0(\axaddr_incr_reg[3]_1 [1]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[3]_i_3__0_n_6 ),
        .O(\axaddr_incr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[2]_i_1__0 
       (.I0(\axaddr_incr_reg[3]_1 [2]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[3]_i_3__0_n_5 ),
        .O(\axaddr_incr[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0102020202020202)) 
    \axaddr_incr[3]_i_10 
       (.I0(\axlen_cnt_reg[7]_0 [0]),
        .I1(\axlen_cnt_reg[7]_0 [4]),
        .I2(\axlen_cnt_reg[7]_0 [5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(m_axi_arready),
        .O(\m_payload_i_reg[3] [0]));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_incr[3]_i_12 
       (.I0(\axaddr_incr_reg[11]_0 [2]),
        .I1(\axlen_cnt_reg[7]_0 [4]),
        .I2(\axlen_cnt_reg[7]_0 [5]),
        .O(\axaddr_incr[3]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_incr[3]_i_13 
       (.I0(\axaddr_incr_reg[11]_0 [1]),
        .I1(\axlen_cnt_reg[7]_0 [5]),
        .I2(\axlen_cnt_reg[7]_0 [4]),
        .O(\axaddr_incr[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[3]_i_1__0 
       (.I0(\axaddr_incr_reg[3]_1 [3]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[3]_i_3__0_n_4 ),
        .O(\axaddr_incr[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \axaddr_incr[3]_i_7 
       (.I0(\axlen_cnt_reg[7]_0 [3]),
        .I1(\axlen_cnt_reg[7]_0 [4]),
        .I2(\axlen_cnt_reg[7]_0 [5]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(m_axi_arready),
        .O(\m_payload_i_reg[3] [3]));
  LUT6 #(
    .INIT(64'h0000AAAA6AAAAAAA)) 
    \axaddr_incr[3]_i_8 
       (.I0(\axlen_cnt_reg[7]_0 [2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(m_axi_arready),
        .I4(\axlen_cnt_reg[7]_0 [5]),
        .I5(\axlen_cnt_reg[7]_0 [4]),
        .O(\m_payload_i_reg[3] [2]));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \axaddr_incr[3]_i_9 
       (.I0(\axlen_cnt_reg[7]_0 [1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(m_axi_arready),
        .I4(\axlen_cnt_reg[7]_0 [4]),
        .I5(\axlen_cnt_reg[7]_0 [5]),
        .O(\m_payload_i_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[4]_i_1__0 
       (.I0(\axaddr_incr_reg[7]_0 [0]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[7]_i_3__0_n_7 ),
        .O(\axaddr_incr[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[5]_i_1__0 
       (.I0(\axaddr_incr_reg[7]_0 [1]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[7]_i_3__0_n_6 ),
        .O(\axaddr_incr[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[6]_i_1__0 
       (.I0(\axaddr_incr_reg[7]_0 [2]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[7]_i_3__0_n_5 ),
        .O(\axaddr_incr[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[7]_i_1__0 
       (.I0(\axaddr_incr_reg[7]_0 [3]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[7]_i_3__0_n_4 ),
        .O(\axaddr_incr[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[8]_i_1__0 
       (.I0(\axaddr_incr_reg[11]_1 [0]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[11]_i_4__0_n_7 ),
        .O(\axaddr_incr[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \axaddr_incr[9]_i_1__0 
       (.I0(\axaddr_incr_reg[11]_1 [1]),
        .I1(sel_first_reg_0),
        .I2(\axaddr_incr_reg[11]_i_4__0_n_6 ),
        .O(\axaddr_incr[9]_i_1__0_n_0 ));
  FDRE \axaddr_incr_reg[0] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(\axaddr_incr[0]_i_1__0_n_0 ),
        .Q(\axaddr_incr_reg[11]_0 [0]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[10] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(\axaddr_incr[10]_i_1__0_n_0 ),
        .Q(\axaddr_incr_reg[11]_0 [10]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[11] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(\axaddr_incr[11]_i_2__0_n_0 ),
        .Q(\axaddr_incr_reg[11]_0 [11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[11]_i_4__0 
       (.CI(\axaddr_incr_reg[7]_i_3__0_n_0 ),
        .CO({\NLW_axaddr_incr_reg[11]_i_4__0_CO_UNCONNECTED [3],\axaddr_incr_reg[11]_i_4__0_n_1 ,\axaddr_incr_reg[11]_i_4__0_n_2 ,\axaddr_incr_reg[11]_i_4__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axaddr_incr_reg[11]_i_4__0_n_4 ,\axaddr_incr_reg[11]_i_4__0_n_5 ,\axaddr_incr_reg[11]_i_4__0_n_6 ,\axaddr_incr_reg[11]_i_4__0_n_7 }),
        .S(\axaddr_incr_reg[11]_0 [11:8]));
  FDRE \axaddr_incr_reg[1] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(\axaddr_incr[1]_i_1__0_n_0 ),
        .Q(\axaddr_incr_reg[11]_0 [1]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[2] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(\axaddr_incr[2]_i_1__0_n_0 ),
        .Q(\axaddr_incr_reg[11]_0 [2]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[3] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(\axaddr_incr[3]_i_1__0_n_0 ),
        .Q(\axaddr_incr_reg[11]_0 [3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[3]_i_3__0 
       (.CI(1'b0),
        .CO({\axaddr_incr_reg[3]_i_3__0_n_0 ,\axaddr_incr_reg[3]_i_3__0_n_1 ,\axaddr_incr_reg[3]_i_3__0_n_2 ,\axaddr_incr_reg[3]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\axaddr_incr_reg[11]_0 [3:0]),
        .O({\axaddr_incr_reg[3]_i_3__0_n_4 ,\axaddr_incr_reg[3]_i_3__0_n_5 ,\axaddr_incr_reg[3]_i_3__0_n_6 ,\axaddr_incr_reg[3]_i_3__0_n_7 }),
        .S({\axaddr_incr_reg[3]_0 [1],\axaddr_incr[3]_i_12_n_0 ,\axaddr_incr[3]_i_13_n_0 ,\axaddr_incr_reg[3]_0 [0]}));
  FDRE \axaddr_incr_reg[4] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(\axaddr_incr[4]_i_1__0_n_0 ),
        .Q(\axaddr_incr_reg[11]_0 [4]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[5] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(\axaddr_incr[5]_i_1__0_n_0 ),
        .Q(\axaddr_incr_reg[11]_0 [5]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[6] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(\axaddr_incr[6]_i_1__0_n_0 ),
        .Q(\axaddr_incr_reg[11]_0 [6]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[7] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(\axaddr_incr[7]_i_1__0_n_0 ),
        .Q(\axaddr_incr_reg[11]_0 [7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[7]_i_3__0 
       (.CI(\axaddr_incr_reg[3]_i_3__0_n_0 ),
        .CO({\axaddr_incr_reg[7]_i_3__0_n_0 ,\axaddr_incr_reg[7]_i_3__0_n_1 ,\axaddr_incr_reg[7]_i_3__0_n_2 ,\axaddr_incr_reg[7]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\axaddr_incr_reg[7]_i_3__0_n_4 ,\axaddr_incr_reg[7]_i_3__0_n_5 ,\axaddr_incr_reg[7]_i_3__0_n_6 ,\axaddr_incr_reg[7]_i_3__0_n_7 }),
        .S(\axaddr_incr_reg[11]_0 [7:4]));
  FDRE \axaddr_incr_reg[8] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(\axaddr_incr[8]_i_1__0_n_0 ),
        .Q(\axaddr_incr_reg[11]_0 [8]),
        .R(1'b0));
  FDRE \axaddr_incr_reg[9] 
       (.C(aclk),
        .CE(\axaddr_incr_reg[0]_0 ),
        .D(\axaddr_incr[9]_i_1__0_n_0 ),
        .Q(\axaddr_incr_reg[11]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h4F444444)) 
    \axlen_cnt[0]_i_1__1 
       (.I0(\axlen_cnt_reg_n_0_[0] ),
        .I1(\axlen_cnt[8]_i_4_n_0 ),
        .I2(Q[1]),
        .I3(si_rs_arvalid),
        .I4(\axlen_cnt_reg[7]_0 [7]),
        .O(\axlen_cnt[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \axlen_cnt[1]_i_1__2 
       (.I0(\axlen_cnt_reg[7]_0 [8]),
        .I1(E),
        .I2(\axlen_cnt[8]_i_4_n_0 ),
        .I3(\axlen_cnt_reg_n_0_[0] ),
        .I4(\axlen_cnt_reg_n_0_[1] ),
        .O(\axlen_cnt[1]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F888888888F8)) 
    \axlen_cnt[2]_i_1__2 
       (.I0(\axlen_cnt_reg[7]_0 [9]),
        .I1(E),
        .I2(\axlen_cnt[8]_i_4_n_0 ),
        .I3(\axlen_cnt_reg_n_0_[1] ),
        .I4(\axlen_cnt_reg_n_0_[0] ),
        .I5(\axlen_cnt_reg_n_0_[2] ),
        .O(\axlen_cnt[2]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \axlen_cnt[3]_i_1__2 
       (.I0(\axlen_cnt_reg[7]_0 [10]),
        .I1(E),
        .I2(\axlen_cnt[8]_i_4_n_0 ),
        .I3(\axlen_cnt[3]_i_2__2_n_0 ),
        .I4(\axlen_cnt_reg_n_0_[3] ),
        .O(\axlen_cnt[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \axlen_cnt[3]_i_2__2 
       (.I0(\axlen_cnt_reg_n_0_[1] ),
        .I1(\axlen_cnt_reg_n_0_[0] ),
        .I2(\axlen_cnt_reg_n_0_[2] ),
        .O(\axlen_cnt[3]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hF8888F88)) 
    \axlen_cnt[4]_i_1__2 
       (.I0(\axlen_cnt_reg[7]_0 [11]),
        .I1(E),
        .I2(\axlen_cnt[5]_i_2__0_n_0 ),
        .I3(\axlen_cnt[8]_i_4_n_0 ),
        .I4(\axlen_cnt_reg_n_0_[4] ),
        .O(\axlen_cnt[4]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF88888888F8888)) 
    \axlen_cnt[5]_i_1__0 
       (.I0(\axlen_cnt_reg[7]_0 [12]),
        .I1(E),
        .I2(\axlen_cnt[5]_i_2__0_n_0 ),
        .I3(\axlen_cnt_reg_n_0_[4] ),
        .I4(\axlen_cnt[8]_i_4_n_0 ),
        .I5(\axlen_cnt_reg_n_0_[5] ),
        .O(\axlen_cnt[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axlen_cnt[5]_i_2__0 
       (.I0(\axlen_cnt_reg_n_0_[2] ),
        .I1(\axlen_cnt_reg_n_0_[0] ),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .I3(\axlen_cnt_reg_n_0_[3] ),
        .O(\axlen_cnt[5]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hF8888F88)) 
    \axlen_cnt[6]_i_1__0 
       (.I0(\axlen_cnt_reg[7]_0 [13]),
        .I1(E),
        .I2(\axlen_cnt[8]_i_3__0_n_0 ),
        .I3(\axlen_cnt[8]_i_4_n_0 ),
        .I4(\axlen_cnt_reg_n_0_[6] ),
        .O(\axlen_cnt[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFF88888888F8888)) 
    \axlen_cnt[7]_i_1__0 
       (.I0(\axlen_cnt_reg[7]_0 [14]),
        .I1(E),
        .I2(\axlen_cnt[8]_i_3__0_n_0 ),
        .I3(\axlen_cnt_reg_n_0_[6] ),
        .I4(\axlen_cnt[8]_i_4_n_0 ),
        .I5(\axlen_cnt_reg_n_0_[7] ),
        .O(\axlen_cnt[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFE000100)) 
    \axlen_cnt[8]_i_2__0 
       (.I0(\axlen_cnt_reg_n_0_[6] ),
        .I1(\axlen_cnt[8]_i_3__0_n_0 ),
        .I2(\axlen_cnt_reg_n_0_[7] ),
        .I3(\axlen_cnt[8]_i_4_n_0 ),
        .I4(\axlen_cnt_reg_n_0_[8] ),
        .O(\axlen_cnt[8]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \axlen_cnt[8]_i_3__0 
       (.I0(\axlen_cnt_reg_n_0_[4] ),
        .I1(\axlen_cnt_reg_n_0_[2] ),
        .I2(\axlen_cnt_reg_n_0_[0] ),
        .I3(\axlen_cnt_reg_n_0_[1] ),
        .I4(\axlen_cnt_reg_n_0_[3] ),
        .I5(\axlen_cnt_reg_n_0_[5] ),
        .O(\axlen_cnt[8]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \axlen_cnt[8]_i_4 
       (.I0(\axlen_cnt[8]_i_5_n_0 ),
        .I1(\axlen_cnt_reg_n_0_[2] ),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .I3(\axlen_cnt_reg_n_0_[4] ),
        .I4(\axlen_cnt_reg_n_0_[3] ),
        .I5(E),
        .O(\axlen_cnt[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axlen_cnt[8]_i_5 
       (.I0(\axlen_cnt_reg_n_0_[6] ),
        .I1(\axlen_cnt_reg_n_0_[5] ),
        .I2(\axlen_cnt_reg_n_0_[8] ),
        .I3(\axlen_cnt_reg_n_0_[7] ),
        .O(\axlen_cnt[8]_i_5_n_0 ));
  FDRE \axlen_cnt_reg[0] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_0 ),
        .D(\axlen_cnt[0]_i_1__1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[1] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_0 ),
        .D(\axlen_cnt[1]_i_1__2_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[2] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_0 ),
        .D(\axlen_cnt[2]_i_1__2_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[3] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_0 ),
        .D(\axlen_cnt[3]_i_1__2_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[4] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_0 ),
        .D(\axlen_cnt[4]_i_1__2_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[5] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_0 ),
        .D(\axlen_cnt[5]_i_1__0_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[6] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_0 ),
        .D(\axlen_cnt[6]_i_1__0_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[7] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_0 ),
        .D(\axlen_cnt[7]_i_1__0_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[8] 
       (.C(aclk),
        .CE(\axlen_cnt_reg[0]_0 ),
        .D(\axlen_cnt[8]_i_2__0_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[8] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF88B8B8)) 
    next_pending_r_i_2__1
       (.I0(\axlen_cnt[8]_i_4_n_0 ),
        .I1(r_push),
        .I2(next_pending_r),
        .I3(\axlen_cnt_reg[7]_0 [11]),
        .I4(E),
        .I5(s_axburst_eq0_reg_0),
        .O(next_pending_r_reg_0));
  FDRE next_pending_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(incr_next_pending),
        .Q(next_pending_r),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFEEE0EE)) 
    s_axburst_eq0_i_1__0
       (.I0(next_pending_r_reg_0),
        .I1(s_axburst_eq0_reg),
        .I2(sel_first_i),
        .I3(\axlen_cnt_reg[7]_0 [6]),
        .I4(wrap_next_pending),
        .O(\m_payload_i_reg[19] ));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_reg_1),
        .Q(sel_first_reg_0),
        .R(1'b0));
endmodule

module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_r_channel
   (\cnt_read_reg[1] ,
    r_full,
    m_axi_rready,
    out,
    r_push_r_reg_0,
    r_push,
    aclk,
    r_rlast,
    si_rs_rready,
    m_axi_rvalid,
    in,
    D,
    areset_d1);
  output \cnt_read_reg[1] ;
  output r_full;
  output m_axi_rready;
  output [33:0]out;
  output [2:0]r_push_r_reg_0;
  input r_push;
  input aclk;
  input r_rlast;
  input si_rs_rready;
  input m_axi_rvalid;
  input [33:0]in;
  input [1:0]D;
  input areset_d1;

  wire [1:0]D;
  wire a_full0;
  wire aclk;
  wire areset_d1;
  wire \cnt_read_reg[1] ;
  wire [33:0]in;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [33:0]out;
  wire r_full;
  wire r_push;
  wire r_push_r;
  wire [2:0]r_push_r_reg_0;
  wire r_rlast;
  wire rd_a_full;
  wire rd_data_fifo_0_n_0;
  wire si_rs_rready;
  wire [2:0]trans_in;
  wire transaction_fifo_0_n_0;

  FDRE \r_arid_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(trans_in[1]),
        .R(1'b0));
  FDRE \r_arid_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(trans_in[2]),
        .R(1'b0));
  FDRE r_push_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(r_push),
        .Q(r_push_r),
        .R(1'b0));
  FDRE r_rlast_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(r_rlast),
        .Q(trans_in[0]),
        .R(1'b0));
  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_simple_fifo__parameterized1 rd_data_fifo_0
       (.E(transaction_fifo_0_n_0),
        .a_full0(a_full0),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\cnt_read_reg[1]_0 (rd_data_fifo_0_n_0),
        .\cnt_read_reg[4]_0 (\cnt_read_reg[1] ),
        .in(in),
        .m_axi_rready(m_axi_rready),
        .m_axi_rvalid(m_axi_rvalid),
        .out(out),
        .rd_a_full(rd_a_full),
        .si_rs_rready(si_rs_rready));
  axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_simple_fifo__parameterized2 transaction_fifo_0
       (.E(transaction_fifo_0_n_0),
        .a_full0(a_full0),
        .aclk(aclk),
        .areset_d1(areset_d1),
        .\cnt_read_reg[0]_0 (rd_data_fifo_0_n_0),
        .\cnt_read_reg[1]_0 (\cnt_read_reg[1] ),
        .in(trans_in),
        .r_full(r_full),
        .r_push_r(r_push_r),
        .r_push_r_reg(r_push_r_reg_0),
        .rd_a_full(rd_a_full),
        .si_rs_rready(si_rs_rready));
endmodule

module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_rd_cmd_fsm
   (s_ready_i0,
    Q,
    \FSM_sequential_state_reg[1]_0 ,
    areset_d1_reg,
    areset_d1_reg_0,
    E,
    m_axi_arready_0,
    sel_first_i,
    D,
    \FSM_sequential_state_reg[1]_1 ,
    m_axi_arvalid,
    \FSM_sequential_state_reg[1]_2 ,
    \FSM_sequential_state_reg[1]_3 ,
    \FSM_sequential_state_reg[1]_4 ,
    si_rs_arvalid,
    s_axi_arvalid,
    s_ready_i_reg,
    areset_d1,
    m_axi_arready,
    \axaddr_incr_reg[0] ,
    sel_first_reg,
    sel_first_reg_0,
    O,
    \axaddr_wrap_reg[11] ,
    \axaddr_wrap_reg[11]_0 ,
    \axaddr_wrap_reg[7] ,
    \axaddr_wrap_reg[11]_1 ,
    \axaddr_wrap_reg[11]_2 ,
    \FSM_sequential_state_reg[0]_0 ,
    r_full,
    axaddr_offset,
    \wrap_cnt_r_reg[0] ,
    \wrap_cnt_r_reg[0]_0 ,
    aclk);
  output s_ready_i0;
  output [1:0]Q;
  output \FSM_sequential_state_reg[1]_0 ;
  output areset_d1_reg;
  output areset_d1_reg_0;
  output [0:0]E;
  output [0:0]m_axi_arready_0;
  output sel_first_i;
  output [11:0]D;
  output \FSM_sequential_state_reg[1]_1 ;
  output m_axi_arvalid;
  output [0:0]\FSM_sequential_state_reg[1]_2 ;
  output [0:0]\FSM_sequential_state_reg[1]_3 ;
  output [0:0]\FSM_sequential_state_reg[1]_4 ;
  input si_rs_arvalid;
  input s_axi_arvalid;
  input s_ready_i_reg;
  input areset_d1;
  input m_axi_arready;
  input \axaddr_incr_reg[0] ;
  input sel_first_reg;
  input sel_first_reg_0;
  input [3:0]O;
  input [11:0]\axaddr_wrap_reg[11] ;
  input [11:0]\axaddr_wrap_reg[11]_0 ;
  input [3:0]\axaddr_wrap_reg[7] ;
  input [3:0]\axaddr_wrap_reg[11]_1 ;
  input \axaddr_wrap_reg[11]_2 ;
  input \FSM_sequential_state_reg[0]_0 ;
  input r_full;
  input [0:0]axaddr_offset;
  input [0:0]\wrap_cnt_r_reg[0] ;
  input \wrap_cnt_r_reg[0]_0 ;
  input aclk;

  wire [11:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire [0:0]\FSM_sequential_state_reg[1]_2 ;
  wire [0:0]\FSM_sequential_state_reg[1]_3 ;
  wire [0:0]\FSM_sequential_state_reg[1]_4 ;
  wire [3:0]O;
  wire [1:0]Q;
  wire aclk;
  wire areset_d1;
  wire areset_d1_reg;
  wire areset_d1_reg_0;
  wire \axaddr_incr_reg[0] ;
  wire [0:0]axaddr_offset;
  wire \axaddr_wrap[11]_i_2_n_0 ;
  wire \axaddr_wrap[11]_i_4_n_0 ;
  wire [11:0]\axaddr_wrap_reg[11] ;
  wire [11:0]\axaddr_wrap_reg[11]_0 ;
  wire [3:0]\axaddr_wrap_reg[11]_1 ;
  wire \axaddr_wrap_reg[11]_2 ;
  wire [3:0]\axaddr_wrap_reg[7] ;
  wire m_axi_arready;
  wire [0:0]m_axi_arready_0;
  wire m_axi_arvalid;
  wire [1:0]next_state__0;
  wire r_full;
  wire s_axi_arvalid;
  wire s_ready_i0;
  wire s_ready_i_reg;
  wire sel_first_i;
  wire sel_first_reg;
  wire sel_first_reg_0;
  wire si_rs_arvalid;
  wire [0:0]\wrap_cnt_r_reg[0] ;
  wire \wrap_cnt_r_reg[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h77F755FF)) 
    \FSM_sequential_state[0]_i_1__0 
       (.I0(Q[1]),
        .I1(m_axi_arready),
        .I2(\FSM_sequential_state_reg[0]_0 ),
        .I3(r_full),
        .I4(Q[0]),
        .O(next_state__0[0]));
  LUT6 #(
    .INIT(64'hCE02CECECCCCCCCC)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(si_rs_arvalid),
        .I1(Q[1]),
        .I2(r_full),
        .I3(\FSM_sequential_state_reg[0]_0 ),
        .I4(m_axi_arready),
        .I5(Q[0]),
        .O(next_state__0[1]));
  (* FSM_ENCODED_STATES = "SM_IDLE:01,SM_DONE:00,SM_CMD_ACCEPTED:10,SM_CMD_EN:11" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(next_state__0[0]),
        .Q(Q[0]),
        .S(areset_d1));
  (* FSM_ENCODED_STATES = "SM_IDLE:01,SM_DONE:00,SM_CMD_ACCEPTED:10,SM_CMD_EN:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(next_state__0[1]),
        .Q(Q[1]),
        .R(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \axaddr_incr[11]_i_1__0 
       (.I0(\axaddr_incr_reg[0] ),
        .I1(m_axi_arready),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(E));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[0]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(O[0]),
        .I2(\axaddr_wrap_reg[11] [0]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(\axaddr_wrap_reg[11]_0 [0]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[10]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(\axaddr_wrap_reg[11]_1 [2]),
        .I2(\axaddr_wrap_reg[11] [10]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(\axaddr_wrap_reg[11]_0 [10]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[11]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(\axaddr_wrap_reg[11]_1 [3]),
        .I2(\axaddr_wrap_reg[11] [11]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(\axaddr_wrap_reg[11]_0 [11]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \axaddr_wrap[11]_i_2 
       (.I0(m_axi_arready),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(\axaddr_wrap_reg[11]_2 ),
        .O(\axaddr_wrap[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \axaddr_wrap[11]_i_4 
       (.I0(\axaddr_wrap_reg[11]_2 ),
        .I1(m_axi_arready),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\axaddr_wrap[11]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[1]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(O[1]),
        .I2(\axaddr_wrap_reg[11] [1]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(\axaddr_wrap_reg[11]_0 [1]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[2]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(O[2]),
        .I2(\axaddr_wrap_reg[11] [2]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(\axaddr_wrap_reg[11]_0 [2]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[3]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(O[3]),
        .I2(\axaddr_wrap_reg[11] [3]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(\axaddr_wrap_reg[11]_0 [3]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[4]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(\axaddr_wrap_reg[7] [0]),
        .I2(\axaddr_wrap_reg[11] [4]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(\axaddr_wrap_reg[11]_0 [4]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[5]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(\axaddr_wrap_reg[7] [1]),
        .I2(\axaddr_wrap_reg[11] [5]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(\axaddr_wrap_reg[11]_0 [5]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[6]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(\axaddr_wrap_reg[7] [2]),
        .I2(\axaddr_wrap_reg[11] [6]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(\axaddr_wrap_reg[11]_0 [6]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[7]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(\axaddr_wrap_reg[7] [3]),
        .I2(\axaddr_wrap_reg[11] [7]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(\axaddr_wrap_reg[11]_0 [7]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[8]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(\axaddr_wrap_reg[11]_1 [0]),
        .I2(\axaddr_wrap_reg[11] [8]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(\axaddr_wrap_reg[11]_0 [8]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hFFFF88F888F888F8)) 
    \axaddr_wrap[9]_i_1 
       (.I0(\axaddr_wrap[11]_i_2_n_0 ),
        .I1(\axaddr_wrap_reg[11]_1 [1]),
        .I2(\axaddr_wrap_reg[11] [9]),
        .I3(\FSM_sequential_state_reg[1]_1 ),
        .I4(\axaddr_wrap_reg[11]_0 [9]),
        .I5(\axaddr_wrap[11]_i_4_n_0 ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA0C0)) 
    \axlen_cnt[8]_i_1__0 
       (.I0(m_axi_arready),
        .I1(si_rs_arvalid),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(m_axi_arready_0));
  LUT2 #(
    .INIT(4'h8)) 
    m_axi_arvalid_INST_0
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(m_axi_arvalid));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h1F)) 
    \m_payload_i[14]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(si_rs_arvalid),
        .O(\FSM_sequential_state_reg[1]_4 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFE0FFFF)) 
    m_valid_i_i_1__2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(si_rs_arvalid),
        .I3(s_axi_arvalid),
        .I4(s_ready_i_reg),
        .O(\FSM_sequential_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    r_push_r_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(m_axi_arready),
        .O(\FSM_sequential_state_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h1FFF1F1F)) 
    s_ready_i_i_1__2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(si_rs_arvalid),
        .I3(s_axi_arvalid),
        .I4(s_ready_i_reg),
        .O(s_ready_i0));
  LUT6 #(
    .INIT(64'hAFFFFFFFAEAAAEAA)) 
    sel_first_i_1__2
       (.I0(areset_d1),
        .I1(si_rs_arvalid),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_arready),
        .I5(\axaddr_incr_reg[0] ),
        .O(areset_d1_reg));
  LUT6 #(
    .INIT(64'hAFFFFFFFAEAAAEAA)) 
    sel_first_i_1__3
       (.I0(areset_d1),
        .I1(si_rs_arvalid),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(m_axi_arready),
        .I5(sel_first_reg),
        .O(areset_d1_reg_0));
  LUT6 #(
    .INIT(64'hF4FFFCFCF4FCFCFC)) 
    sel_first_i_1__4
       (.I0(m_axi_arready),
        .I1(sel_first_reg_0),
        .I2(areset_d1),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(si_rs_arvalid),
        .O(sel_first_i));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \wrap_boundary_axaddr_r[11]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(si_rs_arvalid),
        .O(\FSM_sequential_state_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h4000FFBFBFBF0000)) 
    \wrap_cnt_r[0]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(si_rs_arvalid),
        .I3(axaddr_offset),
        .I4(\wrap_cnt_r_reg[0] ),
        .I5(\wrap_cnt_r_reg[0]_0 ),
        .O(\FSM_sequential_state_reg[1]_2 ));
endmodule

module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_simple_fifo
   (\FSM_sequential_state_reg[0] ,
    \cnt_read_reg[0]_0 ,
    SR,
    bresp_push,
    \cnt_read_reg[1]_0 ,
    out,
    \FSM_sequential_state_reg[0]_0 ,
    s_axburst_eq0,
    \FSM_sequential_state_reg[0]_1 ,
    s_axburst_eq1,
    m_axi_awready,
    areset_d1,
    mhandshake_r,
    Q,
    b_push,
    in,
    aclk,
    shandshake_r);
  output [0:0]\FSM_sequential_state_reg[0] ;
  output \cnt_read_reg[0]_0 ;
  output [0:0]SR;
  output bresp_push;
  output \cnt_read_reg[1]_0 ;
  output [1:0]out;
  input [1:0]\FSM_sequential_state_reg[0]_0 ;
  input s_axburst_eq0;
  input [0:0]\FSM_sequential_state_reg[0]_1 ;
  input s_axburst_eq1;
  input m_axi_awready;
  input areset_d1;
  input mhandshake_r;
  input [7:0]Q;
  input b_push;
  input [9:0]in;
  input aclk;
  input shandshake_r;

  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire [0:0]\FSM_sequential_state_reg[0] ;
  wire [1:0]\FSM_sequential_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_state_reg[0]_1 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire areset_d1;
  wire b_push;
  wire \bresp_cnt[7]_i_3_n_0 ;
  wire \bresp_cnt[7]_i_4_n_0 ;
  wire \bresp_cnt[7]_i_6_n_0 ;
  wire bresp_push;
  wire [1:0]cnt_read;
  wire \cnt_read[0]_i_1_n_0 ;
  wire \cnt_read[1]_i_1_n_0 ;
  wire \cnt_read_reg[0]_0 ;
  wire \cnt_read_reg[1]_0 ;
  wire [9:0]in;
  wire m_axi_awready;
  wire \memory_reg[3][0]_srl4_i_2__0_n_0 ;
  wire \memory_reg[3][0]_srl4_i_3_n_0 ;
  wire \memory_reg[3][0]_srl4_i_4_n_0 ;
  wire \memory_reg[3][0]_srl4_n_0 ;
  wire \memory_reg[3][1]_srl4_n_0 ;
  wire \memory_reg[3][2]_srl4_n_0 ;
  wire \memory_reg[3][3]_srl4_n_0 ;
  wire \memory_reg[3][4]_srl4_n_0 ;
  wire \memory_reg[3][5]_srl4_n_0 ;
  wire \memory_reg[3][6]_srl4_n_0 ;
  wire \memory_reg[3][7]_srl4_n_0 ;
  wire mhandshake_r;
  wire [1:0]out;
  wire s_axburst_eq0;
  wire s_axburst_eq1;
  wire shandshake_r;

  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h55FFFBFB)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state_reg[0]_0 [0]),
        .I1(cnt_read[1]),
        .I2(cnt_read[0]),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\FSM_sequential_state_reg[0]_0 [1]),
        .O(\FSM_sequential_state_reg[0] ));
  LUT6 #(
    .INIT(64'hFFF444F400000000)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(cnt_read[0]),
        .I1(cnt_read[1]),
        .I2(s_axburst_eq0),
        .I3(\FSM_sequential_state_reg[0]_1 ),
        .I4(s_axburst_eq1),
        .I5(m_axi_awready),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABABABA)) 
    \bresp_cnt[7]_i_1 
       (.I0(areset_d1),
        .I1(\bresp_cnt[7]_i_3_n_0 ),
        .I2(mhandshake_r),
        .I3(cnt_read[1]),
        .I4(cnt_read[0]),
        .I5(\bresp_cnt[7]_i_4_n_0 ),
        .O(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFBEFFFFBE)) 
    \bresp_cnt[7]_i_3 
       (.I0(\memory_reg[3][0]_srl4_i_4_n_0 ),
        .I1(Q[3]),
        .I2(\memory_reg[3][3]_srl4_n_0 ),
        .I3(Q[4]),
        .I4(\memory_reg[3][4]_srl4_n_0 ),
        .I5(\bresp_cnt[7]_i_6_n_0 ),
        .O(\bresp_cnt[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \bresp_cnt[7]_i_4 
       (.I0(Q[6]),
        .I1(\memory_reg[3][6]_srl4_n_0 ),
        .I2(Q[7]),
        .I3(\memory_reg[3][7]_srl4_n_0 ),
        .O(\bresp_cnt[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \bresp_cnt[7]_i_6 
       (.I0(Q[2]),
        .I1(\memory_reg[3][2]_srl4_n_0 ),
        .I2(Q[5]),
        .I3(\memory_reg[3][5]_srl4_n_0 ),
        .O(\bresp_cnt[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    bvalid_i_i_3
       (.I0(cnt_read[1]),
        .I1(cnt_read[0]),
        .O(\cnt_read_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[0]_i_1 
       (.I0(shandshake_r),
        .I1(b_push),
        .I2(cnt_read[0]),
        .O(\cnt_read[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'hE718)) 
    \cnt_read[1]_i_1 
       (.I0(cnt_read[0]),
        .I1(b_push),
        .I2(shandshake_r),
        .I3(cnt_read[1]),
        .O(\cnt_read[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_i_1_n_0 ),
        .Q(cnt_read[0]),
        .S(areset_d1));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[1]_i_1_n_0 ),
        .Q(cnt_read[1]),
        .S(areset_d1));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][0]_srl4 
       (.A0(cnt_read[0]),
        .A1(cnt_read[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[0]),
        .Q(\memory_reg[3][0]_srl4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000082000082)) 
    \memory_reg[3][0]_srl4_i_1 
       (.I0(\memory_reg[3][0]_srl4_i_2__0_n_0 ),
        .I1(Q[2]),
        .I2(\memory_reg[3][2]_srl4_n_0 ),
        .I3(Q[5]),
        .I4(\memory_reg[3][5]_srl4_n_0 ),
        .I5(\memory_reg[3][0]_srl4_i_3_n_0 ),
        .O(bresp_push));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \memory_reg[3][0]_srl4_i_2 
       (.I0(cnt_read[0]),
        .I1(cnt_read[1]),
        .O(\cnt_read_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h8008000000008008)) 
    \memory_reg[3][0]_srl4_i_2__0 
       (.I0(mhandshake_r),
        .I1(\cnt_read_reg[1]_0 ),
        .I2(\memory_reg[3][7]_srl4_n_0 ),
        .I3(Q[7]),
        .I4(\memory_reg[3][6]_srl4_n_0 ),
        .I5(Q[6]),
        .O(\memory_reg[3][0]_srl4_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF6FF6)) 
    \memory_reg[3][0]_srl4_i_3 
       (.I0(\memory_reg[3][4]_srl4_n_0 ),
        .I1(Q[4]),
        .I2(\memory_reg[3][3]_srl4_n_0 ),
        .I3(Q[3]),
        .I4(\memory_reg[3][0]_srl4_i_4_n_0 ),
        .O(\memory_reg[3][0]_srl4_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \memory_reg[3][0]_srl4_i_4 
       (.I0(Q[0]),
        .I1(\memory_reg[3][0]_srl4_n_0 ),
        .I2(Q[1]),
        .I3(\memory_reg[3][1]_srl4_n_0 ),
        .O(\memory_reg[3][0]_srl4_i_4_n_0 ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][1]_srl4 
       (.A0(cnt_read[0]),
        .A1(cnt_read[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[1]),
        .Q(\memory_reg[3][1]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][2]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][2]_srl4 
       (.A0(cnt_read[0]),
        .A1(cnt_read[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[2]),
        .Q(\memory_reg[3][2]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][3]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][3]_srl4 
       (.A0(cnt_read[0]),
        .A1(cnt_read[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[3]),
        .Q(\memory_reg[3][3]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][4]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][4]_srl4 
       (.A0(cnt_read[0]),
        .A1(cnt_read[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[4]),
        .Q(\memory_reg[3][4]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][5]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][5]_srl4 
       (.A0(cnt_read[0]),
        .A1(cnt_read[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[5]),
        .Q(\memory_reg[3][5]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][6]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][6]_srl4 
       (.A0(cnt_read[0]),
        .A1(cnt_read[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[6]),
        .Q(\memory_reg[3][6]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][7]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][7]_srl4 
       (.A0(cnt_read[0]),
        .A1(cnt_read[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[7]),
        .Q(\memory_reg[3][7]_srl4_n_0 ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][8]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][8]_srl4 
       (.A0(cnt_read[0]),
        .A1(cnt_read[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[8]),
        .Q(out[0]));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bid_fifo_0/memory_reg[3][9]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][9]_srl4 
       (.A0(cnt_read[0]),
        .A1(cnt_read[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(b_push),
        .CLK(aclk),
        .D(in[9]),
        .Q(out[1]));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_b2s_simple_fifo" *) 
module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_simple_fifo__parameterized0
   (areset_d1_reg,
    m_axi_bready,
    mhandshake,
    \s_bresp_acc_reg[1] ,
    areset_d1,
    bvalid_i_reg,
    shandshake_r,
    si_rs_bready,
    si_rs_bvalid,
    mhandshake_r,
    m_axi_bvalid,
    bresp_push,
    in,
    aclk);
  output areset_d1_reg;
  output m_axi_bready;
  output mhandshake;
  output [1:0]\s_bresp_acc_reg[1] ;
  input areset_d1;
  input bvalid_i_reg;
  input shandshake_r;
  input si_rs_bready;
  input si_rs_bvalid;
  input mhandshake_r;
  input m_axi_bvalid;
  input bresp_push;
  input [1:0]in;
  input aclk;

  wire aclk;
  wire areset_d1;
  wire areset_d1_reg;
  wire bresp_push;
  wire bvalid_i_i_2_n_0;
  wire bvalid_i_reg;
  wire [1:0]cnt_read;
  wire \cnt_read[0]_i_1_n_0 ;
  wire \cnt_read[1]_i_1_n_0 ;
  wire [1:0]in;
  wire m_axi_bready;
  wire m_axi_bvalid;
  wire mhandshake;
  wire mhandshake_r;
  wire [1:0]\s_bresp_acc_reg[1] ;
  wire shandshake_r;
  wire si_rs_bready;
  wire si_rs_bvalid;

  LUT6 #(
    .INIT(64'h0000555500400040)) 
    bvalid_i_i_1
       (.I0(areset_d1),
        .I1(bvalid_i_i_2_n_0),
        .I2(bvalid_i_reg),
        .I3(shandshake_r),
        .I4(si_rs_bready),
        .I5(si_rs_bvalid),
        .O(areset_d1_reg));
  LUT2 #(
    .INIT(4'h7)) 
    bvalid_i_i_2
       (.I0(cnt_read[0]),
        .I1(cnt_read[1]),
        .O(bvalid_i_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[0]_i_1 
       (.I0(shandshake_r),
        .I1(bresp_push),
        .I2(cnt_read[0]),
        .O(\cnt_read[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'hE718)) 
    \cnt_read[1]_i_1 
       (.I0(cnt_read[0]),
        .I1(bresp_push),
        .I2(shandshake_r),
        .I3(cnt_read[1]),
        .O(\cnt_read[1]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[0]_i_1_n_0 ),
        .Q(cnt_read[0]),
        .S(areset_d1));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\cnt_read[1]_i_1_n_0 ),
        .Q(cnt_read[1]),
        .S(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h08)) 
    m_axi_bready_INST_0
       (.I0(cnt_read[1]),
        .I1(cnt_read[0]),
        .I2(mhandshake_r),
        .O(m_axi_bready));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3][0]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][0]_srl4 
       (.A0(cnt_read[0]),
        .A1(cnt_read[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(bresp_push),
        .CLK(aclk),
        .D(in[0]),
        .Q(\s_bresp_acc_reg[1] [0]));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/WR.b_channel_0/bresp_fifo_0/memory_reg[3][1]_srl4 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \memory_reg[3][1]_srl4 
       (.A0(cnt_read[0]),
        .A1(cnt_read[1]),
        .A2(1'b0),
        .A3(1'b0),
        .CE(bresp_push),
        .CLK(aclk),
        .D(in[1]),
        .Q(\s_bresp_acc_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    mhandshake_r_i_1
       (.I0(mhandshake_r),
        .I1(m_axi_bvalid),
        .I2(cnt_read[1]),
        .I3(cnt_read[0]),
        .O(mhandshake));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_b2s_simple_fifo" *) 
module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_simple_fifo__parameterized1
   (\cnt_read_reg[1]_0 ,
    m_axi_rready,
    rd_a_full,
    a_full0,
    out,
    \cnt_read_reg[4]_0 ,
    si_rs_rready,
    m_axi_rvalid,
    in,
    aclk,
    areset_d1,
    E);
  output \cnt_read_reg[1]_0 ;
  output m_axi_rready;
  output rd_a_full;
  output a_full0;
  output [33:0]out;
  input \cnt_read_reg[4]_0 ;
  input si_rs_rready;
  input m_axi_rvalid;
  input [33:0]in;
  input aclk;
  input areset_d1;
  input [0:0]E;

  wire [0:0]E;
  wire a_full0;
  wire aclk;
  wire areset_d1;
  wire \cnt_read[0]_i_1_n_0 ;
  wire \cnt_read[1]_i_1__0_n_0 ;
  wire \cnt_read[2]_i_1__0_n_0 ;
  wire \cnt_read[3]_i_1__0_n_0 ;
  wire \cnt_read[4]_i_2__0_n_0 ;
  wire \cnt_read[4]_i_4_n_0 ;
  wire [4:0]cnt_read_reg;
  wire \cnt_read_reg[1]_0 ;
  wire \cnt_read_reg[4]_0 ;
  wire [33:0]in;
  wire m_axi_rready;
  wire m_axi_rvalid;
  wire [33:0]out;
  wire rd_a_full;
  wire si_rs_rready;
  wire wr_en0;
  wire \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][10]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][11]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][12]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][13]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][14]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][15]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][16]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][17]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][18]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][19]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][20]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][21]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][22]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][23]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][24]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][25]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][26]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][27]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][28]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][29]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][30]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][31]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][32]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][33]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][3]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][4]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][5]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][6]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][7]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][8]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][9]_srl32_Q31_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7000C000)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(cnt_read_reg[0]),
        .I1(cnt_read_reg[2]),
        .I2(cnt_read_reg[4]),
        .I3(cnt_read_reg[3]),
        .I4(cnt_read_reg[1]),
        .O(rd_a_full));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_read[0]_i_1 
       (.I0(cnt_read_reg[0]),
        .O(\cnt_read[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[1]_i_1__0 
       (.I0(\cnt_read[4]_i_4_n_0 ),
        .I1(cnt_read_reg[0]),
        .I2(cnt_read_reg[1]),
        .O(\cnt_read[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hA69A)) 
    \cnt_read[2]_i_1__0 
       (.I0(cnt_read_reg[2]),
        .I1(cnt_read_reg[1]),
        .I2(\cnt_read[4]_i_4_n_0 ),
        .I3(cnt_read_reg[0]),
        .O(\cnt_read[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h9AAAAAA6)) 
    \cnt_read[3]_i_1__0 
       (.I0(cnt_read_reg[3]),
        .I1(\cnt_read[4]_i_4_n_0 ),
        .I2(cnt_read_reg[0]),
        .I3(cnt_read_reg[1]),
        .I4(cnt_read_reg[2]),
        .O(\cnt_read[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAA6)) 
    \cnt_read[4]_i_2__0 
       (.I0(cnt_read_reg[4]),
        .I1(\cnt_read[4]_i_4_n_0 ),
        .I2(cnt_read_reg[0]),
        .I3(cnt_read_reg[1]),
        .I4(cnt_read_reg[2]),
        .I5(cnt_read_reg[3]),
        .O(\cnt_read[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h4080C080FFFFFFFF)) 
    \cnt_read[4]_i_3__0 
       (.I0(cnt_read_reg[1]),
        .I1(cnt_read_reg[3]),
        .I2(cnt_read_reg[4]),
        .I3(cnt_read_reg[2]),
        .I4(cnt_read_reg[0]),
        .I5(m_axi_rvalid),
        .O(\cnt_read_reg[1]_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \cnt_read[4]_i_4 
       (.I0(\cnt_read_reg[1]_0 ),
        .I1(\cnt_read_reg[4]_0 ),
        .I2(si_rs_rready),
        .O(\cnt_read[4]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\cnt_read[0]_i_1_n_0 ),
        .Q(cnt_read_reg[0]),
        .S(areset_d1));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\cnt_read[1]_i_1__0_n_0 ),
        .Q(cnt_read_reg[1]),
        .S(areset_d1));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\cnt_read[2]_i_1__0_n_0 ),
        .Q(cnt_read_reg[2]),
        .S(areset_d1));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\cnt_read[3]_i_1__0_n_0 ),
        .Q(cnt_read_reg[3]),
        .S(areset_d1));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(\cnt_read[4]_i_2__0_n_0 ),
        .Q(cnt_read_reg[4]),
        .S(areset_d1));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hBF7F3F7F)) 
    m_axi_rready_INST_0
       (.I0(cnt_read_reg[1]),
        .I1(cnt_read_reg[3]),
        .I2(cnt_read_reg[4]),
        .I3(cnt_read_reg[2]),
        .I4(cnt_read_reg[0]),
        .O(m_axi_rready));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    m_valid_i_i_3
       (.I0(cnt_read_reg[1]),
        .I1(cnt_read_reg[3]),
        .I2(cnt_read_reg[4]),
        .I3(cnt_read_reg[2]),
        .I4(cnt_read_reg[0]),
        .O(a_full0));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][0]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[0]),
        .Q(out[0]),
        .Q31(\NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED ));
  LUT6 #(
    .INIT(64'h80AAAAAA0AAAAAAA)) 
    \memory_reg[31][0]_srl32_i_1 
       (.I0(m_axi_rvalid),
        .I1(cnt_read_reg[0]),
        .I2(cnt_read_reg[2]),
        .I3(cnt_read_reg[4]),
        .I4(cnt_read_reg[3]),
        .I5(cnt_read_reg[1]),
        .O(wr_en0));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][10]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][10]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[10]),
        .Q(out[10]),
        .Q31(\NLW_memory_reg[31][10]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][11]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][11]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[11]),
        .Q(out[11]),
        .Q31(\NLW_memory_reg[31][11]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][12]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][12]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[12]),
        .Q(out[12]),
        .Q31(\NLW_memory_reg[31][12]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][13]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][13]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[13]),
        .Q(out[13]),
        .Q31(\NLW_memory_reg[31][13]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][14]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][14]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[14]),
        .Q(out[14]),
        .Q31(\NLW_memory_reg[31][14]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][15]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][15]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[15]),
        .Q(out[15]),
        .Q31(\NLW_memory_reg[31][15]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][16]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][16]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[16]),
        .Q(out[16]),
        .Q31(\NLW_memory_reg[31][16]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][17]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][17]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[17]),
        .Q(out[17]),
        .Q31(\NLW_memory_reg[31][17]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][18]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][18]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[18]),
        .Q(out[18]),
        .Q31(\NLW_memory_reg[31][18]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][19]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][19]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[19]),
        .Q(out[19]),
        .Q31(\NLW_memory_reg[31][19]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][1]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[1]),
        .Q(out[1]),
        .Q31(\NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][20]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][20]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[20]),
        .Q(out[20]),
        .Q31(\NLW_memory_reg[31][20]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][21]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][21]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[21]),
        .Q(out[21]),
        .Q31(\NLW_memory_reg[31][21]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][22]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][22]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[22]),
        .Q(out[22]),
        .Q31(\NLW_memory_reg[31][22]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][23]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][23]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[23]),
        .Q(out[23]),
        .Q31(\NLW_memory_reg[31][23]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][24]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][24]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[24]),
        .Q(out[24]),
        .Q31(\NLW_memory_reg[31][24]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][25]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][25]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[25]),
        .Q(out[25]),
        .Q31(\NLW_memory_reg[31][25]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][26]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][26]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[26]),
        .Q(out[26]),
        .Q31(\NLW_memory_reg[31][26]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][27]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][27]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[27]),
        .Q(out[27]),
        .Q31(\NLW_memory_reg[31][27]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][28]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][28]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[28]),
        .Q(out[28]),
        .Q31(\NLW_memory_reg[31][28]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][29]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][29]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[29]),
        .Q(out[29]),
        .Q31(\NLW_memory_reg[31][29]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][2]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[2]),
        .Q(out[2]),
        .Q31(\NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][30]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][30]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[30]),
        .Q(out[30]),
        .Q31(\NLW_memory_reg[31][30]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][31]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[31]),
        .Q(out[31]),
        .Q31(\NLW_memory_reg[31][31]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][32]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][32]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[32]),
        .Q(out[32]),
        .Q31(\NLW_memory_reg[31][32]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][33]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][33]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[33]),
        .Q(out[33]),
        .Q31(\NLW_memory_reg[31][33]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][3]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][3]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[3]),
        .Q(out[3]),
        .Q31(\NLW_memory_reg[31][3]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][4]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][4]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[4]),
        .Q(out[4]),
        .Q31(\NLW_memory_reg[31][4]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][5]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][5]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[5]),
        .Q(out[5]),
        .Q31(\NLW_memory_reg[31][5]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][6]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][6]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[6]),
        .Q(out[6]),
        .Q31(\NLW_memory_reg[31][6]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][7]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][7]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[7]),
        .Q(out[7]),
        .Q31(\NLW_memory_reg[31][7]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][8]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][8]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[8]),
        .Q(out[8]),
        .Q31(\NLW_memory_reg[31][8]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/rd_data_fifo_0/memory_reg[31][9]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][9]_srl32 
       (.A(cnt_read_reg),
        .CE(wr_en0),
        .CLK(aclk),
        .D(in[9]),
        .Q(out[9]),
        .Q31(\NLW_memory_reg[31][9]_srl32_Q31_UNCONNECTED ));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_b2s_simple_fifo" *) 
module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_simple_fifo__parameterized2
   (E,
    \cnt_read_reg[1]_0 ,
    r_full,
    r_push_r_reg,
    si_rs_rready,
    \cnt_read_reg[0]_0 ,
    r_push_r,
    a_full0,
    rd_a_full,
    in,
    aclk,
    areset_d1);
  output [0:0]E;
  output \cnt_read_reg[1]_0 ;
  output r_full;
  output [2:0]r_push_r_reg;
  input si_rs_rready;
  input \cnt_read_reg[0]_0 ;
  input r_push_r;
  input a_full0;
  input rd_a_full;
  input [2:0]in;
  input aclk;
  input areset_d1;

  wire [0:0]E;
  wire a_full0;
  wire aclk;
  wire areset_d1;
  wire \cnt_read[0]_i_1__0_n_0 ;
  wire \cnt_read[1]_i_1_n_0 ;
  wire \cnt_read[2]_i_1_n_0 ;
  wire \cnt_read[3]_i_1_n_0 ;
  wire \cnt_read[4]_i_1__0_n_0 ;
  wire \cnt_read[4]_i_2_n_0 ;
  wire \cnt_read[4]_i_3_n_0 ;
  wire [4:0]cnt_read_reg;
  wire \cnt_read_reg[0]_0 ;
  wire \cnt_read_reg[1]_0 ;
  wire [2:0]in;
  wire r_full;
  wire r_push_r;
  wire [2:0]r_push_r_reg;
  wire rd_a_full;
  wire si_rs_rready;
  wire \NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED ;
  wire \NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF40C0C000)) 
    \FSM_sequential_state[1]_i_2__0 
       (.I0(cnt_read_reg[0]),
        .I1(cnt_read_reg[4]),
        .I2(cnt_read_reg[3]),
        .I3(cnt_read_reg[2]),
        .I4(cnt_read_reg[1]),
        .I5(rd_a_full),
        .O(r_full));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_read[0]_i_1__0 
       (.I0(cnt_read_reg[0]),
        .O(\cnt_read[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cnt_read[1]_i_1 
       (.I0(cnt_read_reg[1]),
        .I1(cnt_read_reg[0]),
        .I2(\cnt_read[4]_i_3_n_0 ),
        .O(\cnt_read[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hA96A)) 
    \cnt_read[2]_i_1 
       (.I0(cnt_read_reg[2]),
        .I1(cnt_read_reg[1]),
        .I2(cnt_read_reg[0]),
        .I3(\cnt_read[4]_i_3_n_0 ),
        .O(\cnt_read[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hA6AAAA9A)) 
    \cnt_read[3]_i_1 
       (.I0(cnt_read_reg[3]),
        .I1(cnt_read_reg[0]),
        .I2(\cnt_read[4]_i_3_n_0 ),
        .I3(cnt_read_reg[1]),
        .I4(cnt_read_reg[2]),
        .O(\cnt_read[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h2D)) 
    \cnt_read[4]_i_1 
       (.I0(si_rs_rready),
        .I1(\cnt_read_reg[1]_0 ),
        .I2(\cnt_read_reg[0]_0 ),
        .O(E));
  LUT3 #(
    .INIT(8'hD2)) 
    \cnt_read[4]_i_1__0 
       (.I0(si_rs_rready),
        .I1(\cnt_read_reg[1]_0 ),
        .I2(r_push_r),
        .O(\cnt_read[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAAAAAAAA9A)) 
    \cnt_read[4]_i_2 
       (.I0(cnt_read_reg[4]),
        .I1(cnt_read_reg[0]),
        .I2(\cnt_read[4]_i_3_n_0 ),
        .I3(cnt_read_reg[1]),
        .I4(cnt_read_reg[2]),
        .I5(cnt_read_reg[3]),
        .O(\cnt_read[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \cnt_read[4]_i_3 
       (.I0(\cnt_read_reg[1]_0 ),
        .I1(si_rs_rready),
        .I2(r_push_r),
        .O(\cnt_read[4]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[0] 
       (.C(aclk),
        .CE(\cnt_read[4]_i_1__0_n_0 ),
        .D(\cnt_read[0]_i_1__0_n_0 ),
        .Q(cnt_read_reg[0]),
        .S(areset_d1));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[1] 
       (.C(aclk),
        .CE(\cnt_read[4]_i_1__0_n_0 ),
        .D(\cnt_read[1]_i_1_n_0 ),
        .Q(cnt_read_reg[1]),
        .S(areset_d1));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[2] 
       (.C(aclk),
        .CE(\cnt_read[4]_i_1__0_n_0 ),
        .D(\cnt_read[2]_i_1_n_0 ),
        .Q(cnt_read_reg[2]),
        .S(areset_d1));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[3] 
       (.C(aclk),
        .CE(\cnt_read[4]_i_1__0_n_0 ),
        .D(\cnt_read[3]_i_1_n_0 ),
        .Q(cnt_read_reg[3]),
        .S(areset_d1));
  FDSE #(
    .INIT(1'b1)) 
    \cnt_read_reg[4] 
       (.C(aclk),
        .CE(\cnt_read[4]_i_1__0_n_0 ),
        .D(\cnt_read[4]_i_2_n_0 ),
        .Q(cnt_read_reg[4]),
        .S(areset_d1));
  LUT6 #(
    .INIT(64'h80000000FFFFFFFF)) 
    m_valid_i_i_2
       (.I0(cnt_read_reg[1]),
        .I1(cnt_read_reg[2]),
        .I2(cnt_read_reg[3]),
        .I3(cnt_read_reg[4]),
        .I4(cnt_read_reg[0]),
        .I5(a_full0),
        .O(\cnt_read_reg[1]_0 ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][0]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][0]_srl32 
       (.A(cnt_read_reg),
        .CE(r_push_r),
        .CLK(aclk),
        .D(in[0]),
        .Q(r_push_r_reg[0]),
        .Q31(\NLW_memory_reg[31][0]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][1]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][1]_srl32 
       (.A(cnt_read_reg),
        .CE(r_push_r),
        .CLK(aclk),
        .D(in[1]),
        .Q(r_push_r_reg[1]),
        .Q31(\NLW_memory_reg[31][1]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31] " *) 
  (* srl_name = "inst/\\gen_axilite.gen_b2s_conv.axilite_b2s/RD.r_channel_0/transaction_fifo_0/memory_reg[31][2]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \memory_reg[31][2]_srl32 
       (.A(cnt_read_reg),
        .CE(r_push_r),
        .CLK(aclk),
        .D(in[2]),
        .Q(r_push_r_reg[2]),
        .Q31(\NLW_memory_reg[31][2]_srl32_Q31_UNCONNECTED ));
endmodule

module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_wr_cmd_fsm
   (\FSM_sequential_state_reg[1]_0 ,
    Q,
    next,
    \FSM_sequential_state_reg[1]_1 ,
    \m_payload_i_reg[19] ,
    sel_first_i,
    \m_payload_i_reg[19]_0 ,
    incr_next_pending,
    E,
    m_axi_awready_0,
    m_valid_i_reg,
    b_push,
    D,
    \FSM_sequential_state_reg[1]_2 ,
    m_axi_awvalid,
    si_rs_awvalid,
    areset_d1,
    sel_first_reg,
    sel_first,
    next_pending_r_reg,
    wrap_next_pending,
    next_pending_r_reg_0,
    next_pending_r,
    next_pending_r_reg_1,
    m_axi_awready,
    \axaddr_wrap_reg[0] ,
    \axaddr_wrap_reg[0]_0 ,
    sel_first_reg_0,
    \axlen_cnt_reg[0] ,
    \axlen_cnt_reg[0]_0 ,
    \wrap_cnt_r_reg[0] ,
    \wrap_cnt_r_reg[0]_0 ,
    \wrap_cnt_r_reg[0]_1 ,
    aclk,
    \FSM_sequential_state_reg[0]_0 );
  output \FSM_sequential_state_reg[1]_0 ;
  output [1:0]Q;
  output next;
  output \FSM_sequential_state_reg[1]_1 ;
  output \m_payload_i_reg[19] ;
  output sel_first_i;
  output \m_payload_i_reg[19]_0 ;
  output incr_next_pending;
  output [0:0]E;
  output [0:0]m_axi_awready_0;
  output [0:0]m_valid_i_reg;
  output b_push;
  output [0:0]D;
  output [0:0]\FSM_sequential_state_reg[1]_2 ;
  output m_axi_awvalid;
  input si_rs_awvalid;
  input areset_d1;
  input sel_first_reg;
  input sel_first;
  input [5:0]next_pending_r_reg;
  input wrap_next_pending;
  input next_pending_r_reg_0;
  input next_pending_r;
  input next_pending_r_reg_1;
  input m_axi_awready;
  input \axaddr_wrap_reg[0] ;
  input \axaddr_wrap_reg[0]_0 ;
  input sel_first_reg_0;
  input [0:0]\axlen_cnt_reg[0] ;
  input \axlen_cnt_reg[0]_0 ;
  input [0:0]\wrap_cnt_r_reg[0] ;
  input [0:0]\wrap_cnt_r_reg[0]_0 ;
  input \wrap_cnt_r_reg[0]_1 ;
  input aclk;
  input [0:0]\FSM_sequential_state_reg[0]_0 ;

  wire [0:0]D;
  wire [0:0]E;
  wire [0:0]\FSM_sequential_state_reg[0]_0 ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire \FSM_sequential_state_reg[1]_1 ;
  wire [0:0]\FSM_sequential_state_reg[1]_2 ;
  wire [1:0]Q;
  wire aclk;
  wire areset_d1;
  wire \axaddr_wrap_reg[0] ;
  wire \axaddr_wrap_reg[0]_0 ;
  wire [0:0]\axlen_cnt_reg[0] ;
  wire \axlen_cnt_reg[0]_0 ;
  wire b_push;
  wire incr_next_pending;
  wire m_axi_awready;
  wire [0:0]m_axi_awready_0;
  wire m_axi_awvalid;
  wire \m_payload_i_reg[19] ;
  wire \m_payload_i_reg[19]_0 ;
  wire [0:0]m_valid_i_reg;
  wire next;
  wire next_pending_r;
  wire next_pending_r_i_2_n_0;
  wire [5:0]next_pending_r_reg;
  wire next_pending_r_reg_0;
  wire next_pending_r_reg_1;
  wire [1:1]next_state__0;
  wire s_axburst_eq0_i_2_n_0;
  wire sel_first;
  wire sel_first_i;
  wire sel_first_reg;
  wire sel_first_reg_0;
  wire si_rs_awvalid;
  wire [0:0]\wrap_cnt_r_reg[0] ;
  wire [0:0]\wrap_cnt_r_reg[0]_0 ;
  wire \wrap_cnt_r_reg[0]_1 ;
  wire wrap_next_pending;

  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h3FFF8888)) 
    \FSM_sequential_state[1]_i_1__0 
       (.I0(si_rs_awvalid),
        .I1(Q[0]),
        .I2(m_axi_awready),
        .I3(\axaddr_wrap_reg[0] ),
        .I4(Q[1]),
        .O(next_state__0));
  (* FSM_ENCODED_STATES = "SM_CMD_ACCEPTED:10,SM_CMD_EN:11,SM_IDLE:01,SM_DONE_WAIT:00" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[0]_0 ),
        .Q(Q[0]),
        .S(areset_d1));
  (* FSM_ENCODED_STATES = "SM_CMD_ACCEPTED:10,SM_CMD_EN:11,SM_IDLE:01,SM_DONE_WAIT:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(next_state__0),
        .Q(Q[1]),
        .R(areset_d1));
  LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
    \axlen_cnt[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(si_rs_awvalid),
        .I3(next_pending_r_reg[1]),
        .I4(\axlen_cnt_reg[0] ),
        .I5(\axlen_cnt_reg[0]_0 ),
        .O(D));
  LUT6 #(
    .INIT(64'h8080FFFFFF00F0F0)) 
    \axlen_cnt[8]_i_1 
       (.I0(m_axi_awready),
        .I1(\axaddr_wrap_reg[0] ),
        .I2(\axaddr_wrap_reg[0]_0 ),
        .I3(si_rs_awvalid),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(m_axi_awready_0));
  LUT2 #(
    .INIT(4'h8)) 
    m_axi_awvalid_INST_0
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(m_axi_awvalid));
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[14]_i_1 
       (.I0(b_push),
        .I1(si_rs_awvalid),
        .O(m_valid_i_reg));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h80005500)) 
    \memory_reg[3][0]_srl4_i_1__0 
       (.I0(Q[1]),
        .I1(m_axi_awready),
        .I2(\axaddr_wrap_reg[0] ),
        .I3(\axaddr_wrap_reg[0]_0 ),
        .I4(Q[0]),
        .O(b_push));
  LUT6 #(
    .INIT(64'hFFFFEAEAFFEAEAEA)) 
    next_pending_r_i_1__0
       (.I0(next_pending_r_i_2_n_0),
        .I1(next_pending_r_reg_0),
        .I2(next),
        .I3(next_pending_r_reg[4]),
        .I4(E),
        .I5(next_pending_r_reg[3]),
        .O(incr_next_pending));
  LUT6 #(
    .INIT(64'hFFFFF2F2FFF2F2F2)) 
    next_pending_r_i_2
       (.I0(next_pending_r),
        .I1(m_axi_awready_0),
        .I2(next_pending_r_reg_1),
        .I3(next_pending_r_reg[5]),
        .I4(E),
        .I5(next_pending_r_reg[2]),
        .O(next_pending_r_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hD5554444)) 
    next_pending_r_i_4
       (.I0(Q[0]),
        .I1(\axaddr_wrap_reg[0]_0 ),
        .I2(\axaddr_wrap_reg[0] ),
        .I3(m_axi_awready),
        .I4(Q[1]),
        .O(next));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hEFEEE0EE)) 
    s_axburst_eq0_i_1
       (.I0(next_pending_r_i_2_n_0),
        .I1(s_axburst_eq0_i_2_n_0),
        .I2(sel_first_i),
        .I3(next_pending_r_reg[0]),
        .I4(wrap_next_pending),
        .O(\m_payload_i_reg[19] ));
  LUT5 #(
    .INIT(32'hFFC8C8C8)) 
    s_axburst_eq0_i_2
       (.I0(next_pending_r_reg[3]),
        .I1(E),
        .I2(next_pending_r_reg[4]),
        .I3(next),
        .I4(next_pending_r_reg_0),
        .O(s_axburst_eq0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hABABABA8)) 
    s_axburst_eq1_i_1
       (.I0(wrap_next_pending),
        .I1(sel_first_i),
        .I2(next_pending_r_reg[0]),
        .I3(next_pending_r_i_2_n_0),
        .I4(s_axburst_eq0_i_2_n_0),
        .O(\m_payload_i_reg[19]_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFFFF40FF40)) 
    sel_first_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(si_rs_awvalid),
        .I3(areset_d1),
        .I4(next),
        .I5(sel_first_reg),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFF40FFFFFF40FF40)) 
    sel_first_i_1__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(si_rs_awvalid),
        .I3(areset_d1),
        .I4(next),
        .I5(sel_first),
        .O(\FSM_sequential_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF4F444444)) 
    sel_first_i_1__1
       (.I0(next),
        .I1(sel_first_reg_0),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(si_rs_awvalid),
        .I5(areset_d1),
        .O(sel_first_i));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \wrap_boundary_axaddr_r[11]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(si_rs_awvalid),
        .O(E));
  LUT6 #(
    .INIT(64'h4000FFBFBFBF0000)) 
    \wrap_cnt_r[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(si_rs_awvalid),
        .I3(\wrap_cnt_r_reg[0] ),
        .I4(\wrap_cnt_r_reg[0]_0 ),
        .I5(\wrap_cnt_r_reg[0]_1 ),
        .O(\FSM_sequential_state_reg[1]_2 ));
endmodule

module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_wrap_cmd
   (wrap_next_pending,
    sel_first,
    Q,
    \axlen_cnt_reg[3]_0 ,
    \axlen_cnt_reg[0]_0 ,
    s_axburst_eq1_reg,
    sel_first_reg_0,
    \wrap_second_len_r_reg[3]_0 ,
    \axaddr_offset_r_reg[3]_0 ,
    aclk,
    sel_first_reg_1,
    next,
    \axlen_cnt_reg[3]_1 ,
    \axaddr_wrap_reg[3]_0 ,
    next_pending_r_reg_0,
    E,
    s_axburst_eq1,
    s_axburst_eq0,
    \m_axi_awaddr[11] ,
    \axaddr_offset_r_reg[3]_1 ,
    \wrap_cnt_r_reg[1]_0 ,
    \wrap_second_len_r_reg[3]_1 ,
    \axaddr_wrap_reg[0]_0 ,
    \axlen_cnt_reg[0]_1 ,
    D,
    \wrap_boundary_axaddr_r_reg[6]_0 );
  output wrap_next_pending;
  output sel_first;
  output [11:0]Q;
  output \axlen_cnt_reg[3]_0 ;
  output [0:0]\axlen_cnt_reg[0]_0 ;
  output s_axburst_eq1_reg;
  output sel_first_reg_0;
  output [3:0]\wrap_second_len_r_reg[3]_0 ;
  output [3:0]\axaddr_offset_r_reg[3]_0 ;
  input aclk;
  input sel_first_reg_1;
  input next;
  input [18:0]\axlen_cnt_reg[3]_1 ;
  input [1:0]\axaddr_wrap_reg[3]_0 ;
  input next_pending_r_reg_0;
  input [0:0]E;
  input s_axburst_eq1;
  input s_axburst_eq0;
  input \m_axi_awaddr[11] ;
  input [3:0]\axaddr_offset_r_reg[3]_1 ;
  input \wrap_cnt_r_reg[1]_0 ;
  input [3:0]\wrap_second_len_r_reg[3]_1 ;
  input [0:0]\axaddr_wrap_reg[0]_0 ;
  input [0:0]\axlen_cnt_reg[0]_1 ;
  input [2:0]D;
  input [6:0]\wrap_boundary_axaddr_r_reg[6]_0 ;

  wire [2:0]D;
  wire [0:0]E;
  wire [11:0]Q;
  wire aclk;
  wire [3:0]\axaddr_offset_r_reg[3]_0 ;
  wire [3:0]\axaddr_offset_r_reg[3]_1 ;
  wire [11:0]axaddr_wrap0;
  wire axaddr_wrap1;
  wire \axaddr_wrap[0]_i_1__0_n_0 ;
  wire \axaddr_wrap[10]_i_1__0_n_0 ;
  wire \axaddr_wrap[11]_i_1__0_n_0 ;
  wire \axaddr_wrap[11]_i_4__0_n_0 ;
  wire \axaddr_wrap[1]_i_1__0_n_0 ;
  wire \axaddr_wrap[2]_i_1__0_n_0 ;
  wire \axaddr_wrap[3]_i_1__0_n_0 ;
  wire \axaddr_wrap[3]_i_4_n_0 ;
  wire \axaddr_wrap[3]_i_5_n_0 ;
  wire \axaddr_wrap[4]_i_1__0_n_0 ;
  wire \axaddr_wrap[5]_i_1__0_n_0 ;
  wire \axaddr_wrap[6]_i_1__0_n_0 ;
  wire \axaddr_wrap[7]_i_1__0_n_0 ;
  wire \axaddr_wrap[8]_i_1__0_n_0 ;
  wire \axaddr_wrap[9]_i_1__0_n_0 ;
  wire [0:0]\axaddr_wrap_reg[0]_0 ;
  wire \axaddr_wrap_reg[11]_i_3_n_1 ;
  wire \axaddr_wrap_reg[11]_i_3_n_2 ;
  wire \axaddr_wrap_reg[11]_i_3_n_3 ;
  wire [1:0]\axaddr_wrap_reg[3]_0 ;
  wire \axaddr_wrap_reg[3]_i_2_n_0 ;
  wire \axaddr_wrap_reg[3]_i_2_n_1 ;
  wire \axaddr_wrap_reg[3]_i_2_n_2 ;
  wire \axaddr_wrap_reg[3]_i_2_n_3 ;
  wire \axaddr_wrap_reg[7]_i_2_n_0 ;
  wire \axaddr_wrap_reg[7]_i_2_n_1 ;
  wire \axaddr_wrap_reg[7]_i_2_n_2 ;
  wire \axaddr_wrap_reg[7]_i_2_n_3 ;
  wire \axlen_cnt[1]_i_1_n_0 ;
  wire \axlen_cnt[2]_i_1_n_0 ;
  wire \axlen_cnt[3]_i_1_n_0 ;
  wire \axlen_cnt[3]_i_3_n_0 ;
  wire \axlen_cnt[4]_i_1_n_0 ;
  wire [0:0]\axlen_cnt_reg[0]_0 ;
  wire [0:0]\axlen_cnt_reg[0]_1 ;
  wire \axlen_cnt_reg[3]_0 ;
  wire [18:0]\axlen_cnt_reg[3]_1 ;
  wire \axlen_cnt_reg_n_0_[1] ;
  wire \axlen_cnt_reg_n_0_[2] ;
  wire \axlen_cnt_reg_n_0_[3] ;
  wire \axlen_cnt_reg_n_0_[4] ;
  wire \m_axi_awaddr[11] ;
  wire next;
  wire next_pending_r;
  wire next_pending_r_reg_0;
  wire s_axburst_eq0;
  wire s_axburst_eq1;
  wire s_axburst_eq1_reg;
  wire sel_first;
  wire sel_first_reg_0;
  wire sel_first_reg_1;
  wire [11:0]wrap_boundary_axaddr_r;
  wire [6:0]\wrap_boundary_axaddr_r_reg[6]_0 ;
  wire [1:1]wrap_cnt;
  wire [3:0]wrap_cnt_r;
  wire \wrap_cnt_r_reg[1]_0 ;
  wire wrap_next_pending;
  wire [3:0]\wrap_second_len_r_reg[3]_0 ;
  wire [3:0]\wrap_second_len_r_reg[3]_1 ;
  wire [3:3]\NLW_axaddr_wrap_reg[11]_i_3_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h47)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(s_axburst_eq1),
        .I1(\axlen_cnt_reg[3]_1 [15]),
        .I2(s_axburst_eq0),
        .O(s_axburst_eq1_reg));
  FDRE \axaddr_offset_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\axaddr_offset_r_reg[3]_1 [0]),
        .Q(\axaddr_offset_r_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\axaddr_offset_r_reg[3]_1 [1]),
        .Q(\axaddr_offset_r_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\axaddr_offset_r_reg[3]_1 [2]),
        .Q(\axaddr_offset_r_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\axaddr_offset_r_reg[3]_1 [3]),
        .Q(\axaddr_offset_r_reg[3]_0 [3]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFB73C840)) 
    \axaddr_wrap[0]_i_1__0 
       (.I0(axaddr_wrap1),
        .I1(next),
        .I2(axaddr_wrap0[0]),
        .I3(wrap_boundary_axaddr_r[0]),
        .I4(\axlen_cnt_reg[3]_1 [0]),
        .O(\axaddr_wrap[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFB73C840)) 
    \axaddr_wrap[10]_i_1__0 
       (.I0(axaddr_wrap1),
        .I1(next),
        .I2(axaddr_wrap0[10]),
        .I3(wrap_boundary_axaddr_r[10]),
        .I4(\axlen_cnt_reg[3]_1 [10]),
        .O(\axaddr_wrap[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFB73C840)) 
    \axaddr_wrap[11]_i_1__0 
       (.I0(axaddr_wrap1),
        .I1(next),
        .I2(axaddr_wrap0[11]),
        .I3(wrap_boundary_axaddr_r[11]),
        .I4(\axlen_cnt_reg[3]_1 [11]),
        .O(\axaddr_wrap[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h4100004100000000)) 
    \axaddr_wrap[11]_i_2__0 
       (.I0(\axlen_cnt_reg_n_0_[4] ),
        .I1(wrap_cnt_r[0]),
        .I2(\axlen_cnt_reg[0]_0 ),
        .I3(\axlen_cnt_reg_n_0_[1] ),
        .I4(wrap_cnt_r[1]),
        .I5(\axaddr_wrap[11]_i_4__0_n_0 ),
        .O(axaddr_wrap1));
  LUT4 #(
    .INIT(16'h9009)) 
    \axaddr_wrap[11]_i_4__0 
       (.I0(wrap_cnt_r[2]),
        .I1(\axlen_cnt_reg_n_0_[2] ),
        .I2(wrap_cnt_r[3]),
        .I3(\axlen_cnt_reg_n_0_[3] ),
        .O(\axaddr_wrap[11]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hFB73C840)) 
    \axaddr_wrap[1]_i_1__0 
       (.I0(axaddr_wrap1),
        .I1(next),
        .I2(axaddr_wrap0[1]),
        .I3(wrap_boundary_axaddr_r[1]),
        .I4(\axlen_cnt_reg[3]_1 [1]),
        .O(\axaddr_wrap[1]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFB73C840)) 
    \axaddr_wrap[2]_i_1__0 
       (.I0(axaddr_wrap1),
        .I1(next),
        .I2(axaddr_wrap0[2]),
        .I3(wrap_boundary_axaddr_r[2]),
        .I4(\axlen_cnt_reg[3]_1 [2]),
        .O(\axaddr_wrap[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFB73C840)) 
    \axaddr_wrap[3]_i_1__0 
       (.I0(axaddr_wrap1),
        .I1(next),
        .I2(axaddr_wrap0[3]),
        .I3(wrap_boundary_axaddr_r[3]),
        .I4(\axlen_cnt_reg[3]_1 [3]),
        .O(\axaddr_wrap[3]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_wrap[3]_i_4 
       (.I0(Q[2]),
        .I1(\axlen_cnt_reg[3]_1 [12]),
        .I2(\axlen_cnt_reg[3]_1 [13]),
        .O(\axaddr_wrap[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_wrap[3]_i_5 
       (.I0(Q[1]),
        .I1(\axlen_cnt_reg[3]_1 [13]),
        .I2(\axlen_cnt_reg[3]_1 [12]),
        .O(\axaddr_wrap[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFB73C840)) 
    \axaddr_wrap[4]_i_1__0 
       (.I0(axaddr_wrap1),
        .I1(next),
        .I2(axaddr_wrap0[4]),
        .I3(wrap_boundary_axaddr_r[4]),
        .I4(\axlen_cnt_reg[3]_1 [4]),
        .O(\axaddr_wrap[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFB73C840)) 
    \axaddr_wrap[5]_i_1__0 
       (.I0(axaddr_wrap1),
        .I1(next),
        .I2(axaddr_wrap0[5]),
        .I3(wrap_boundary_axaddr_r[5]),
        .I4(\axlen_cnt_reg[3]_1 [5]),
        .O(\axaddr_wrap[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFB73C840)) 
    \axaddr_wrap[6]_i_1__0 
       (.I0(axaddr_wrap1),
        .I1(next),
        .I2(axaddr_wrap0[6]),
        .I3(wrap_boundary_axaddr_r[6]),
        .I4(\axlen_cnt_reg[3]_1 [6]),
        .O(\axaddr_wrap[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFB73C840)) 
    \axaddr_wrap[7]_i_1__0 
       (.I0(axaddr_wrap1),
        .I1(next),
        .I2(axaddr_wrap0[7]),
        .I3(wrap_boundary_axaddr_r[7]),
        .I4(\axlen_cnt_reg[3]_1 [7]),
        .O(\axaddr_wrap[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFB73C840)) 
    \axaddr_wrap[8]_i_1__0 
       (.I0(axaddr_wrap1),
        .I1(next),
        .I2(axaddr_wrap0[8]),
        .I3(wrap_boundary_axaddr_r[8]),
        .I4(\axlen_cnt_reg[3]_1 [8]),
        .O(\axaddr_wrap[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hFB73C840)) 
    \axaddr_wrap[9]_i_1__0 
       (.I0(axaddr_wrap1),
        .I1(next),
        .I2(axaddr_wrap0[9]),
        .I3(wrap_boundary_axaddr_r[9]),
        .I4(\axlen_cnt_reg[3]_1 [9]),
        .O(\axaddr_wrap[9]_i_1__0_n_0 ));
  FDRE \axaddr_wrap_reg[0] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[10] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap[10]_i_1__0_n_0 ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[11] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap[11]_i_1__0_n_0 ),
        .Q(Q[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_wrap_reg[11]_i_3 
       (.CI(\axaddr_wrap_reg[7]_i_2_n_0 ),
        .CO({\NLW_axaddr_wrap_reg[11]_i_3_CO_UNCONNECTED [3],\axaddr_wrap_reg[11]_i_3_n_1 ,\axaddr_wrap_reg[11]_i_3_n_2 ,\axaddr_wrap_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(axaddr_wrap0[11:8]),
        .S(Q[11:8]));
  FDRE \axaddr_wrap_reg[1] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[2] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[3] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_wrap_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\axaddr_wrap_reg[3]_i_2_n_0 ,\axaddr_wrap_reg[3]_i_2_n_1 ,\axaddr_wrap_reg[3]_i_2_n_2 ,\axaddr_wrap_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(axaddr_wrap0[3:0]),
        .S({\axaddr_wrap_reg[3]_0 [1],\axaddr_wrap[3]_i_4_n_0 ,\axaddr_wrap[3]_i_5_n_0 ,\axaddr_wrap_reg[3]_0 [0]}));
  FDRE \axaddr_wrap_reg[4] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[5] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[6] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[7] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_wrap_reg[7]_i_2 
       (.CI(\axaddr_wrap_reg[3]_i_2_n_0 ),
        .CO({\axaddr_wrap_reg[7]_i_2_n_0 ,\axaddr_wrap_reg[7]_i_2_n_1 ,\axaddr_wrap_reg[7]_i_2_n_2 ,\axaddr_wrap_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(axaddr_wrap0[7:4]),
        .S(Q[7:4]));
  FDRE \axaddr_wrap_reg[8] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[9] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \axlen_cnt[1]_i_1 
       (.I0(\axlen_cnt_reg[3]_1 [16]),
        .I1(E),
        .I2(\axlen_cnt_reg[3]_0 ),
        .I3(\axlen_cnt_reg[0]_0 ),
        .I4(\axlen_cnt_reg_n_0_[1] ),
        .O(\axlen_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F888888888F8)) 
    \axlen_cnt[2]_i_1 
       (.I0(\axlen_cnt_reg[3]_1 [17]),
        .I1(E),
        .I2(\axlen_cnt_reg[3]_0 ),
        .I3(\axlen_cnt_reg_n_0_[1] ),
        .I4(\axlen_cnt_reg[0]_0 ),
        .I5(\axlen_cnt_reg_n_0_[2] ),
        .O(\axlen_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \axlen_cnt[3]_i_1 
       (.I0(\axlen_cnt_reg[3]_1 [18]),
        .I1(E),
        .I2(\axlen_cnt_reg[3]_0 ),
        .I3(\axlen_cnt[3]_i_3_n_0 ),
        .I4(\axlen_cnt_reg_n_0_[3] ),
        .O(\axlen_cnt[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \axlen_cnt[3]_i_2 
       (.I0(\axlen_cnt_reg_n_0_[3] ),
        .I1(\axlen_cnt_reg_n_0_[4] ),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .I3(\axlen_cnt_reg_n_0_[2] ),
        .I4(E),
        .O(\axlen_cnt_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \axlen_cnt[3]_i_3 
       (.I0(\axlen_cnt_reg_n_0_[1] ),
        .I1(\axlen_cnt_reg[0]_0 ),
        .I2(\axlen_cnt_reg_n_0_[2] ),
        .O(\axlen_cnt[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFE00000000)) 
    \axlen_cnt[4]_i_1 
       (.I0(\axlen_cnt_reg_n_0_[2] ),
        .I1(\axlen_cnt_reg[0]_0 ),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .I3(\axlen_cnt_reg_n_0_[3] ),
        .I4(E),
        .I5(\axlen_cnt_reg_n_0_[4] ),
        .O(\axlen_cnt[4]_i_1_n_0 ));
  FDRE \axlen_cnt_reg[0] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt_reg[0]_1 ),
        .Q(\axlen_cnt_reg[0]_0 ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[1] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt[1]_i_1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[2] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt[2]_i_1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[3] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt[3]_i_1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[4] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt[4]_i_1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[4] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \m_axi_awaddr[11]_INST_0_i_3 
       (.I0(sel_first),
        .I1(\axlen_cnt_reg[3]_1 [15]),
        .I2(\m_axi_awaddr[11] ),
        .I3(\axlen_cnt_reg[3]_1 [14]),
        .O(sel_first_reg_0));
  LUT5 #(
    .INIT(32'hFFAEAAAE)) 
    next_pending_r_i_1
       (.I0(next_pending_r_reg_0),
        .I1(next_pending_r),
        .I2(E),
        .I3(next),
        .I4(\axlen_cnt_reg[3]_0 ),
        .O(wrap_next_pending));
  FDRE next_pending_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wrap_next_pending),
        .Q(next_pending_r),
        .R(1'b0));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_reg_1),
        .Q(sel_first),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [0]),
        .Q(wrap_boundary_axaddr_r[0]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_1 [10]),
        .Q(wrap_boundary_axaddr_r[10]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_1 [11]),
        .Q(wrap_boundary_axaddr_r[11]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [1]),
        .Q(wrap_boundary_axaddr_r[1]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [2]),
        .Q(wrap_boundary_axaddr_r[2]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [3]),
        .Q(wrap_boundary_axaddr_r[3]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [4]),
        .Q(wrap_boundary_axaddr_r[4]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [5]),
        .Q(wrap_boundary_axaddr_r[5]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [6]),
        .Q(wrap_boundary_axaddr_r[6]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_1 [7]),
        .Q(wrap_boundary_axaddr_r[7]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_1 [8]),
        .Q(wrap_boundary_axaddr_r[8]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_1 [9]),
        .Q(wrap_boundary_axaddr_r[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hC05FC0A0)) 
    \wrap_cnt_r[1]_i_1 
       (.I0(\wrap_second_len_r_reg[3]_0 [0]),
        .I1(\axaddr_offset_r_reg[3]_1 [1]),
        .I2(\wrap_cnt_r_reg[1]_0 ),
        .I3(E),
        .I4(\wrap_second_len_r_reg[3]_0 [1]),
        .O(wrap_cnt));
  FDRE \wrap_cnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(wrap_cnt_r[0]),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(wrap_cnt),
        .Q(wrap_cnt_r[1]),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(wrap_cnt_r[2]),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(wrap_cnt_r[3]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [0]),
        .Q(\wrap_second_len_r_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [1]),
        .Q(\wrap_second_len_r_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [2]),
        .Q(\wrap_second_len_r_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_second_len_r_reg[3]_1 [3]),
        .Q(\wrap_second_len_r_reg[3]_0 [3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_protocol_converter_v2_1_29_b2s_wrap_cmd" *) 
module axi_map_auto_pc_0_axi_protocol_converter_v2_1_29_b2s_wrap_cmd_3
   (wrap_next_pending,
    sel_first_reg_0,
    O,
    \axaddr_wrap_reg[11]_0 ,
    \axaddr_wrap_reg[7]_0 ,
    \axaddr_wrap_reg[11]_1 ,
    \m_payload_i_reg[19] ,
    \axlen_cnt_reg[4]_0 ,
    sel_first_reg_1,
    \wrap_second_len_r_reg[3]_0 ,
    \axaddr_offset_r_reg[3]_0 ,
    \wrap_boundary_axaddr_r_reg[11]_0 ,
    aclk,
    sel_first_reg_2,
    S,
    \axlen_cnt_reg[3]_0 ,
    sel_first_i,
    s_axburst_eq1_reg,
    s_axburst_eq1_reg_0,
    r_push,
    E,
    next_pending_r_reg_0,
    \m_axi_araddr[11] ,
    Q,
    si_rs_arvalid,
    axaddr_offset,
    \wrap_cnt_r_reg[1]_0 ,
    D,
    \axaddr_wrap_reg[0]_0 ,
    \wrap_cnt_r_reg[3]_0 ,
    \wrap_boundary_axaddr_r_reg[6]_0 ,
    \axaddr_wrap_reg[11]_2 );
  output wrap_next_pending;
  output sel_first_reg_0;
  output [3:0]O;
  output [11:0]\axaddr_wrap_reg[11]_0 ;
  output [3:0]\axaddr_wrap_reg[7]_0 ;
  output [3:0]\axaddr_wrap_reg[11]_1 ;
  output \m_payload_i_reg[19] ;
  output \axlen_cnt_reg[4]_0 ;
  output sel_first_reg_1;
  output [3:0]\wrap_second_len_r_reg[3]_0 ;
  output [3:0]\axaddr_offset_r_reg[3]_0 ;
  output [11:0]\wrap_boundary_axaddr_r_reg[11]_0 ;
  input aclk;
  input sel_first_reg_2;
  input [1:0]S;
  input [12:0]\axlen_cnt_reg[3]_0 ;
  input sel_first_i;
  input s_axburst_eq1_reg;
  input s_axburst_eq1_reg_0;
  input r_push;
  input [0:0]E;
  input next_pending_r_reg_0;
  input \m_axi_araddr[11] ;
  input [0:0]Q;
  input si_rs_arvalid;
  input [3:0]axaddr_offset;
  input \wrap_cnt_r_reg[1]_0 ;
  input [3:0]D;
  input [0:0]\axaddr_wrap_reg[0]_0 ;
  input [2:0]\wrap_cnt_r_reg[3]_0 ;
  input [6:0]\wrap_boundary_axaddr_r_reg[6]_0 ;
  input [11:0]\axaddr_wrap_reg[11]_2 ;

  wire [3:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [0:0]Q;
  wire [1:0]S;
  wire aclk;
  wire [3:0]axaddr_offset;
  wire [3:0]\axaddr_offset_r_reg[3]_0 ;
  wire \axaddr_wrap[11]_i_6_n_0 ;
  wire \axaddr_wrap[3]_i_4_n_0 ;
  wire \axaddr_wrap[3]_i_5_n_0 ;
  wire [0:0]\axaddr_wrap_reg[0]_0 ;
  wire [11:0]\axaddr_wrap_reg[11]_0 ;
  wire [3:0]\axaddr_wrap_reg[11]_1 ;
  wire [11:0]\axaddr_wrap_reg[11]_2 ;
  wire \axaddr_wrap_reg[11]_i_3__0_n_1 ;
  wire \axaddr_wrap_reg[11]_i_3__0_n_2 ;
  wire \axaddr_wrap_reg[11]_i_3__0_n_3 ;
  wire \axaddr_wrap_reg[3]_i_2__0_n_0 ;
  wire \axaddr_wrap_reg[3]_i_2__0_n_1 ;
  wire \axaddr_wrap_reg[3]_i_2__0_n_2 ;
  wire \axaddr_wrap_reg[3]_i_2__0_n_3 ;
  wire [3:0]\axaddr_wrap_reg[7]_0 ;
  wire \axaddr_wrap_reg[7]_i_2__0_n_0 ;
  wire \axaddr_wrap_reg[7]_i_2__0_n_1 ;
  wire \axaddr_wrap_reg[7]_i_2__0_n_2 ;
  wire \axaddr_wrap_reg[7]_i_2__0_n_3 ;
  wire \axlen_cnt[0]_i_1__2_n_0 ;
  wire \axlen_cnt[1]_i_1__1_n_0 ;
  wire \axlen_cnt[2]_i_1__1_n_0 ;
  wire \axlen_cnt[3]_i_1__1_n_0 ;
  wire \axlen_cnt[3]_i_2__0_n_0 ;
  wire \axlen_cnt[3]_i_3__0_n_0 ;
  wire \axlen_cnt[4]_i_1__1_n_0 ;
  wire [12:0]\axlen_cnt_reg[3]_0 ;
  wire \axlen_cnt_reg[4]_0 ;
  wire \axlen_cnt_reg_n_0_[0] ;
  wire \axlen_cnt_reg_n_0_[1] ;
  wire \axlen_cnt_reg_n_0_[2] ;
  wire \axlen_cnt_reg_n_0_[3] ;
  wire \axlen_cnt_reg_n_0_[4] ;
  wire \m_axi_araddr[11] ;
  wire \m_payload_i_reg[19] ;
  wire next_pending_r;
  wire next_pending_r_reg_0;
  wire r_push;
  wire s_axburst_eq1_reg;
  wire s_axburst_eq1_reg_0;
  wire sel_first_i;
  wire sel_first_reg_0;
  wire sel_first_reg_1;
  wire sel_first_reg_2;
  wire si_rs_arvalid;
  wire [11:0]\wrap_boundary_axaddr_r_reg[11]_0 ;
  wire [6:0]\wrap_boundary_axaddr_r_reg[6]_0 ;
  wire \wrap_cnt_r[1]_i_1__0_n_0 ;
  wire \wrap_cnt_r_reg[1]_0 ;
  wire [2:0]\wrap_cnt_r_reg[3]_0 ;
  wire \wrap_cnt_r_reg_n_0_[0] ;
  wire \wrap_cnt_r_reg_n_0_[1] ;
  wire \wrap_cnt_r_reg_n_0_[2] ;
  wire \wrap_cnt_r_reg_n_0_[3] ;
  wire wrap_next_pending;
  wire [3:0]\wrap_second_len_r_reg[3]_0 ;
  wire [3:3]\NLW_axaddr_wrap_reg[11]_i_3__0_CO_UNCONNECTED ;

  FDRE \axaddr_offset_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(axaddr_offset[0]),
        .Q(\axaddr_offset_r_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(axaddr_offset[1]),
        .Q(\axaddr_offset_r_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(axaddr_offset[2]),
        .Q(\axaddr_offset_r_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \axaddr_offset_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(axaddr_offset[3]),
        .Q(\axaddr_offset_r_reg[3]_0 [3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4100004100000000)) 
    \axaddr_wrap[11]_i_5 
       (.I0(\axlen_cnt_reg_n_0_[4] ),
        .I1(\wrap_cnt_r_reg_n_0_[0] ),
        .I2(\axlen_cnt_reg_n_0_[0] ),
        .I3(\axlen_cnt_reg_n_0_[1] ),
        .I4(\wrap_cnt_r_reg_n_0_[1] ),
        .I5(\axaddr_wrap[11]_i_6_n_0 ),
        .O(\axlen_cnt_reg[4]_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \axaddr_wrap[11]_i_6 
       (.I0(\wrap_cnt_r_reg_n_0_[2] ),
        .I1(\axlen_cnt_reg_n_0_[2] ),
        .I2(\wrap_cnt_r_reg_n_0_[3] ),
        .I3(\axlen_cnt_reg_n_0_[3] ),
        .O(\axaddr_wrap[11]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_wrap[3]_i_4 
       (.I0(\axaddr_wrap_reg[11]_0 [2]),
        .I1(\axlen_cnt_reg[3]_0 [5]),
        .I2(\axlen_cnt_reg[3]_0 [6]),
        .O(\axaddr_wrap[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h9A)) 
    \axaddr_wrap[3]_i_5 
       (.I0(\axaddr_wrap_reg[11]_0 [1]),
        .I1(\axlen_cnt_reg[3]_0 [6]),
        .I2(\axlen_cnt_reg[3]_0 [5]),
        .O(\axaddr_wrap[3]_i_5_n_0 ));
  FDRE \axaddr_wrap_reg[0] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_2 [0]),
        .Q(\axaddr_wrap_reg[11]_0 [0]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[10] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_2 [10]),
        .Q(\axaddr_wrap_reg[11]_0 [10]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[11] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_2 [11]),
        .Q(\axaddr_wrap_reg[11]_0 [11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_wrap_reg[11]_i_3__0 
       (.CI(\axaddr_wrap_reg[7]_i_2__0_n_0 ),
        .CO({\NLW_axaddr_wrap_reg[11]_i_3__0_CO_UNCONNECTED [3],\axaddr_wrap_reg[11]_i_3__0_n_1 ,\axaddr_wrap_reg[11]_i_3__0_n_2 ,\axaddr_wrap_reg[11]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\axaddr_wrap_reg[11]_1 ),
        .S(\axaddr_wrap_reg[11]_0 [11:8]));
  FDRE \axaddr_wrap_reg[1] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_2 [1]),
        .Q(\axaddr_wrap_reg[11]_0 [1]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[2] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_2 [2]),
        .Q(\axaddr_wrap_reg[11]_0 [2]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[3] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_2 [3]),
        .Q(\axaddr_wrap_reg[11]_0 [3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_wrap_reg[3]_i_2__0 
       (.CI(1'b0),
        .CO({\axaddr_wrap_reg[3]_i_2__0_n_0 ,\axaddr_wrap_reg[3]_i_2__0_n_1 ,\axaddr_wrap_reg[3]_i_2__0_n_2 ,\axaddr_wrap_reg[3]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI(\axaddr_wrap_reg[11]_0 [3:0]),
        .O(O),
        .S({S[1],\axaddr_wrap[3]_i_4_n_0 ,\axaddr_wrap[3]_i_5_n_0 ,S[0]}));
  FDRE \axaddr_wrap_reg[4] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_2 [4]),
        .Q(\axaddr_wrap_reg[11]_0 [4]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[5] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_2 [5]),
        .Q(\axaddr_wrap_reg[11]_0 [5]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[6] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_2 [6]),
        .Q(\axaddr_wrap_reg[11]_0 [6]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[7] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_2 [7]),
        .Q(\axaddr_wrap_reg[11]_0 [7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_wrap_reg[7]_i_2__0 
       (.CI(\axaddr_wrap_reg[3]_i_2__0_n_0 ),
        .CO({\axaddr_wrap_reg[7]_i_2__0_n_0 ,\axaddr_wrap_reg[7]_i_2__0_n_1 ,\axaddr_wrap_reg[7]_i_2__0_n_2 ,\axaddr_wrap_reg[7]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\axaddr_wrap_reg[7]_0 ),
        .S(\axaddr_wrap_reg[11]_0 [7:4]));
  FDRE \axaddr_wrap_reg[8] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_2 [8]),
        .Q(\axaddr_wrap_reg[11]_0 [8]),
        .R(1'b0));
  FDRE \axaddr_wrap_reg[9] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axaddr_wrap_reg[11]_2 [9]),
        .Q(\axaddr_wrap_reg[11]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40FF4040)) 
    \axlen_cnt[0]_i_1__2 
       (.I0(Q),
        .I1(si_rs_arvalid),
        .I2(\axlen_cnt_reg[3]_0 [9]),
        .I3(\axlen_cnt_reg_n_0_[0] ),
        .I4(\axlen_cnt[3]_i_2__0_n_0 ),
        .O(\axlen_cnt[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \axlen_cnt[1]_i_1__1 
       (.I0(\axlen_cnt_reg[3]_0 [10]),
        .I1(E),
        .I2(\axlen_cnt[3]_i_2__0_n_0 ),
        .I3(\axlen_cnt_reg_n_0_[0] ),
        .I4(\axlen_cnt_reg_n_0_[1] ),
        .O(\axlen_cnt[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F888888888F8)) 
    \axlen_cnt[2]_i_1__1 
       (.I0(\axlen_cnt_reg[3]_0 [11]),
        .I1(E),
        .I2(\axlen_cnt[3]_i_2__0_n_0 ),
        .I3(\axlen_cnt_reg_n_0_[1] ),
        .I4(\axlen_cnt_reg_n_0_[0] ),
        .I5(\axlen_cnt_reg_n_0_[2] ),
        .O(\axlen_cnt[2]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hF88888F8)) 
    \axlen_cnt[3]_i_1__1 
       (.I0(\axlen_cnt_reg[3]_0 [12]),
        .I1(E),
        .I2(\axlen_cnt[3]_i_2__0_n_0 ),
        .I3(\axlen_cnt[3]_i_3__0_n_0 ),
        .I4(\axlen_cnt_reg_n_0_[3] ),
        .O(\axlen_cnt[3]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \axlen_cnt[3]_i_2__0 
       (.I0(\axlen_cnt_reg_n_0_[3] ),
        .I1(\axlen_cnt_reg_n_0_[4] ),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .I3(\axlen_cnt_reg_n_0_[2] ),
        .I4(E),
        .O(\axlen_cnt[3]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \axlen_cnt[3]_i_3__0 
       (.I0(\axlen_cnt_reg_n_0_[1] ),
        .I1(\axlen_cnt_reg_n_0_[0] ),
        .I2(\axlen_cnt_reg_n_0_[2] ),
        .O(\axlen_cnt[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFE00000000)) 
    \axlen_cnt[4]_i_1__1 
       (.I0(\axlen_cnt_reg_n_0_[2] ),
        .I1(\axlen_cnt_reg_n_0_[0] ),
        .I2(\axlen_cnt_reg_n_0_[1] ),
        .I3(\axlen_cnt_reg_n_0_[3] ),
        .I4(E),
        .I5(\axlen_cnt_reg_n_0_[4] ),
        .O(\axlen_cnt[4]_i_1__1_n_0 ));
  FDRE \axlen_cnt_reg[0] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt[0]_i_1__2_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[1] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt[1]_i_1__1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[2] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt[2]_i_1__1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[3] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt[3]_i_1__1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \axlen_cnt_reg[4] 
       (.C(aclk),
        .CE(\axaddr_wrap_reg[0]_0 ),
        .D(\axlen_cnt[4]_i_1__1_n_0 ),
        .Q(\axlen_cnt_reg_n_0_[4] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hB8BB)) 
    \m_axi_araddr[11]_INST_0_i_3 
       (.I0(sel_first_reg_0),
        .I1(\axlen_cnt_reg[3]_0 [8]),
        .I2(\m_axi_araddr[11] ),
        .I3(\axlen_cnt_reg[3]_0 [7]),
        .O(sel_first_reg_1));
  LUT5 #(
    .INIT(32'hFFFF88B8)) 
    next_pending_r_i_1__1
       (.I0(\axlen_cnt[3]_i_2__0_n_0 ),
        .I1(r_push),
        .I2(next_pending_r),
        .I3(E),
        .I4(next_pending_r_reg_0),
        .O(wrap_next_pending));
  FDRE next_pending_r_reg
       (.C(aclk),
        .CE(1'b1),
        .D(wrap_next_pending),
        .Q(next_pending_r),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hABABABA8)) 
    s_axburst_eq1_i_1__0
       (.I0(wrap_next_pending),
        .I1(\axlen_cnt_reg[3]_0 [8]),
        .I2(sel_first_i),
        .I3(s_axburst_eq1_reg),
        .I4(s_axburst_eq1_reg_0),
        .O(\m_payload_i_reg[19] ));
  FDRE sel_first_reg
       (.C(aclk),
        .CE(1'b1),
        .D(sel_first_reg_2),
        .Q(sel_first_reg_0),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [0]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [0]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_0 [3]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [10]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_0 [4]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [11]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [1]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [1]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [2]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [2]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [3]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [3]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [4]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [4]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [5]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [5]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(\wrap_boundary_axaddr_r_reg[6]_0 [6]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [6]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_0 [0]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [7]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_0 [1]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [8]),
        .R(1'b0));
  FDRE \wrap_boundary_axaddr_r_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(\axlen_cnt_reg[3]_0 [2]),
        .Q(\wrap_boundary_axaddr_r_reg[11]_0 [9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hC05FC0A0)) 
    \wrap_cnt_r[1]_i_1__0 
       (.I0(\wrap_second_len_r_reg[3]_0 [0]),
        .I1(axaddr_offset[1]),
        .I2(\wrap_cnt_r_reg[1]_0 ),
        .I3(E),
        .I4(\wrap_second_len_r_reg[3]_0 [1]),
        .O(\wrap_cnt_r[1]_i_1__0_n_0 ));
  FDRE \wrap_cnt_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_cnt_r_reg[3]_0 [0]),
        .Q(\wrap_cnt_r_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_cnt_r[1]_i_1__0_n_0 ),
        .Q(\wrap_cnt_r_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_cnt_r_reg[3]_0 [1]),
        .Q(\wrap_cnt_r_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \wrap_cnt_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(\wrap_cnt_r_reg[3]_0 [2]),
        .Q(\wrap_cnt_r_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\wrap_second_len_r_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\wrap_second_len_r_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[2]),
        .Q(\wrap_second_len_r_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \wrap_second_len_r_reg[3] 
       (.C(aclk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\wrap_second_len_r_reg[3]_0 [3]),
        .R(1'b0));
endmodule

module axi_map_auto_pc_0_axi_register_slice_v2_1_29_axi_register_slice
   (s_ready_i_reg,
    s_ready_i_reg_0,
    si_rs_awvalid,
    m_valid_i_reg,
    si_rs_bready,
    si_rs_arvalid,
    m_valid_i_reg_0,
    si_rs_rready,
    S,
    \m_payload_i_reg[34] ,
    \axaddr_wrap_reg[3] ,
    \axaddr_incr_reg[3] ,
    \m_payload_i_reg[34]_0 ,
    \axaddr_wrap_reg[3]_0 ,
    axaddr_incr,
    \m_payload_i_reg[3] ,
    \m_payload_i_reg[7] ,
    O,
    \m_payload_i_reg[27] ,
    D,
    \wrap_second_len_r_reg[3] ,
    \m_payload_i_reg[24] ,
    axaddr_offset,
    shandshake,
    incr_next_pending,
    \m_payload_i_reg[27]_0 ,
    \m_payload_i_reg[29] ,
    \wrap_second_len_r_reg[2] ,
    \wrap_second_len_r_reg[3]_0 ,
    \m_payload_i_reg[24]_0 ,
    axaddr_offset_0,
    \m_payload_i_reg[27]_1 ,
    \m_payload_i_reg[27]_2 ,
    m_axi_awaddr,
    m_axi_araddr,
    \m_payload_i_reg[3]_0 ,
    \m_payload_i_reg[36] ,
    aclk,
    s_ready_i0,
    m_valid_i_reg_1,
    aresetn,
    s_axi_bready,
    si_rs_bvalid,
    Q,
    \m_axi_awaddr[11] ,
    \m_axi_araddr[11] ,
    \m_axi_araddr[11]_0 ,
    b_push,
    s_axi_awvalid,
    \axaddr_incr_reg[3]_0 ,
    \axaddr_incr_reg[3]_1 ,
    \wrap_second_len_r_reg[2]_0 ,
    \wrap_second_len_r_reg[3]_1 ,
    \axaddr_offset_r_reg[0] ,
    \axaddr_offset_r_reg[3] ,
    next_pending_r_reg,
    \wrap_second_len_r_reg[3]_2 ,
    \axaddr_offset_r_reg[3]_0 ,
    m_valid_i_reg_2,
    s_axi_rready,
    \wrap_second_len_r_reg[3]_3 ,
    \axaddr_offset_r_reg[3]_1 ,
    out,
    \skid_buffer_reg[1] ,
    s_axi_awid,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awsize,
    s_axi_awprot,
    s_axi_awaddr,
    \m_axi_awaddr[11]_0 ,
    sel_first_1,
    sel_first,
    s_axi_arid,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arsize,
    s_axi_arprot,
    s_axi_araddr,
    \m_axi_araddr[11]_1 ,
    sel_first_2,
    \m_axi_araddr[11]_2 ,
    \skid_buffer_reg[36] ,
    \skid_buffer_reg[33] ,
    E,
    \m_payload_i_reg[0] );
  output s_ready_i_reg;
  output s_ready_i_reg_0;
  output si_rs_awvalid;
  output m_valid_i_reg;
  output si_rs_bready;
  output si_rs_arvalid;
  output m_valid_i_reg_0;
  output si_rs_rready;
  output [1:0]S;
  output [28:0]\m_payload_i_reg[34] ;
  output [1:0]\axaddr_wrap_reg[3] ;
  output [1:0]\axaddr_incr_reg[3] ;
  output [28:0]\m_payload_i_reg[34]_0 ;
  output [1:0]\axaddr_wrap_reg[3]_0 ;
  output [11:0]axaddr_incr;
  output [3:0]\m_payload_i_reg[3] ;
  output [3:0]\m_payload_i_reg[7] ;
  output [3:0]O;
  output \m_payload_i_reg[27] ;
  output [1:0]D;
  output [3:0]\wrap_second_len_r_reg[3] ;
  output \m_payload_i_reg[24] ;
  output [3:0]axaddr_offset;
  output shandshake;
  output incr_next_pending;
  output \m_payload_i_reg[27]_0 ;
  output \m_payload_i_reg[29] ;
  output [1:0]\wrap_second_len_r_reg[2] ;
  output [3:0]\wrap_second_len_r_reg[3]_0 ;
  output \m_payload_i_reg[24]_0 ;
  output [3:0]axaddr_offset_0;
  output [6:0]\m_payload_i_reg[27]_1 ;
  output [6:0]\m_payload_i_reg[27]_2 ;
  output [11:0]m_axi_awaddr;
  output [11:0]m_axi_araddr;
  output [3:0]\m_payload_i_reg[3]_0 ;
  output [36:0]\m_payload_i_reg[36] ;
  input aclk;
  input s_ready_i0;
  input m_valid_i_reg_1;
  input aresetn;
  input s_axi_bready;
  input si_rs_bvalid;
  input [11:0]Q;
  input [11:0]\m_axi_awaddr[11] ;
  input [11:0]\m_axi_araddr[11] ;
  input [11:0]\m_axi_araddr[11]_0 ;
  input b_push;
  input s_axi_awvalid;
  input [3:0]\axaddr_incr_reg[3]_0 ;
  input [3:0]\axaddr_incr_reg[3]_1 ;
  input \wrap_second_len_r_reg[2]_0 ;
  input [3:0]\wrap_second_len_r_reg[3]_1 ;
  input [1:0]\axaddr_offset_r_reg[0] ;
  input [3:0]\axaddr_offset_r_reg[3] ;
  input next_pending_r_reg;
  input \wrap_second_len_r_reg[3]_2 ;
  input [1:0]\axaddr_offset_r_reg[3]_0 ;
  input m_valid_i_reg_2;
  input s_axi_rready;
  input [3:0]\wrap_second_len_r_reg[3]_3 ;
  input [3:0]\axaddr_offset_r_reg[3]_1 ;
  input [1:0]out;
  input [1:0]\skid_buffer_reg[1] ;
  input [1:0]s_axi_awid;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awsize;
  input [2:0]s_axi_awprot;
  input [11:0]s_axi_awaddr;
  input \m_axi_awaddr[11]_0 ;
  input sel_first_1;
  input sel_first;
  input [1:0]s_axi_arid;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arsize;
  input [2:0]s_axi_arprot;
  input [11:0]s_axi_araddr;
  input \m_axi_araddr[11]_1 ;
  input sel_first_2;
  input \m_axi_araddr[11]_2 ;
  input [2:0]\skid_buffer_reg[36] ;
  input [33:0]\skid_buffer_reg[33] ;
  input [0:0]E;
  input [0:0]\m_payload_i_reg[0] ;

  wire [1:0]D;
  wire [0:0]E;
  wire [3:0]O;
  wire [11:0]Q;
  wire [1:0]S;
  wire aclk;
  wire \ar.ar_pipe_n_2 ;
  wire aresetn;
  wire \aw.aw_pipe_n_1 ;
  wire \aw.aw_pipe_n_79 ;
  wire [11:0]axaddr_incr;
  wire [1:0]\axaddr_incr_reg[3] ;
  wire [3:0]\axaddr_incr_reg[3]_0 ;
  wire [3:0]\axaddr_incr_reg[3]_1 ;
  wire [3:0]axaddr_offset;
  wire [3:0]axaddr_offset_0;
  wire [1:0]\axaddr_offset_r_reg[0] ;
  wire [3:0]\axaddr_offset_r_reg[3] ;
  wire [1:0]\axaddr_offset_r_reg[3]_0 ;
  wire [3:0]\axaddr_offset_r_reg[3]_1 ;
  wire [1:0]\axaddr_wrap_reg[3] ;
  wire [1:0]\axaddr_wrap_reg[3]_0 ;
  wire b_push;
  wire incr_next_pending;
  wire [11:0]m_axi_araddr;
  wire [11:0]\m_axi_araddr[11] ;
  wire [11:0]\m_axi_araddr[11]_0 ;
  wire \m_axi_araddr[11]_1 ;
  wire \m_axi_araddr[11]_2 ;
  wire [11:0]m_axi_awaddr;
  wire [11:0]\m_axi_awaddr[11] ;
  wire \m_axi_awaddr[11]_0 ;
  wire [0:0]\m_payload_i_reg[0] ;
  wire \m_payload_i_reg[24] ;
  wire \m_payload_i_reg[24]_0 ;
  wire \m_payload_i_reg[27] ;
  wire \m_payload_i_reg[27]_0 ;
  wire [6:0]\m_payload_i_reg[27]_1 ;
  wire [6:0]\m_payload_i_reg[27]_2 ;
  wire \m_payload_i_reg[29] ;
  wire [28:0]\m_payload_i_reg[34] ;
  wire [28:0]\m_payload_i_reg[34]_0 ;
  wire [36:0]\m_payload_i_reg[36] ;
  wire [3:0]\m_payload_i_reg[3] ;
  wire [3:0]\m_payload_i_reg[3]_0 ;
  wire [3:0]\m_payload_i_reg[7] ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire next_pending_r_reg;
  wire [1:0]out;
  wire [11:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [1:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire [1:0]s_axi_arsize;
  wire [11:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [1:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awprot;
  wire [1:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire s_ready_i0;
  wire s_ready_i_reg;
  wire s_ready_i_reg_0;
  wire sel_first;
  wire sel_first_1;
  wire sel_first_2;
  wire shandshake;
  wire si_rs_arvalid;
  wire si_rs_awvalid;
  wire si_rs_bready;
  wire si_rs_bvalid;
  wire si_rs_rready;
  wire [1:0]\skid_buffer_reg[1] ;
  wire [33:0]\skid_buffer_reg[33] ;
  wire [2:0]\skid_buffer_reg[36] ;
  wire [1:0]\wrap_second_len_r_reg[2] ;
  wire \wrap_second_len_r_reg[2]_0 ;
  wire [3:0]\wrap_second_len_r_reg[3] ;
  wire [3:0]\wrap_second_len_r_reg[3]_0 ;
  wire [3:0]\wrap_second_len_r_reg[3]_1 ;
  wire \wrap_second_len_r_reg[3]_2 ;
  wire [3:0]\wrap_second_len_r_reg[3]_3 ;

  axi_map_auto_pc_0_axi_register_slice_v2_1_29_axic_register_slice \ar.ar_pipe 
       (.\FSM_sequential_state_reg[1] (axaddr_offset_0[1]),
        .\FSM_sequential_state_reg[1]_0 (axaddr_offset_0[2]),
        .O(O),
        .Q(\m_payload_i_reg[34]_0 ),
        .aclk(aclk),
        .\aresetn_d_reg[1]_inv_0 (\ar.ar_pipe_n_2 ),
        .\aresetn_d_reg[1]_inv_1 (\aw.aw_pipe_n_79 ),
        .\axaddr_incr_reg[3] (\axaddr_incr_reg[3] ),
        .\axaddr_incr_reg[3]_0 (\axaddr_incr_reg[3]_1 ),
        .\axaddr_offset_r_reg[3] (\axaddr_offset_r_reg[3]_0 ),
        .\axaddr_offset_r_reg[3]_0 (\axaddr_offset_r_reg[3]_1 ),
        .\axaddr_wrap_reg[3] (\axaddr_wrap_reg[3]_0 ),
        .incr_next_pending(incr_next_pending),
        .m_axi_araddr(m_axi_araddr),
        .\m_axi_araddr[11] (\m_axi_araddr[11] ),
        .\m_axi_araddr[11]_0 (\m_axi_araddr[11]_0 ),
        .\m_axi_araddr[11]_1 (\m_axi_araddr[11]_1 ),
        .\m_axi_araddr[11]_2 (\m_axi_araddr[11]_2 ),
        .\m_payload_i_reg[0]_0 (\m_payload_i_reg[0] ),
        .\m_payload_i_reg[24]_0 (\m_payload_i_reg[24]_0 ),
        .\m_payload_i_reg[24]_1 (axaddr_offset_0[0]),
        .\m_payload_i_reg[27]_0 (\m_payload_i_reg[27]_0 ),
        .\m_payload_i_reg[27]_1 (axaddr_offset_0[3]),
        .\m_payload_i_reg[27]_2 (\m_payload_i_reg[27]_2 ),
        .\m_payload_i_reg[29]_0 (\m_payload_i_reg[29] ),
        .\m_payload_i_reg[3]_0 (\m_payload_i_reg[3] ),
        .\m_payload_i_reg[7]_0 (\m_payload_i_reg[7] ),
        .m_valid_i_reg_0(si_rs_arvalid),
        .m_valid_i_reg_1(m_valid_i_reg_1),
        .next_pending_r_reg(next_pending_r_reg),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arsize(s_axi_arsize),
        .s_ready_i0(s_ready_i0),
        .s_ready_i_reg_0(s_ready_i_reg_0),
        .s_ready_i_reg_1(\aw.aw_pipe_n_1 ),
        .sel_first_2(sel_first_2),
        .\wrap_second_len_r_reg[2] (\wrap_second_len_r_reg[2] ),
        .\wrap_second_len_r_reg[3] (\wrap_second_len_r_reg[3]_0 ),
        .\wrap_second_len_r_reg[3]_0 (\wrap_second_len_r_reg[3]_2 ),
        .\wrap_second_len_r_reg[3]_1 (\wrap_second_len_r_reg[3]_3 ));
  axi_map_auto_pc_0_axi_register_slice_v2_1_29_axic_register_slice_0 \aw.aw_pipe 
       (.D(D),
        .E(E),
        .\FSM_sequential_state_reg[1] (axaddr_offset[1]),
        .\FSM_sequential_state_reg[1]_0 (axaddr_offset[2]),
        .Q(Q),
        .S(S),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[0]_0 (\aw.aw_pipe_n_1 ),
        .\aresetn_d_reg[0]_1 (\aw.aw_pipe_n_79 ),
        .axaddr_incr(axaddr_incr),
        .\axaddr_incr_reg[3] (\axaddr_incr_reg[3]_0 ),
        .\axaddr_offset_r_reg[0] (\axaddr_offset_r_reg[0] ),
        .\axaddr_offset_r_reg[3] (\axaddr_offset_r_reg[3] ),
        .\axaddr_wrap_reg[3] (\axaddr_wrap_reg[3] ),
        .b_push(b_push),
        .m_axi_awaddr(m_axi_awaddr),
        .\m_axi_awaddr[11] (\m_axi_awaddr[11] ),
        .\m_axi_awaddr[11]_0 (\m_axi_awaddr[11]_0 ),
        .\m_payload_i_reg[24]_0 (\m_payload_i_reg[24] ),
        .\m_payload_i_reg[24]_1 (axaddr_offset[0]),
        .\m_payload_i_reg[27]_0 (\m_payload_i_reg[27] ),
        .\m_payload_i_reg[27]_1 (axaddr_offset[3]),
        .\m_payload_i_reg[27]_2 (\m_payload_i_reg[27]_1 ),
        .\m_payload_i_reg[34]_0 (\m_payload_i_reg[34] ),
        .m_valid_i_reg_0(si_rs_awvalid),
        .m_valid_i_reg_1(\ar.ar_pipe_n_2 ),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_ready_i_reg_0(s_ready_i_reg),
        .sel_first(sel_first),
        .sel_first_1(sel_first_1),
        .\wrap_second_len_r_reg[2] (\wrap_second_len_r_reg[2]_0 ),
        .\wrap_second_len_r_reg[3] (\wrap_second_len_r_reg[3] ),
        .\wrap_second_len_r_reg[3]_0 (\wrap_second_len_r_reg[3]_1 ));
  axi_map_auto_pc_0_axi_register_slice_v2_1_29_axic_register_slice__parameterized1 \b.b_pipe 
       (.aclk(aclk),
        .\m_payload_i_reg[3]_0 (\m_payload_i_reg[3]_0 ),
        .m_valid_i_reg_0(m_valid_i_reg),
        .m_valid_i_reg_1(\ar.ar_pipe_n_2 ),
        .out(out),
        .s_axi_bready(s_axi_bready),
        .s_ready_i_reg_0(si_rs_bready),
        .s_ready_i_reg_1(\aw.aw_pipe_n_1 ),
        .shandshake(shandshake),
        .si_rs_bvalid(si_rs_bvalid),
        .\skid_buffer_reg[1]_0 (\skid_buffer_reg[1] ));
  axi_map_auto_pc_0_axi_register_slice_v2_1_29_axic_register_slice__parameterized2 \r.r_pipe 
       (.aclk(aclk),
        .\m_payload_i_reg[36]_0 (\m_payload_i_reg[36] ),
        .m_valid_i_reg_0(m_valid_i_reg_0),
        .m_valid_i_reg_1(\ar.ar_pipe_n_2 ),
        .m_valid_i_reg_2(m_valid_i_reg_2),
        .s_axi_rready(s_axi_rready),
        .s_ready_i_reg_0(si_rs_rready),
        .s_ready_i_reg_1(\aw.aw_pipe_n_1 ),
        .\skid_buffer_reg[33]_0 (\skid_buffer_reg[33] ),
        .\skid_buffer_reg[36]_0 (\skid_buffer_reg[36] ));
endmodule

module axi_map_auto_pc_0_axi_register_slice_v2_1_29_axic_register_slice
   (s_ready_i_reg_0,
    m_valid_i_reg_0,
    \aresetn_d_reg[1]_inv_0 ,
    \axaddr_incr_reg[3] ,
    Q,
    \axaddr_wrap_reg[3] ,
    \m_payload_i_reg[3]_0 ,
    \m_payload_i_reg[7]_0 ,
    O,
    incr_next_pending,
    \m_payload_i_reg[27]_0 ,
    \m_payload_i_reg[29]_0 ,
    \wrap_second_len_r_reg[2] ,
    \wrap_second_len_r_reg[3] ,
    \m_payload_i_reg[24]_0 ,
    \m_payload_i_reg[24]_1 ,
    \m_payload_i_reg[27]_1 ,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    \m_payload_i_reg[27]_2 ,
    m_axi_araddr,
    s_ready_i_reg_1,
    s_ready_i0,
    aclk,
    m_valid_i_reg_1,
    \aresetn_d_reg[1]_inv_1 ,
    \m_axi_araddr[11] ,
    \m_axi_araddr[11]_0 ,
    \axaddr_incr_reg[3]_0 ,
    next_pending_r_reg,
    \wrap_second_len_r_reg[3]_0 ,
    \axaddr_offset_r_reg[3] ,
    \wrap_second_len_r_reg[3]_1 ,
    \axaddr_offset_r_reg[3]_0 ,
    s_axi_arid,
    s_axi_arlen,
    s_axi_arburst,
    s_axi_arsize,
    s_axi_arprot,
    s_axi_araddr,
    \m_axi_araddr[11]_1 ,
    sel_first_2,
    \m_axi_araddr[11]_2 ,
    \m_payload_i_reg[0]_0 );
  output s_ready_i_reg_0;
  output m_valid_i_reg_0;
  output \aresetn_d_reg[1]_inv_0 ;
  output [1:0]\axaddr_incr_reg[3] ;
  output [28:0]Q;
  output [1:0]\axaddr_wrap_reg[3] ;
  output [3:0]\m_payload_i_reg[3]_0 ;
  output [3:0]\m_payload_i_reg[7]_0 ;
  output [3:0]O;
  output incr_next_pending;
  output \m_payload_i_reg[27]_0 ;
  output \m_payload_i_reg[29]_0 ;
  output [1:0]\wrap_second_len_r_reg[2] ;
  output [3:0]\wrap_second_len_r_reg[3] ;
  output \m_payload_i_reg[24]_0 ;
  output \m_payload_i_reg[24]_1 ;
  output \m_payload_i_reg[27]_1 ;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[1]_0 ;
  output [6:0]\m_payload_i_reg[27]_2 ;
  output [11:0]m_axi_araddr;
  input s_ready_i_reg_1;
  input s_ready_i0;
  input aclk;
  input m_valid_i_reg_1;
  input \aresetn_d_reg[1]_inv_1 ;
  input [11:0]\m_axi_araddr[11] ;
  input [11:0]\m_axi_araddr[11]_0 ;
  input [3:0]\axaddr_incr_reg[3]_0 ;
  input next_pending_r_reg;
  input \wrap_second_len_r_reg[3]_0 ;
  input [1:0]\axaddr_offset_r_reg[3] ;
  input [3:0]\wrap_second_len_r_reg[3]_1 ;
  input [3:0]\axaddr_offset_r_reg[3]_0 ;
  input [1:0]s_axi_arid;
  input [7:0]s_axi_arlen;
  input [1:0]s_axi_arburst;
  input [1:0]s_axi_arsize;
  input [2:0]s_axi_arprot;
  input [11:0]s_axi_araddr;
  input \m_axi_araddr[11]_1 ;
  input sel_first_2;
  input \m_axi_araddr[11]_2 ;
  input [0:0]\m_payload_i_reg[0]_0 ;

  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [3:0]O;
  wire [28:0]Q;
  wire aclk;
  wire \aresetn_d_reg[1]_inv_0 ;
  wire \aresetn_d_reg[1]_inv_1 ;
  wire \axaddr_incr[3]_i_4__0_n_0 ;
  wire \axaddr_incr[3]_i_5__0_n_0 ;
  wire \axaddr_incr[3]_i_6__0_n_0 ;
  wire \axaddr_incr_reg[11]_i_3__0_n_1 ;
  wire \axaddr_incr_reg[11]_i_3__0_n_2 ;
  wire \axaddr_incr_reg[11]_i_3__0_n_3 ;
  wire [1:0]\axaddr_incr_reg[3] ;
  wire [3:0]\axaddr_incr_reg[3]_0 ;
  wire \axaddr_incr_reg[3]_i_2__0_n_0 ;
  wire \axaddr_incr_reg[3]_i_2__0_n_1 ;
  wire \axaddr_incr_reg[3]_i_2__0_n_2 ;
  wire \axaddr_incr_reg[3]_i_2__0_n_3 ;
  wire \axaddr_incr_reg[7]_i_2__0_n_0 ;
  wire \axaddr_incr_reg[7]_i_2__0_n_1 ;
  wire \axaddr_incr_reg[7]_i_2__0_n_2 ;
  wire \axaddr_incr_reg[7]_i_2__0_n_3 ;
  wire \axaddr_offset_r[0]_i_2__0_n_0 ;
  wire \axaddr_offset_r[1]_i_2__0_n_0 ;
  wire \axaddr_offset_r[1]_i_3__0_n_0 ;
  wire \axaddr_offset_r[2]_i_2__0_n_0 ;
  wire \axaddr_offset_r[2]_i_3__0_n_0 ;
  wire \axaddr_offset_r[3]_i_2__0_n_0 ;
  wire [1:0]\axaddr_offset_r_reg[3] ;
  wire [3:0]\axaddr_offset_r_reg[3]_0 ;
  wire [1:0]\axaddr_wrap_reg[3] ;
  wire incr_next_pending;
  wire [11:0]m_axi_araddr;
  wire [11:0]\m_axi_araddr[11] ;
  wire [11:0]\m_axi_araddr[11]_0 ;
  wire \m_axi_araddr[11]_1 ;
  wire \m_axi_araddr[11]_2 ;
  wire \m_axi_araddr[11]_INST_0_i_1_n_0 ;
  wire \m_axi_araddr[11]_INST_0_i_2_n_0 ;
  wire \m_payload_i[0]_i_1__1_n_0 ;
  wire \m_payload_i[10]_i_1__0_n_0 ;
  wire \m_payload_i[11]_i_1__0_n_0 ;
  wire \m_payload_i[12]_i_1__0_n_0 ;
  wire \m_payload_i[13]_i_1__0_n_0 ;
  wire \m_payload_i[14]_i_2__0_n_0 ;
  wire \m_payload_i[15]_i_1__0_n_0 ;
  wire \m_payload_i[16]_i_1__0_n_0 ;
  wire \m_payload_i[18]_i_1__0_n_0 ;
  wire \m_payload_i[19]_i_1__0_n_0 ;
  wire \m_payload_i[1]_i_1__1_n_0 ;
  wire \m_payload_i[24]_i_1__0_n_0 ;
  wire \m_payload_i[25]_i_1__0_n_0 ;
  wire \m_payload_i[26]_i_1__0_n_0 ;
  wire \m_payload_i[27]_i_1__0_n_0 ;
  wire \m_payload_i[28]_i_1__0_n_0 ;
  wire \m_payload_i[29]_i_1__0_n_0 ;
  wire \m_payload_i[2]_i_1__1_n_0 ;
  wire \m_payload_i[30]_i_1__0_n_0 ;
  wire \m_payload_i[31]_i_1__0_n_0 ;
  wire \m_payload_i[33]_i_1__0_n_0 ;
  wire \m_payload_i[34]_i_1__0_n_0 ;
  wire \m_payload_i[3]_i_1__1_n_0 ;
  wire \m_payload_i[4]_i_1__0_n_0 ;
  wire \m_payload_i[5]_i_1__0_n_0 ;
  wire \m_payload_i[6]_i_1__0_n_0 ;
  wire \m_payload_i[7]_i_1__0_n_0 ;
  wire \m_payload_i[8]_i_1__0_n_0 ;
  wire \m_payload_i[9]_i_1__0_n_0 ;
  wire [0:0]\m_payload_i_reg[0]_0 ;
  wire \m_payload_i_reg[24]_0 ;
  wire \m_payload_i_reg[24]_1 ;
  wire \m_payload_i_reg[27]_0 ;
  wire \m_payload_i_reg[27]_1 ;
  wire [6:0]\m_payload_i_reg[27]_2 ;
  wire \m_payload_i_reg[29]_0 ;
  wire [3:0]\m_payload_i_reg[3]_0 ;
  wire [3:0]\m_payload_i_reg[7]_0 ;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire next_pending_r_reg;
  wire [11:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [1:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [2:0]s_axi_arprot;
  wire [1:0]s_axi_arsize;
  wire s_ready_i0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire sel_first_2;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;
  wire \wrap_boundary_axaddr_r[3]_i_2__0_n_0 ;
  wire \wrap_cnt_r[3]_i_2__0_n_0 ;
  wire [1:0]\wrap_second_len_r_reg[2] ;
  wire [3:0]\wrap_second_len_r_reg[3] ;
  wire \wrap_second_len_r_reg[3]_0 ;
  wire [3:0]\wrap_second_len_r_reg[3]_1 ;
  wire [3:3]\NLW_axaddr_incr_reg[11]_i_3__0_CO_UNCONNECTED ;

  (* inverted = "yes" *) 
  FDRE #(
    .INIT(1'b1)) 
    \aresetn_d_reg[1]_inv 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d_reg[1]_inv_1 ),
        .Q(\aresetn_d_reg[1]_inv_0 ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h6A)) 
    \axaddr_incr[3]_i_11__0 
       (.I0(\m_axi_araddr[11] [3]),
        .I1(Q[16]),
        .I2(Q[15]),
        .O(\axaddr_incr_reg[3] [1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \axaddr_incr[3]_i_14__0 
       (.I0(\m_axi_araddr[11] [0]),
        .I1(Q[16]),
        .I2(Q[15]),
        .O(\axaddr_incr_reg[3] [0]));
  LUT3 #(
    .INIT(8'h70)) 
    \axaddr_incr[3]_i_4__0 
       (.I0(Q[16]),
        .I1(Q[15]),
        .I2(Q[2]),
        .O(\axaddr_incr[3]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axaddr_incr[3]_i_5__0 
       (.I0(Q[1]),
        .I1(Q[16]),
        .O(\axaddr_incr[3]_i_5__0_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \axaddr_incr[3]_i_6__0 
       (.I0(Q[0]),
        .I1(Q[16]),
        .I2(Q[15]),
        .O(\axaddr_incr[3]_i_6__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[11]_i_3__0 
       (.CI(\axaddr_incr_reg[7]_i_2__0_n_0 ),
        .CO({\NLW_axaddr_incr_reg[11]_i_3__0_CO_UNCONNECTED [3],\axaddr_incr_reg[11]_i_3__0_n_1 ,\axaddr_incr_reg[11]_i_3__0_n_2 ,\axaddr_incr_reg[11]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(O),
        .S(Q[11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[3]_i_2__0 
       (.CI(1'b0),
        .CO({\axaddr_incr_reg[3]_i_2__0_n_0 ,\axaddr_incr_reg[3]_i_2__0_n_1 ,\axaddr_incr_reg[3]_i_2__0_n_2 ,\axaddr_incr_reg[3]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({Q[3],\axaddr_incr[3]_i_4__0_n_0 ,\axaddr_incr[3]_i_5__0_n_0 ,\axaddr_incr[3]_i_6__0_n_0 }),
        .O(\m_payload_i_reg[3]_0 ),
        .S(\axaddr_incr_reg[3]_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[7]_i_2__0 
       (.CI(\axaddr_incr_reg[3]_i_2__0_n_0 ),
        .CO({\axaddr_incr_reg[7]_i_2__0_n_0 ,\axaddr_incr_reg[7]_i_2__0_n_1 ,\axaddr_incr_reg[7]_i_2__0_n_2 ,\axaddr_incr_reg[7]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\m_payload_i_reg[7]_0 ),
        .S(Q[7:4]));
  LUT6 #(
    .INIT(64'hF8FFFFFF08000000)) 
    \axaddr_offset_r[0]_i_1__0 
       (.I0(\axaddr_offset_r[0]_i_2__0_n_0 ),
        .I1(Q[19]),
        .I2(\axaddr_offset_r_reg[3] [1]),
        .I3(\axaddr_offset_r_reg[3] [0]),
        .I4(m_valid_i_reg_0),
        .I5(\axaddr_offset_r_reg[3]_0 [0]),
        .O(\m_payload_i_reg[24]_1 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axaddr_offset_r[0]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[16]),
        .I4(Q[15]),
        .I5(Q[2]),
        .O(\axaddr_offset_r[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF0E000000)) 
    \axaddr_offset_r[1]_i_1__0 
       (.I0(\axaddr_offset_r[1]_i_2__0_n_0 ),
        .I1(\axaddr_offset_r[1]_i_3__0_n_0 ),
        .I2(\axaddr_offset_r_reg[3] [1]),
        .I3(\axaddr_offset_r_reg[3] [0]),
        .I4(m_valid_i_reg_0),
        .I5(\axaddr_offset_r_reg[3]_0 [1]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT5 #(
    .INIT(32'h0E000200)) 
    \axaddr_offset_r[1]_i_2__0 
       (.I0(Q[1]),
        .I1(Q[15]),
        .I2(Q[16]),
        .I3(Q[20]),
        .I4(Q[2]),
        .O(\axaddr_offset_r[1]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hE0002000)) 
    \axaddr_offset_r[1]_i_3__0 
       (.I0(Q[3]),
        .I1(Q[15]),
        .I2(Q[16]),
        .I3(Q[20]),
        .I4(Q[4]),
        .O(\axaddr_offset_r[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF0E000000)) 
    \axaddr_offset_r[2]_i_1__0 
       (.I0(\axaddr_offset_r[2]_i_2__0_n_0 ),
        .I1(\axaddr_offset_r[2]_i_3__0_n_0 ),
        .I2(\axaddr_offset_r_reg[3] [1]),
        .I3(\axaddr_offset_r_reg[3] [0]),
        .I4(m_valid_i_reg_0),
        .I5(\axaddr_offset_r_reg[3]_0 [2]),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0E000200)) 
    \axaddr_offset_r[2]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[15]),
        .I2(Q[16]),
        .I3(Q[21]),
        .I4(Q[3]),
        .O(\axaddr_offset_r[2]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hE0002000)) 
    \axaddr_offset_r[2]_i_3__0 
       (.I0(Q[4]),
        .I1(Q[15]),
        .I2(Q[16]),
        .I3(Q[21]),
        .I4(Q[5]),
        .O(\axaddr_offset_r[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFFFFF08000000)) 
    \axaddr_offset_r[3]_i_1__0 
       (.I0(\axaddr_offset_r[3]_i_2__0_n_0 ),
        .I1(Q[22]),
        .I2(\axaddr_offset_r_reg[3] [1]),
        .I3(\axaddr_offset_r_reg[3] [0]),
        .I4(m_valid_i_reg_0),
        .I5(\axaddr_offset_r_reg[3]_0 [3]),
        .O(\m_payload_i_reg[27]_1 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axaddr_offset_r[3]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[6]),
        .I3(Q[16]),
        .I4(Q[15]),
        .I5(Q[5]),
        .O(\axaddr_offset_r[3]_i_2__0_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axaddr_wrap[3]_i_3__0 
       (.I0(\m_axi_araddr[11]_0 [3]),
        .I1(Q[16]),
        .I2(Q[15]),
        .O(\axaddr_wrap_reg[3] [1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \axaddr_wrap[3]_i_6__0 
       (.I0(\m_axi_araddr[11]_0 [0]),
        .I1(Q[16]),
        .I2(Q[15]),
        .O(\axaddr_wrap_reg[3] [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[0]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [0]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [0]),
        .I4(Q[0]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[10]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [10]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [10]),
        .I4(Q[10]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[11]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [11]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [11]),
        .I4(Q[11]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[11]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_araddr[11]_INST_0_i_1 
       (.I0(Q[18]),
        .I1(\m_axi_araddr[11]_2 ),
        .O(\m_axi_araddr[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \m_axi_araddr[11]_INST_0_i_2 
       (.I0(Q[17]),
        .I1(sel_first_2),
        .I2(Q[18]),
        .O(\m_axi_araddr[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[1]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [1]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [1]),
        .I4(Q[1]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[2]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [2]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [2]),
        .I4(Q[2]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[3]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [3]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [3]),
        .I4(Q[3]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[4]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [4]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [4]),
        .I4(Q[4]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[5]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [5]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [5]),
        .I4(Q[5]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[6]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [6]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [6]),
        .I4(Q[6]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[7]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [7]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [7]),
        .I4(Q[7]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[8]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [8]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [8]),
        .I4(Q[8]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_araddr[9]_INST_0 
       (.I0(\m_axi_araddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_araddr[11]_0 [9]),
        .I2(\m_axi_araddr[11]_INST_0_i_2_n_0 ),
        .I3(\m_axi_araddr[11] [9]),
        .I4(Q[9]),
        .I5(\m_axi_araddr[11]_1 ),
        .O(m_axi_araddr[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[0]_i_1__1 
       (.I0(s_axi_araddr[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(\m_payload_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[10]_i_1__0 
       (.I0(s_axi_araddr[10]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[10] ),
        .O(\m_payload_i[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[11]_i_1__0 
       (.I0(s_axi_araddr[11]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[11] ),
        .O(\m_payload_i[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[12]_i_1__0 
       (.I0(s_axi_arprot[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[12] ),
        .O(\m_payload_i[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[13]_i_1__0 
       (.I0(s_axi_arprot[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[13] ),
        .O(\m_payload_i[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[14]_i_2__0 
       (.I0(s_axi_arprot[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[14] ),
        .O(\m_payload_i[14]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[15]_i_1__0 
       (.I0(s_axi_arsize[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[15] ),
        .O(\m_payload_i[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[16]_i_1__0 
       (.I0(s_axi_arsize[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[16] ),
        .O(\m_payload_i[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[18]_i_1__0 
       (.I0(s_axi_arburst[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[18] ),
        .O(\m_payload_i[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[19]_i_1__0 
       (.I0(s_axi_arburst[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[19] ),
        .O(\m_payload_i[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[1]_i_1__1 
       (.I0(s_axi_araddr[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(\m_payload_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[24]_i_1__0 
       (.I0(s_axi_arlen[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[24] ),
        .O(\m_payload_i[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[25]_i_1__0 
       (.I0(s_axi_arlen[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[25] ),
        .O(\m_payload_i[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[26]_i_1__0 
       (.I0(s_axi_arlen[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[26] ),
        .O(\m_payload_i[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[27]_i_1__0 
       (.I0(s_axi_arlen[3]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[27] ),
        .O(\m_payload_i[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[28]_i_1__0 
       (.I0(s_axi_arlen[4]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[28] ),
        .O(\m_payload_i[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[29]_i_1__0 
       (.I0(s_axi_arlen[5]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[29] ),
        .O(\m_payload_i[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1__1 
       (.I0(s_axi_araddr[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(\m_payload_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[30]_i_1__0 
       (.I0(s_axi_arlen[6]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[30] ),
        .O(\m_payload_i[30]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[31]_i_1__0 
       (.I0(s_axi_arlen[7]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[31] ),
        .O(\m_payload_i[31]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[33]_i_1__0 
       (.I0(s_axi_arid[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[33] ),
        .O(\m_payload_i[33]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[34]_i_1__0 
       (.I0(s_axi_arid[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(\m_payload_i[34]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_1__1 
       (.I0(s_axi_araddr[3]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[3] ),
        .O(\m_payload_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[4]_i_1__0 
       (.I0(s_axi_araddr[4]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[4] ),
        .O(\m_payload_i[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[5]_i_1__0 
       (.I0(s_axi_araddr[5]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[5] ),
        .O(\m_payload_i[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[6]_i_1__0 
       (.I0(s_axi_araddr[6]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[6] ),
        .O(\m_payload_i[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[7]_i_1__0 
       (.I0(s_axi_araddr[7]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[7] ),
        .O(\m_payload_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[8]_i_1__0 
       (.I0(s_axi_araddr[8]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[8] ),
        .O(\m_payload_i[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[9]_i_1__0 
       (.I0(s_axi_araddr[9]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[9] ),
        .O(\m_payload_i[9]_i_1__0_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[10]_i_1__0_n_0 ),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[11]_i_1__0_n_0 ),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[12]_i_1__0_n_0 ),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[13]_i_1__0_n_0 ),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[14]_i_2__0_n_0 ),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[15]_i_1__0_n_0 ),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[16]_i_1__0_n_0 ),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[18]_i_1__0_n_0 ),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[19]_i_1__0_n_0 ),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[24]_i_1__0_n_0 ),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[25]_i_1__0_n_0 ),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[26]_i_1__0_n_0 ),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[27]_i_1__0_n_0 ),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[28]_i_1__0_n_0 ),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[29]_i_1__0_n_0 ),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[30]_i_1__0_n_0 ),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[31]_i_1__0_n_0 ),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[33]_i_1__0_n_0 ),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[34]_i_1__0_n_0 ),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\m_payload_i_reg[0]_0 ),
        .D(\m_payload_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_reg_1),
        .Q(m_valid_i_reg_0),
        .R(\aresetn_d_reg[1]_inv_0 ));
  LUT5 #(
    .INIT(32'hFAFAFAEA)) 
    next_pending_r_i_1__2
       (.I0(next_pending_r_reg),
        .I1(Q[26]),
        .I2(\wrap_second_len_r_reg[3]_0 ),
        .I3(Q[25]),
        .I4(Q[24]),
        .O(incr_next_pending));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    next_pending_r_i_2__2
       (.I0(Q[22]),
        .I1(Q[19]),
        .I2(Q[20]),
        .I3(Q[21]),
        .I4(\wrap_second_len_r_reg[3]_0 ),
        .O(\m_payload_i_reg[27]_0 ));
  LUT6 #(
    .INIT(64'h0F0000000E000000)) 
    s_axburst_eq0_i_2__0
       (.I0(Q[24]),
        .I1(Q[25]),
        .I2(\axaddr_offset_r_reg[3] [1]),
        .I3(\axaddr_offset_r_reg[3] [0]),
        .I4(m_valid_i_reg_0),
        .I5(Q[26]),
        .O(\m_payload_i_reg[29]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i0),
        .Q(s_ready_i_reg_0),
        .R(s_ready_i_reg_1));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arprot[0]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arprot[1]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arprot[2]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arsize[0]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arsize[1]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arburst[0]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arburst[1]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[0]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[1]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[2]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[3]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[4]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[5]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[6]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arlen[7]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arid[0]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_arid[1]),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_araddr[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hCCC4)) 
    \wrap_boundary_axaddr_r[0]_i_1__0 
       (.I0(Q[19]),
        .I1(Q[0]),
        .I2(Q[15]),
        .I3(Q[16]),
        .O(\m_payload_i_reg[27]_2 [0]));
  LUT5 #(
    .INIT(32'hA0B0F0B0)) 
    \wrap_boundary_axaddr_r[1]_i_1__0 
       (.I0(Q[16]),
        .I1(Q[20]),
        .I2(Q[1]),
        .I3(Q[15]),
        .I4(Q[19]),
        .O(\m_payload_i_reg[27]_2 [1]));
  LUT6 #(
    .INIT(64'hF0500030F050F030)) 
    \wrap_boundary_axaddr_r[2]_i_1__0 
       (.I0(Q[20]),
        .I1(Q[21]),
        .I2(Q[2]),
        .I3(Q[16]),
        .I4(Q[15]),
        .I5(Q[19]),
        .O(\m_payload_i_reg[27]_2 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0400040C)) 
    \wrap_boundary_axaddr_r[3]_i_1__0 
       (.I0(Q[20]),
        .I1(Q[3]),
        .I2(Q[15]),
        .I3(Q[16]),
        .I4(Q[22]),
        .I5(\wrap_boundary_axaddr_r[3]_i_2__0_n_0 ),
        .O(\m_payload_i_reg[27]_2 [3]));
  LUT5 #(
    .INIT(32'h0400C400)) 
    \wrap_boundary_axaddr_r[3]_i_2__0 
       (.I0(Q[21]),
        .I1(Q[15]),
        .I2(Q[16]),
        .I3(Q[3]),
        .I4(Q[19]),
        .O(\wrap_boundary_axaddr_r[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h003050F0F03050F0)) 
    \wrap_boundary_axaddr_r[4]_i_1__0 
       (.I0(Q[21]),
        .I1(Q[22]),
        .I2(Q[4]),
        .I3(Q[16]),
        .I4(Q[15]),
        .I5(Q[20]),
        .O(\m_payload_i_reg[27]_2 [4]));
  LUT5 #(
    .INIT(32'h5070F070)) 
    \wrap_boundary_axaddr_r[5]_i_1__0 
       (.I0(Q[16]),
        .I1(Q[22]),
        .I2(Q[5]),
        .I3(Q[15]),
        .I4(Q[21]),
        .O(\m_payload_i_reg[27]_2 [5]));
  LUT4 #(
    .INIT(16'h4CCC)) 
    \wrap_boundary_axaddr_r[6]_i_1__0 
       (.I0(Q[22]),
        .I1(Q[6]),
        .I2(Q[15]),
        .I3(Q[16]),
        .O(\m_payload_i_reg[27]_2 [6]));
  LUT6 #(
    .INIT(64'hDF5FFF7F20A00080)) 
    \wrap_cnt_r[2]_i_1__0 
       (.I0(\wrap_second_len_r_reg[3] [1]),
        .I1(\wrap_second_len_r_reg[3]_0 ),
        .I2(\m_payload_i_reg[24]_0 ),
        .I3(\m_payload_i_reg[24]_1 ),
        .I4(\wrap_second_len_r_reg[3]_1 [0]),
        .I5(\wrap_second_len_r_reg[3] [2]),
        .O(\wrap_second_len_r_reg[2] [0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wrap_cnt_r[2]_i_2__0 
       (.I0(\m_payload_i_reg[24]_1 ),
        .I1(\m_payload_i_reg[27]_1 ),
        .I2(\FSM_sequential_state_reg[1] ),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .O(\m_payload_i_reg[24]_0 ));
  LUT4 #(
    .INIT(16'hDF20)) 
    \wrap_cnt_r[3]_i_1__0 
       (.I0(\wrap_second_len_r_reg[3] [2]),
        .I1(\wrap_cnt_r[3]_i_2__0_n_0 ),
        .I2(\wrap_second_len_r_reg[3] [1]),
        .I3(\wrap_second_len_r_reg[3] [3]),
        .O(\wrap_second_len_r_reg[2] [1]));
  LUT6 #(
    .INIT(64'hAAAA0003FFFF5557)) 
    \wrap_cnt_r[3]_i_2__0 
       (.I0(\wrap_second_len_r_reg[3]_0 ),
        .I1(\m_payload_i_reg[27]_1 ),
        .I2(\FSM_sequential_state_reg[1] ),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .I4(\m_payload_i_reg[24]_1 ),
        .I5(\wrap_second_len_r_reg[3]_1 [0]),
        .O(\wrap_cnt_r[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h33333330AAAAAAAA)) 
    \wrap_second_len_r[0]_i_1__0 
       (.I0(\wrap_second_len_r_reg[3]_1 [0]),
        .I1(\m_payload_i_reg[24]_1 ),
        .I2(\FSM_sequential_state_reg[1]_0 ),
        .I3(\FSM_sequential_state_reg[1] ),
        .I4(\m_payload_i_reg[27]_1 ),
        .I5(\wrap_second_len_r_reg[3]_0 ),
        .O(\wrap_second_len_r_reg[3] [0]));
  LUT6 #(
    .INIT(64'hCACACACA3A3A3A0A)) 
    \wrap_second_len_r[1]_i_1__0 
       (.I0(\wrap_second_len_r_reg[3]_1 [1]),
        .I1(\m_payload_i_reg[24]_1 ),
        .I2(\wrap_second_len_r_reg[3]_0 ),
        .I3(\m_payload_i_reg[27]_1 ),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .I5(\FSM_sequential_state_reg[1] ),
        .O(\wrap_second_len_r_reg[3] [1]));
  LUT6 #(
    .INIT(64'hCCCCC3C0AAAAAAAA)) 
    \wrap_second_len_r[2]_i_1__0 
       (.I0(\wrap_second_len_r_reg[3]_1 [2]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(\FSM_sequential_state_reg[1] ),
        .I3(\m_payload_i_reg[27]_1 ),
        .I4(\m_payload_i_reg[24]_1 ),
        .I5(\wrap_second_len_r_reg[3]_0 ),
        .O(\wrap_second_len_r_reg[3] [2]));
  LUT6 #(
    .INIT(64'hCACACACACACACA0A)) 
    \wrap_second_len_r[3]_i_1__0 
       (.I0(\wrap_second_len_r_reg[3]_1 [3]),
        .I1(\m_payload_i_reg[27]_1 ),
        .I2(\wrap_second_len_r_reg[3]_0 ),
        .I3(\m_payload_i_reg[24]_1 ),
        .I4(\FSM_sequential_state_reg[1] ),
        .I5(\FSM_sequential_state_reg[1]_0 ),
        .O(\wrap_second_len_r_reg[3] [3]));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_29_axic_register_slice" *) 
module axi_map_auto_pc_0_axi_register_slice_v2_1_29_axic_register_slice_0
   (s_ready_i_reg_0,
    \aresetn_d_reg[0]_0 ,
    m_valid_i_reg_0,
    S,
    \m_payload_i_reg[34]_0 ,
    \axaddr_wrap_reg[3] ,
    axaddr_incr,
    \m_payload_i_reg[27]_0 ,
    D,
    \wrap_second_len_r_reg[3] ,
    \m_payload_i_reg[24]_0 ,
    \m_payload_i_reg[24]_1 ,
    \m_payload_i_reg[27]_1 ,
    \FSM_sequential_state_reg[1] ,
    \FSM_sequential_state_reg[1]_0 ,
    \m_payload_i_reg[27]_2 ,
    m_axi_awaddr,
    \aresetn_d_reg[0]_1 ,
    aclk,
    m_valid_i_reg_1,
    aresetn,
    Q,
    \m_axi_awaddr[11] ,
    b_push,
    s_axi_awvalid,
    \axaddr_incr_reg[3] ,
    \wrap_second_len_r_reg[2] ,
    \wrap_second_len_r_reg[3]_0 ,
    \axaddr_offset_r_reg[0] ,
    \axaddr_offset_r_reg[3] ,
    s_axi_awid,
    s_axi_awlen,
    s_axi_awburst,
    s_axi_awsize,
    s_axi_awprot,
    s_axi_awaddr,
    \m_axi_awaddr[11]_0 ,
    sel_first_1,
    sel_first,
    E);
  output s_ready_i_reg_0;
  output \aresetn_d_reg[0]_0 ;
  output m_valid_i_reg_0;
  output [1:0]S;
  output [28:0]\m_payload_i_reg[34]_0 ;
  output [1:0]\axaddr_wrap_reg[3] ;
  output [11:0]axaddr_incr;
  output \m_payload_i_reg[27]_0 ;
  output [1:0]D;
  output [3:0]\wrap_second_len_r_reg[3] ;
  output \m_payload_i_reg[24]_0 ;
  output \m_payload_i_reg[24]_1 ;
  output \m_payload_i_reg[27]_1 ;
  output \FSM_sequential_state_reg[1] ;
  output \FSM_sequential_state_reg[1]_0 ;
  output [6:0]\m_payload_i_reg[27]_2 ;
  output [11:0]m_axi_awaddr;
  output \aresetn_d_reg[0]_1 ;
  input aclk;
  input m_valid_i_reg_1;
  input aresetn;
  input [11:0]Q;
  input [11:0]\m_axi_awaddr[11] ;
  input b_push;
  input s_axi_awvalid;
  input [3:0]\axaddr_incr_reg[3] ;
  input \wrap_second_len_r_reg[2] ;
  input [3:0]\wrap_second_len_r_reg[3]_0 ;
  input [1:0]\axaddr_offset_r_reg[0] ;
  input [3:0]\axaddr_offset_r_reg[3] ;
  input [1:0]s_axi_awid;
  input [7:0]s_axi_awlen;
  input [1:0]s_axi_awburst;
  input [1:0]s_axi_awsize;
  input [2:0]s_axi_awprot;
  input [11:0]s_axi_awaddr;
  input \m_axi_awaddr[11]_0 ;
  input sel_first_1;
  input sel_first;
  input [0:0]E;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state_reg[1] ;
  wire \FSM_sequential_state_reg[1]_0 ;
  wire [11:0]Q;
  wire [1:0]S;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[0]_0 ;
  wire \aresetn_d_reg[0]_1 ;
  wire \aresetn_d_reg_n_0_[0] ;
  wire [11:0]axaddr_incr;
  wire \axaddr_incr[3]_i_4_n_0 ;
  wire \axaddr_incr[3]_i_5_n_0 ;
  wire \axaddr_incr[3]_i_6_n_0 ;
  wire \axaddr_incr_reg[11]_i_3_n_1 ;
  wire \axaddr_incr_reg[11]_i_3_n_2 ;
  wire \axaddr_incr_reg[11]_i_3_n_3 ;
  wire [3:0]\axaddr_incr_reg[3] ;
  wire \axaddr_incr_reg[3]_i_2_n_0 ;
  wire \axaddr_incr_reg[3]_i_2_n_1 ;
  wire \axaddr_incr_reg[3]_i_2_n_2 ;
  wire \axaddr_incr_reg[3]_i_2_n_3 ;
  wire \axaddr_incr_reg[7]_i_2_n_0 ;
  wire \axaddr_incr_reg[7]_i_2_n_1 ;
  wire \axaddr_incr_reg[7]_i_2_n_2 ;
  wire \axaddr_incr_reg[7]_i_2_n_3 ;
  wire \axaddr_offset_r[0]_i_2_n_0 ;
  wire \axaddr_offset_r[1]_i_2_n_0 ;
  wire \axaddr_offset_r[1]_i_3_n_0 ;
  wire \axaddr_offset_r[2]_i_2_n_0 ;
  wire \axaddr_offset_r[2]_i_3_n_0 ;
  wire \axaddr_offset_r[3]_i_2_n_0 ;
  wire [1:0]\axaddr_offset_r_reg[0] ;
  wire [3:0]\axaddr_offset_r_reg[3] ;
  wire [1:0]\axaddr_wrap_reg[3] ;
  wire b_push;
  wire [11:0]m_axi_awaddr;
  wire [11:0]\m_axi_awaddr[11] ;
  wire \m_axi_awaddr[11]_0 ;
  wire \m_axi_awaddr[11]_INST_0_i_1_n_0 ;
  wire \m_axi_awaddr[11]_INST_0_i_2_n_0 ;
  wire \m_payload_i_reg[24]_0 ;
  wire \m_payload_i_reg[24]_1 ;
  wire \m_payload_i_reg[27]_0 ;
  wire \m_payload_i_reg[27]_1 ;
  wire [6:0]\m_payload_i_reg[27]_2 ;
  wire [28:0]\m_payload_i_reg[34]_0 ;
  wire m_valid_i_i_1__1_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire [11:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [1:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [2:0]s_axi_awprot;
  wire [1:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire s_ready_i0;
  wire s_ready_i_reg_0;
  wire sel_first;
  wire sel_first_1;
  wire [34:0]skid_buffer;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;
  wire \wrap_boundary_axaddr_r[3]_i_2_n_0 ;
  wire \wrap_cnt_r[3]_i_2_n_0 ;
  wire \wrap_second_len_r_reg[2] ;
  wire [3:0]\wrap_second_len_r_reg[3] ;
  wire [3:0]\wrap_second_len_r_reg[3]_0 ;
  wire [3:3]\NLW_axaddr_incr_reg[11]_i_3_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h7)) 
    \aresetn_d[1]_inv_i_1 
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .I1(aresetn),
        .O(\aresetn_d_reg[0]_1 ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\aresetn_d_reg_n_0_[0] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h6A)) 
    \axaddr_incr[3]_i_11 
       (.I0(Q[3]),
        .I1(\m_payload_i_reg[34]_0 [16]),
        .I2(\m_payload_i_reg[34]_0 [15]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \axaddr_incr[3]_i_14 
       (.I0(Q[0]),
        .I1(\m_payload_i_reg[34]_0 [16]),
        .I2(\m_payload_i_reg[34]_0 [15]),
        .O(S[0]));
  LUT3 #(
    .INIT(8'h70)) 
    \axaddr_incr[3]_i_4 
       (.I0(\m_payload_i_reg[34]_0 [16]),
        .I1(\m_payload_i_reg[34]_0 [15]),
        .I2(\m_payload_i_reg[34]_0 [2]),
        .O(\axaddr_incr[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axaddr_incr[3]_i_5 
       (.I0(\m_payload_i_reg[34]_0 [1]),
        .I1(\m_payload_i_reg[34]_0 [16]),
        .O(\axaddr_incr[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \axaddr_incr[3]_i_6 
       (.I0(\m_payload_i_reg[34]_0 [0]),
        .I1(\m_payload_i_reg[34]_0 [16]),
        .I2(\m_payload_i_reg[34]_0 [15]),
        .O(\axaddr_incr[3]_i_6_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[11]_i_3 
       (.CI(\axaddr_incr_reg[7]_i_2_n_0 ),
        .CO({\NLW_axaddr_incr_reg[11]_i_3_CO_UNCONNECTED [3],\axaddr_incr_reg[11]_i_3_n_1 ,\axaddr_incr_reg[11]_i_3_n_2 ,\axaddr_incr_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(axaddr_incr[11:8]),
        .S(\m_payload_i_reg[34]_0 [11:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\axaddr_incr_reg[3]_i_2_n_0 ,\axaddr_incr_reg[3]_i_2_n_1 ,\axaddr_incr_reg[3]_i_2_n_2 ,\axaddr_incr_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({\m_payload_i_reg[34]_0 [3],\axaddr_incr[3]_i_4_n_0 ,\axaddr_incr[3]_i_5_n_0 ,\axaddr_incr[3]_i_6_n_0 }),
        .O(axaddr_incr[3:0]),
        .S(\axaddr_incr_reg[3] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \axaddr_incr_reg[7]_i_2 
       (.CI(\axaddr_incr_reg[3]_i_2_n_0 ),
        .CO({\axaddr_incr_reg[7]_i_2_n_0 ,\axaddr_incr_reg[7]_i_2_n_1 ,\axaddr_incr_reg[7]_i_2_n_2 ,\axaddr_incr_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(axaddr_incr[7:4]),
        .S(\m_payload_i_reg[34]_0 [7:4]));
  LUT6 #(
    .INIT(64'hF8FFFFFF08000000)) 
    \axaddr_offset_r[0]_i_1 
       (.I0(\axaddr_offset_r[0]_i_2_n_0 ),
        .I1(\m_payload_i_reg[34]_0 [19]),
        .I2(\axaddr_offset_r_reg[0] [1]),
        .I3(\axaddr_offset_r_reg[0] [0]),
        .I4(m_valid_i_reg_0),
        .I5(\axaddr_offset_r_reg[3] [0]),
        .O(\m_payload_i_reg[24]_1 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axaddr_offset_r[0]_i_2 
       (.I0(\m_payload_i_reg[34]_0 [1]),
        .I1(\m_payload_i_reg[34]_0 [0]),
        .I2(\m_payload_i_reg[34]_0 [3]),
        .I3(\m_payload_i_reg[34]_0 [16]),
        .I4(\m_payload_i_reg[34]_0 [15]),
        .I5(\m_payload_i_reg[34]_0 [2]),
        .O(\axaddr_offset_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF0E000000)) 
    \axaddr_offset_r[1]_i_1 
       (.I0(\axaddr_offset_r[1]_i_2_n_0 ),
        .I1(\axaddr_offset_r[1]_i_3_n_0 ),
        .I2(\axaddr_offset_r_reg[0] [1]),
        .I3(\axaddr_offset_r_reg[0] [0]),
        .I4(m_valid_i_reg_0),
        .I5(\axaddr_offset_r_reg[3] [1]),
        .O(\FSM_sequential_state_reg[1] ));
  LUT5 #(
    .INIT(32'h0E000200)) 
    \axaddr_offset_r[1]_i_2 
       (.I0(\m_payload_i_reg[34]_0 [1]),
        .I1(\m_payload_i_reg[34]_0 [15]),
        .I2(\m_payload_i_reg[34]_0 [16]),
        .I3(\m_payload_i_reg[34]_0 [20]),
        .I4(\m_payload_i_reg[34]_0 [2]),
        .O(\axaddr_offset_r[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE0002000)) 
    \axaddr_offset_r[1]_i_3 
       (.I0(\m_payload_i_reg[34]_0 [3]),
        .I1(\m_payload_i_reg[34]_0 [15]),
        .I2(\m_payload_i_reg[34]_0 [16]),
        .I3(\m_payload_i_reg[34]_0 [20]),
        .I4(\m_payload_i_reg[34]_0 [4]),
        .O(\axaddr_offset_r[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF0E000000)) 
    \axaddr_offset_r[2]_i_1 
       (.I0(\axaddr_offset_r[2]_i_2_n_0 ),
        .I1(\axaddr_offset_r[2]_i_3_n_0 ),
        .I2(\axaddr_offset_r_reg[0] [1]),
        .I3(\axaddr_offset_r_reg[0] [0]),
        .I4(m_valid_i_reg_0),
        .I5(\axaddr_offset_r_reg[3] [2]),
        .O(\FSM_sequential_state_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h0E000200)) 
    \axaddr_offset_r[2]_i_2 
       (.I0(\m_payload_i_reg[34]_0 [2]),
        .I1(\m_payload_i_reg[34]_0 [15]),
        .I2(\m_payload_i_reg[34]_0 [16]),
        .I3(\m_payload_i_reg[34]_0 [21]),
        .I4(\m_payload_i_reg[34]_0 [3]),
        .O(\axaddr_offset_r[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE0002000)) 
    \axaddr_offset_r[2]_i_3 
       (.I0(\m_payload_i_reg[34]_0 [4]),
        .I1(\m_payload_i_reg[34]_0 [15]),
        .I2(\m_payload_i_reg[34]_0 [16]),
        .I3(\m_payload_i_reg[34]_0 [21]),
        .I4(\m_payload_i_reg[34]_0 [5]),
        .O(\axaddr_offset_r[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFFFFF08000000)) 
    \axaddr_offset_r[3]_i_1 
       (.I0(\axaddr_offset_r[3]_i_2_n_0 ),
        .I1(\m_payload_i_reg[34]_0 [22]),
        .I2(\axaddr_offset_r_reg[0] [1]),
        .I3(\axaddr_offset_r_reg[0] [0]),
        .I4(m_valid_i_reg_0),
        .I5(\axaddr_offset_r_reg[3] [3]),
        .O(\m_payload_i_reg[27]_1 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axaddr_offset_r[3]_i_2 
       (.I0(\m_payload_i_reg[34]_0 [4]),
        .I1(\m_payload_i_reg[34]_0 [3]),
        .I2(\m_payload_i_reg[34]_0 [6]),
        .I3(\m_payload_i_reg[34]_0 [16]),
        .I4(\m_payload_i_reg[34]_0 [15]),
        .I5(\m_payload_i_reg[34]_0 [5]),
        .O(\axaddr_offset_r[3]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axaddr_wrap[3]_i_3 
       (.I0(\m_axi_awaddr[11] [3]),
        .I1(\m_payload_i_reg[34]_0 [16]),
        .I2(\m_payload_i_reg[34]_0 [15]),
        .O(\axaddr_wrap_reg[3] [1]));
  LUT3 #(
    .INIT(8'hA9)) 
    \axaddr_wrap[3]_i_6 
       (.I0(\m_axi_awaddr[11] [0]),
        .I1(\m_payload_i_reg[34]_0 [16]),
        .I2(\m_payload_i_reg[34]_0 [15]),
        .O(\axaddr_wrap_reg[3] [0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_awaddr[0]_INST_0 
       (.I0(\m_axi_awaddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awaddr[11] [0]),
        .I2(\m_axi_awaddr[11]_INST_0_i_2_n_0 ),
        .I3(Q[0]),
        .I4(\m_payload_i_reg[34]_0 [0]),
        .I5(\m_axi_awaddr[11]_0 ),
        .O(m_axi_awaddr[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_awaddr[10]_INST_0 
       (.I0(\m_axi_awaddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awaddr[11] [10]),
        .I2(\m_axi_awaddr[11]_INST_0_i_2_n_0 ),
        .I3(Q[10]),
        .I4(\m_payload_i_reg[34]_0 [10]),
        .I5(\m_axi_awaddr[11]_0 ),
        .O(m_axi_awaddr[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_awaddr[11]_INST_0 
       (.I0(\m_axi_awaddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awaddr[11] [11]),
        .I2(\m_axi_awaddr[11]_INST_0_i_2_n_0 ),
        .I3(Q[11]),
        .I4(\m_payload_i_reg[34]_0 [11]),
        .I5(\m_axi_awaddr[11]_0 ),
        .O(m_axi_awaddr[11]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axi_awaddr[11]_INST_0_i_1 
       (.I0(\m_payload_i_reg[34]_0 [18]),
        .I1(sel_first),
        .O(\m_axi_awaddr[11]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \m_axi_awaddr[11]_INST_0_i_2 
       (.I0(\m_payload_i_reg[34]_0 [17]),
        .I1(sel_first_1),
        .I2(\m_payload_i_reg[34]_0 [18]),
        .O(\m_axi_awaddr[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_awaddr[1]_INST_0 
       (.I0(\m_axi_awaddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awaddr[11] [1]),
        .I2(\m_axi_awaddr[11]_INST_0_i_2_n_0 ),
        .I3(Q[1]),
        .I4(\m_payload_i_reg[34]_0 [1]),
        .I5(\m_axi_awaddr[11]_0 ),
        .O(m_axi_awaddr[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_awaddr[2]_INST_0 
       (.I0(\m_axi_awaddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awaddr[11] [2]),
        .I2(\m_axi_awaddr[11]_INST_0_i_2_n_0 ),
        .I3(Q[2]),
        .I4(\m_payload_i_reg[34]_0 [2]),
        .I5(\m_axi_awaddr[11]_0 ),
        .O(m_axi_awaddr[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_awaddr[3]_INST_0 
       (.I0(\m_axi_awaddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awaddr[11] [3]),
        .I2(\m_axi_awaddr[11]_INST_0_i_2_n_0 ),
        .I3(Q[3]),
        .I4(\m_payload_i_reg[34]_0 [3]),
        .I5(\m_axi_awaddr[11]_0 ),
        .O(m_axi_awaddr[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_awaddr[4]_INST_0 
       (.I0(\m_axi_awaddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awaddr[11] [4]),
        .I2(\m_axi_awaddr[11]_INST_0_i_2_n_0 ),
        .I3(Q[4]),
        .I4(\m_payload_i_reg[34]_0 [4]),
        .I5(\m_axi_awaddr[11]_0 ),
        .O(m_axi_awaddr[4]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_awaddr[5]_INST_0 
       (.I0(\m_axi_awaddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awaddr[11] [5]),
        .I2(\m_axi_awaddr[11]_INST_0_i_2_n_0 ),
        .I3(Q[5]),
        .I4(\m_payload_i_reg[34]_0 [5]),
        .I5(\m_axi_awaddr[11]_0 ),
        .O(m_axi_awaddr[5]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_awaddr[6]_INST_0 
       (.I0(\m_axi_awaddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awaddr[11] [6]),
        .I2(\m_axi_awaddr[11]_INST_0_i_2_n_0 ),
        .I3(Q[6]),
        .I4(\m_payload_i_reg[34]_0 [6]),
        .I5(\m_axi_awaddr[11]_0 ),
        .O(m_axi_awaddr[6]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_awaddr[7]_INST_0 
       (.I0(\m_axi_awaddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awaddr[11] [7]),
        .I2(\m_axi_awaddr[11]_INST_0_i_2_n_0 ),
        .I3(Q[7]),
        .I4(\m_payload_i_reg[34]_0 [7]),
        .I5(\m_axi_awaddr[11]_0 ),
        .O(m_axi_awaddr[7]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_awaddr[8]_INST_0 
       (.I0(\m_axi_awaddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awaddr[11] [8]),
        .I2(\m_axi_awaddr[11]_INST_0_i_2_n_0 ),
        .I3(Q[8]),
        .I4(\m_payload_i_reg[34]_0 [8]),
        .I5(\m_axi_awaddr[11]_0 ),
        .O(m_axi_awaddr[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \m_axi_awaddr[9]_INST_0 
       (.I0(\m_axi_awaddr[11]_INST_0_i_1_n_0 ),
        .I1(\m_axi_awaddr[11] [9]),
        .I2(\m_axi_awaddr[11]_INST_0_i_2_n_0 ),
        .I3(Q[9]),
        .I4(\m_payload_i_reg[34]_0 [9]),
        .I5(\m_axi_awaddr[11]_0 ),
        .O(m_axi_awaddr[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[0]_i_1__0 
       (.I0(s_axi_awaddr[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(skid_buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[10]_i_1 
       (.I0(s_axi_awaddr[10]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[10] ),
        .O(skid_buffer[10]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[11]_i_1 
       (.I0(s_axi_awaddr[11]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[11] ),
        .O(skid_buffer[11]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[12]_i_1 
       (.I0(s_axi_awprot[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[12] ),
        .O(skid_buffer[12]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[13]_i_1 
       (.I0(s_axi_awprot[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[13] ),
        .O(skid_buffer[13]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[14]_i_2 
       (.I0(s_axi_awprot[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[14] ),
        .O(skid_buffer[14]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[15]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[15] ),
        .O(skid_buffer[15]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[16]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[16] ),
        .O(skid_buffer[16]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[18]_i_1 
       (.I0(s_axi_awburst[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[18] ),
        .O(skid_buffer[18]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[19]_i_1 
       (.I0(s_axi_awburst[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[19] ),
        .O(skid_buffer[19]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[1]_i_1__0 
       (.I0(s_axi_awaddr[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(skid_buffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[24]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[24] ),
        .O(skid_buffer[24]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[25]_i_1 
       (.I0(s_axi_awlen[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[25] ),
        .O(skid_buffer[25]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[26]_i_1 
       (.I0(s_axi_awlen[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[26] ),
        .O(skid_buffer[26]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[27]_i_1 
       (.I0(s_axi_awlen[3]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[27] ),
        .O(skid_buffer[27]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[28]_i_1 
       (.I0(s_axi_awlen[4]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[28] ),
        .O(skid_buffer[28]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[29]_i_1 
       (.I0(s_axi_awlen[5]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[29] ),
        .O(skid_buffer[29]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1__0 
       (.I0(s_axi_awaddr[2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(skid_buffer[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[30]_i_1 
       (.I0(s_axi_awlen[6]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[30] ),
        .O(skid_buffer[30]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[31]_i_1 
       (.I0(s_axi_awlen[7]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[31] ),
        .O(skid_buffer[31]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[33]_i_1 
       (.I0(s_axi_awid[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[33] ),
        .O(skid_buffer[33]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[34]_i_1 
       (.I0(s_axi_awid[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(skid_buffer[34]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_1__0 
       (.I0(s_axi_awaddr[3]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[3] ),
        .O(skid_buffer[3]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[4]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[4] ),
        .O(skid_buffer[4]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[5]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[5] ),
        .O(skid_buffer[5]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[6]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[6] ),
        .O(skid_buffer[6]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[7]_i_1 
       (.I0(s_axi_awaddr[7]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[7] ),
        .O(skid_buffer[7]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[8]_i_1 
       (.I0(s_axi_awaddr[8]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[8] ),
        .O(skid_buffer[8]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[9]_i_1 
       (.I0(s_axi_awaddr[9]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[9] ),
        .O(skid_buffer[9]));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[0]),
        .Q(\m_payload_i_reg[34]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[10]),
        .Q(\m_payload_i_reg[34]_0 [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[11]),
        .Q(\m_payload_i_reg[34]_0 [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[12]),
        .Q(\m_payload_i_reg[34]_0 [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[13]),
        .Q(\m_payload_i_reg[34]_0 [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[14]),
        .Q(\m_payload_i_reg[34]_0 [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[15]),
        .Q(\m_payload_i_reg[34]_0 [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[16]),
        .Q(\m_payload_i_reg[34]_0 [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[18]),
        .Q(\m_payload_i_reg[34]_0 [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[19]),
        .Q(\m_payload_i_reg[34]_0 [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[1]),
        .Q(\m_payload_i_reg[34]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[24]),
        .Q(\m_payload_i_reg[34]_0 [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[25]),
        .Q(\m_payload_i_reg[34]_0 [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[26]),
        .Q(\m_payload_i_reg[34]_0 [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[27]),
        .Q(\m_payload_i_reg[34]_0 [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[28]),
        .Q(\m_payload_i_reg[34]_0 [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[29]),
        .Q(\m_payload_i_reg[34]_0 [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[2]),
        .Q(\m_payload_i_reg[34]_0 [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[30]),
        .Q(\m_payload_i_reg[34]_0 [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[31]),
        .Q(\m_payload_i_reg[34]_0 [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[33]),
        .Q(\m_payload_i_reg[34]_0 [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[34]),
        .Q(\m_payload_i_reg[34]_0 [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[3]),
        .Q(\m_payload_i_reg[34]_0 [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[4]),
        .Q(\m_payload_i_reg[34]_0 [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[5]),
        .Q(\m_payload_i_reg[34]_0 [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[6]),
        .Q(\m_payload_i_reg[34]_0 [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[7]),
        .Q(\m_payload_i_reg[34]_0 [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[8]),
        .Q(\m_payload_i_reg[34]_0 [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(E),
        .D(skid_buffer[9]),
        .Q(\m_payload_i_reg[34]_0 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hF4FF)) 
    m_valid_i_i_1__1
       (.I0(b_push),
        .I1(m_valid_i_reg_0),
        .I2(s_axi_awvalid),
        .I3(s_ready_i_reg_0),
        .O(m_valid_i_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1__1_n_0),
        .Q(m_valid_i_reg_0),
        .R(m_valid_i_reg_1));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    next_pending_r_i_2__0
       (.I0(\m_payload_i_reg[34]_0 [22]),
        .I1(\m_payload_i_reg[34]_0 [19]),
        .I2(\m_payload_i_reg[34]_0 [20]),
        .I3(\m_payload_i_reg[34]_0 [21]),
        .I4(\wrap_second_len_r_reg[2] ),
        .O(\m_payload_i_reg[27]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    s_ready_i_i_1__0
       (.I0(\aresetn_d_reg_n_0_[0] ),
        .O(\aresetn_d_reg[0]_0 ));
  LUT4 #(
    .INIT(16'hBFBB)) 
    s_ready_i_i_2
       (.I0(b_push),
        .I1(m_valid_i_reg_0),
        .I2(s_axi_awvalid),
        .I3(s_ready_i_reg_0),
        .O(s_ready_i0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i0),
        .Q(s_ready_i_reg_0),
        .R(\aresetn_d_reg[0]_0 ));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awaddr[0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awaddr[10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awaddr[11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awprot[0]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awprot[1]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awprot[2]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awsize[0]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awsize[1]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awburst[0]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awburst[1]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awaddr[1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awlen[0]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awlen[1]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awlen[2]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awlen[3]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awlen[4]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awlen[5]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awaddr[2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awlen[6]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awlen[7]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awid[0]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awid[1]),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awaddr[3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awaddr[4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awaddr[5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awaddr[6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awaddr[7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awaddr[8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(s_axi_awaddr[9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hCCC4)) 
    \wrap_boundary_axaddr_r[0]_i_1 
       (.I0(\m_payload_i_reg[34]_0 [19]),
        .I1(\m_payload_i_reg[34]_0 [0]),
        .I2(\m_payload_i_reg[34]_0 [15]),
        .I3(\m_payload_i_reg[34]_0 [16]),
        .O(\m_payload_i_reg[27]_2 [0]));
  LUT5 #(
    .INIT(32'hA0B0F0B0)) 
    \wrap_boundary_axaddr_r[1]_i_1 
       (.I0(\m_payload_i_reg[34]_0 [16]),
        .I1(\m_payload_i_reg[34]_0 [20]),
        .I2(\m_payload_i_reg[34]_0 [1]),
        .I3(\m_payload_i_reg[34]_0 [15]),
        .I4(\m_payload_i_reg[34]_0 [19]),
        .O(\m_payload_i_reg[27]_2 [1]));
  LUT6 #(
    .INIT(64'hF0500030F050F030)) 
    \wrap_boundary_axaddr_r[2]_i_1 
       (.I0(\m_payload_i_reg[34]_0 [20]),
        .I1(\m_payload_i_reg[34]_0 [21]),
        .I2(\m_payload_i_reg[34]_0 [2]),
        .I3(\m_payload_i_reg[34]_0 [16]),
        .I4(\m_payload_i_reg[34]_0 [15]),
        .I5(\m_payload_i_reg[34]_0 [19]),
        .O(\m_payload_i_reg[27]_2 [2]));
  LUT6 #(
    .INIT(64'hFFFFFFFF0400040C)) 
    \wrap_boundary_axaddr_r[3]_i_1 
       (.I0(\m_payload_i_reg[34]_0 [20]),
        .I1(\m_payload_i_reg[34]_0 [3]),
        .I2(\m_payload_i_reg[34]_0 [15]),
        .I3(\m_payload_i_reg[34]_0 [16]),
        .I4(\m_payload_i_reg[34]_0 [22]),
        .I5(\wrap_boundary_axaddr_r[3]_i_2_n_0 ),
        .O(\m_payload_i_reg[27]_2 [3]));
  LUT5 #(
    .INIT(32'h0400C400)) 
    \wrap_boundary_axaddr_r[3]_i_2 
       (.I0(\m_payload_i_reg[34]_0 [21]),
        .I1(\m_payload_i_reg[34]_0 [15]),
        .I2(\m_payload_i_reg[34]_0 [16]),
        .I3(\m_payload_i_reg[34]_0 [3]),
        .I4(\m_payload_i_reg[34]_0 [19]),
        .O(\wrap_boundary_axaddr_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h003050F0F03050F0)) 
    \wrap_boundary_axaddr_r[4]_i_1 
       (.I0(\m_payload_i_reg[34]_0 [21]),
        .I1(\m_payload_i_reg[34]_0 [22]),
        .I2(\m_payload_i_reg[34]_0 [4]),
        .I3(\m_payload_i_reg[34]_0 [16]),
        .I4(\m_payload_i_reg[34]_0 [15]),
        .I5(\m_payload_i_reg[34]_0 [20]),
        .O(\m_payload_i_reg[27]_2 [4]));
  LUT5 #(
    .INIT(32'h5070F070)) 
    \wrap_boundary_axaddr_r[5]_i_1 
       (.I0(\m_payload_i_reg[34]_0 [16]),
        .I1(\m_payload_i_reg[34]_0 [22]),
        .I2(\m_payload_i_reg[34]_0 [5]),
        .I3(\m_payload_i_reg[34]_0 [15]),
        .I4(\m_payload_i_reg[34]_0 [21]),
        .O(\m_payload_i_reg[27]_2 [5]));
  LUT4 #(
    .INIT(16'h4CCC)) 
    \wrap_boundary_axaddr_r[6]_i_1 
       (.I0(\m_payload_i_reg[34]_0 [22]),
        .I1(\m_payload_i_reg[34]_0 [6]),
        .I2(\m_payload_i_reg[34]_0 [15]),
        .I3(\m_payload_i_reg[34]_0 [16]),
        .O(\m_payload_i_reg[27]_2 [6]));
  LUT6 #(
    .INIT(64'hDF5FFF7F20A00080)) 
    \wrap_cnt_r[2]_i_1 
       (.I0(\wrap_second_len_r_reg[3] [1]),
        .I1(\wrap_second_len_r_reg[2] ),
        .I2(\m_payload_i_reg[24]_0 ),
        .I3(\m_payload_i_reg[24]_1 ),
        .I4(\wrap_second_len_r_reg[3]_0 [0]),
        .I5(\wrap_second_len_r_reg[3] [2]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wrap_cnt_r[2]_i_2 
       (.I0(\m_payload_i_reg[24]_1 ),
        .I1(\m_payload_i_reg[27]_1 ),
        .I2(\FSM_sequential_state_reg[1] ),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .O(\m_payload_i_reg[24]_0 ));
  LUT4 #(
    .INIT(16'hDF20)) 
    \wrap_cnt_r[3]_i_1 
       (.I0(\wrap_second_len_r_reg[3] [2]),
        .I1(\wrap_cnt_r[3]_i_2_n_0 ),
        .I2(\wrap_second_len_r_reg[3] [1]),
        .I3(\wrap_second_len_r_reg[3] [3]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hAAAA0003FFFF5557)) 
    \wrap_cnt_r[3]_i_2 
       (.I0(\wrap_second_len_r_reg[2] ),
        .I1(\m_payload_i_reg[27]_1 ),
        .I2(\FSM_sequential_state_reg[1] ),
        .I3(\FSM_sequential_state_reg[1]_0 ),
        .I4(\m_payload_i_reg[24]_1 ),
        .I5(\wrap_second_len_r_reg[3]_0 [0]),
        .O(\wrap_cnt_r[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33333330AAAAAAAA)) 
    \wrap_second_len_r[0]_i_1 
       (.I0(\wrap_second_len_r_reg[3]_0 [0]),
        .I1(\m_payload_i_reg[24]_1 ),
        .I2(\FSM_sequential_state_reg[1]_0 ),
        .I3(\FSM_sequential_state_reg[1] ),
        .I4(\m_payload_i_reg[27]_1 ),
        .I5(\wrap_second_len_r_reg[2] ),
        .O(\wrap_second_len_r_reg[3] [0]));
  LUT6 #(
    .INIT(64'hCACACACA3A3A3A0A)) 
    \wrap_second_len_r[1]_i_1 
       (.I0(\wrap_second_len_r_reg[3]_0 [1]),
        .I1(\m_payload_i_reg[24]_1 ),
        .I2(\wrap_second_len_r_reg[2] ),
        .I3(\m_payload_i_reg[27]_1 ),
        .I4(\FSM_sequential_state_reg[1]_0 ),
        .I5(\FSM_sequential_state_reg[1] ),
        .O(\wrap_second_len_r_reg[3] [1]));
  LUT6 #(
    .INIT(64'hCCCCC3C0AAAAAAAA)) 
    \wrap_second_len_r[2]_i_1 
       (.I0(\wrap_second_len_r_reg[3]_0 [2]),
        .I1(\FSM_sequential_state_reg[1]_0 ),
        .I2(\FSM_sequential_state_reg[1] ),
        .I3(\m_payload_i_reg[27]_1 ),
        .I4(\m_payload_i_reg[24]_1 ),
        .I5(\wrap_second_len_r_reg[2] ),
        .O(\wrap_second_len_r_reg[3] [2]));
  LUT6 #(
    .INIT(64'hCACACACACACACA0A)) 
    \wrap_second_len_r[3]_i_1 
       (.I0(\wrap_second_len_r_reg[3]_0 [3]),
        .I1(\m_payload_i_reg[27]_1 ),
        .I2(\wrap_second_len_r_reg[2] ),
        .I3(\m_payload_i_reg[24]_1 ),
        .I4(\FSM_sequential_state_reg[1] ),
        .I5(\FSM_sequential_state_reg[1]_0 ),
        .O(\wrap_second_len_r_reg[3] [3]));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_29_axic_register_slice" *) 
module axi_map_auto_pc_0_axi_register_slice_v2_1_29_axic_register_slice__parameterized1
   (m_valid_i_reg_0,
    s_ready_i_reg_0,
    shandshake,
    \m_payload_i_reg[3]_0 ,
    m_valid_i_reg_1,
    aclk,
    s_ready_i_reg_1,
    s_axi_bready,
    si_rs_bvalid,
    out,
    \skid_buffer_reg[1]_0 );
  output m_valid_i_reg_0;
  output s_ready_i_reg_0;
  output shandshake;
  output [3:0]\m_payload_i_reg[3]_0 ;
  input m_valid_i_reg_1;
  input aclk;
  input s_ready_i_reg_1;
  input s_axi_bready;
  input si_rs_bvalid;
  input [1:0]out;
  input [1:0]\skid_buffer_reg[1]_0 ;

  wire aclk;
  wire [3:0]\m_payload_i_reg[3]_0 ;
  wire m_valid_i0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire [1:0]out;
  wire p_1_in;
  wire s_axi_bready;
  wire s_ready_i_i_1__1_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire shandshake;
  wire si_rs_bvalid;
  wire [3:0]skid_buffer;
  wire [1:0]\skid_buffer_reg[1]_0 ;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[0]_i_1 
       (.I0(\skid_buffer_reg[1]_0 [0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(skid_buffer[0]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[1]_i_1 
       (.I0(\skid_buffer_reg[1]_0 [1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(skid_buffer[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1 
       (.I0(out[0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(skid_buffer[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[3]_i_1 
       (.I0(s_axi_bready),
        .I1(m_valid_i_reg_0),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_2 
       (.I0(out[1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[3] ),
        .O(skid_buffer[3]));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[0]),
        .Q(\m_payload_i_reg[3]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[1]),
        .Q(\m_payload_i_reg[3]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[2]),
        .Q(\m_payload_i_reg[3]_0 [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(skid_buffer[3]),
        .Q(\m_payload_i_reg[3]_0 [3]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hDDFD)) 
    m_valid_i_i_1__0
       (.I0(s_ready_i_reg_0),
        .I1(si_rs_bvalid),
        .I2(m_valid_i_reg_0),
        .I3(s_axi_bready),
        .O(m_valid_i0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i0),
        .Q(m_valid_i_reg_0),
        .R(m_valid_i_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'hDDFD)) 
    s_ready_i_i_1__1
       (.I0(m_valid_i_reg_0),
        .I1(s_axi_bready),
        .I2(s_ready_i_reg_0),
        .I3(si_rs_bvalid),
        .O(s_ready_i_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1__1_n_0),
        .Q(s_ready_i_reg_0),
        .R(s_ready_i_reg_1));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    shandshake_r_i_1
       (.I0(s_ready_i_reg_0),
        .I1(si_rs_bvalid),
        .O(shandshake));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[1]_0 [0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[1]_0 [1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[0]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(out[1]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_29_axic_register_slice" *) 
module axi_map_auto_pc_0_axi_register_slice_v2_1_29_axic_register_slice__parameterized2
   (m_valid_i_reg_0,
    s_ready_i_reg_0,
    \m_payload_i_reg[36]_0 ,
    m_valid_i_reg_1,
    aclk,
    s_ready_i_reg_1,
    m_valid_i_reg_2,
    s_axi_rready,
    \skid_buffer_reg[36]_0 ,
    \skid_buffer_reg[33]_0 );
  output m_valid_i_reg_0;
  output s_ready_i_reg_0;
  output [36:0]\m_payload_i_reg[36]_0 ;
  input m_valid_i_reg_1;
  input aclk;
  input s_ready_i_reg_1;
  input m_valid_i_reg_2;
  input s_axi_rready;
  input [2:0]\skid_buffer_reg[36]_0 ;
  input [33:0]\skid_buffer_reg[33]_0 ;

  wire aclk;
  wire \m_payload_i[0]_i_1__2_n_0 ;
  wire \m_payload_i[10]_i_1__1_n_0 ;
  wire \m_payload_i[11]_i_1__1_n_0 ;
  wire \m_payload_i[12]_i_1__1_n_0 ;
  wire \m_payload_i[13]_i_1__1_n_0 ;
  wire \m_payload_i[14]_i_1__0_n_0 ;
  wire \m_payload_i[15]_i_1__1_n_0 ;
  wire \m_payload_i[16]_i_1__1_n_0 ;
  wire \m_payload_i[17]_i_1_n_0 ;
  wire \m_payload_i[18]_i_1__1_n_0 ;
  wire \m_payload_i[19]_i_1__1_n_0 ;
  wire \m_payload_i[1]_i_1__2_n_0 ;
  wire \m_payload_i[20]_i_1_n_0 ;
  wire \m_payload_i[21]_i_1_n_0 ;
  wire \m_payload_i[22]_i_1_n_0 ;
  wire \m_payload_i[23]_i_1_n_0 ;
  wire \m_payload_i[24]_i_1__1_n_0 ;
  wire \m_payload_i[25]_i_1__1_n_0 ;
  wire \m_payload_i[26]_i_1__1_n_0 ;
  wire \m_payload_i[27]_i_1__1_n_0 ;
  wire \m_payload_i[28]_i_1__1_n_0 ;
  wire \m_payload_i[29]_i_1__1_n_0 ;
  wire \m_payload_i[2]_i_1__2_n_0 ;
  wire \m_payload_i[30]_i_1__1_n_0 ;
  wire \m_payload_i[31]_i_1__1_n_0 ;
  wire \m_payload_i[32]_i_1_n_0 ;
  wire \m_payload_i[33]_i_1__1_n_0 ;
  wire \m_payload_i[34]_i_1__1_n_0 ;
  wire \m_payload_i[35]_i_1_n_0 ;
  wire \m_payload_i[36]_i_2_n_0 ;
  wire \m_payload_i[3]_i_1__2_n_0 ;
  wire \m_payload_i[4]_i_1__1_n_0 ;
  wire \m_payload_i[5]_i_1__1_n_0 ;
  wire \m_payload_i[6]_i_1__1_n_0 ;
  wire \m_payload_i[7]_i_1__1_n_0 ;
  wire \m_payload_i[8]_i_1__1_n_0 ;
  wire \m_payload_i[9]_i_1__1_n_0 ;
  wire [36:0]\m_payload_i_reg[36]_0 ;
  wire m_valid_i0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire p_1_in;
  wire s_axi_rready;
  wire s_ready_i0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire [33:0]\skid_buffer_reg[33]_0 ;
  wire [2:0]\skid_buffer_reg[36]_0 ;
  wire \skid_buffer_reg_n_0_[0] ;
  wire \skid_buffer_reg_n_0_[10] ;
  wire \skid_buffer_reg_n_0_[11] ;
  wire \skid_buffer_reg_n_0_[12] ;
  wire \skid_buffer_reg_n_0_[13] ;
  wire \skid_buffer_reg_n_0_[14] ;
  wire \skid_buffer_reg_n_0_[15] ;
  wire \skid_buffer_reg_n_0_[16] ;
  wire \skid_buffer_reg_n_0_[17] ;
  wire \skid_buffer_reg_n_0_[18] ;
  wire \skid_buffer_reg_n_0_[19] ;
  wire \skid_buffer_reg_n_0_[1] ;
  wire \skid_buffer_reg_n_0_[20] ;
  wire \skid_buffer_reg_n_0_[21] ;
  wire \skid_buffer_reg_n_0_[22] ;
  wire \skid_buffer_reg_n_0_[23] ;
  wire \skid_buffer_reg_n_0_[24] ;
  wire \skid_buffer_reg_n_0_[25] ;
  wire \skid_buffer_reg_n_0_[26] ;
  wire \skid_buffer_reg_n_0_[27] ;
  wire \skid_buffer_reg_n_0_[28] ;
  wire \skid_buffer_reg_n_0_[29] ;
  wire \skid_buffer_reg_n_0_[2] ;
  wire \skid_buffer_reg_n_0_[30] ;
  wire \skid_buffer_reg_n_0_[31] ;
  wire \skid_buffer_reg_n_0_[32] ;
  wire \skid_buffer_reg_n_0_[33] ;
  wire \skid_buffer_reg_n_0_[34] ;
  wire \skid_buffer_reg_n_0_[35] ;
  wire \skid_buffer_reg_n_0_[36] ;
  wire \skid_buffer_reg_n_0_[3] ;
  wire \skid_buffer_reg_n_0_[4] ;
  wire \skid_buffer_reg_n_0_[5] ;
  wire \skid_buffer_reg_n_0_[6] ;
  wire \skid_buffer_reg_n_0_[7] ;
  wire \skid_buffer_reg_n_0_[8] ;
  wire \skid_buffer_reg_n_0_[9] ;

  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[0]_i_1__2 
       (.I0(\skid_buffer_reg[33]_0 [0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[0] ),
        .O(\m_payload_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[10]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [10]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[10] ),
        .O(\m_payload_i[10]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[11]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [11]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[11] ),
        .O(\m_payload_i[11]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[12]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [12]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[12] ),
        .O(\m_payload_i[12]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[13]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [13]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[13] ),
        .O(\m_payload_i[13]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[14]_i_1__0 
       (.I0(\skid_buffer_reg[33]_0 [14]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[14] ),
        .O(\m_payload_i[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[15]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [15]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[15] ),
        .O(\m_payload_i[15]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[16]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [16]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[16] ),
        .O(\m_payload_i[16]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[17]_i_1 
       (.I0(\skid_buffer_reg[33]_0 [17]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[17] ),
        .O(\m_payload_i[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[18]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [18]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[18] ),
        .O(\m_payload_i[18]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[19]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [19]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[19] ),
        .O(\m_payload_i[19]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[1]_i_1__2 
       (.I0(\skid_buffer_reg[33]_0 [1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[1] ),
        .O(\m_payload_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[20]_i_1 
       (.I0(\skid_buffer_reg[33]_0 [20]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[20] ),
        .O(\m_payload_i[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[21]_i_1 
       (.I0(\skid_buffer_reg[33]_0 [21]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[21] ),
        .O(\m_payload_i[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[22]_i_1 
       (.I0(\skid_buffer_reg[33]_0 [22]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[22] ),
        .O(\m_payload_i[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[23]_i_1 
       (.I0(\skid_buffer_reg[33]_0 [23]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[23] ),
        .O(\m_payload_i[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[24]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [24]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[24] ),
        .O(\m_payload_i[24]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[25]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [25]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[25] ),
        .O(\m_payload_i[25]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[26]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [26]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[26] ),
        .O(\m_payload_i[26]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[27]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [27]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[27] ),
        .O(\m_payload_i[27]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[28]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [28]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[28] ),
        .O(\m_payload_i[28]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[29]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [29]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[29] ),
        .O(\m_payload_i[29]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[2]_i_1__2 
       (.I0(\skid_buffer_reg[33]_0 [2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[2] ),
        .O(\m_payload_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[30]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [30]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[30] ),
        .O(\m_payload_i[30]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[31]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [31]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[31] ),
        .O(\m_payload_i[31]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[32]_i_1 
       (.I0(\skid_buffer_reg[33]_0 [32]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[32] ),
        .O(\m_payload_i[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[33]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [33]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[33] ),
        .O(\m_payload_i[33]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[34]_i_1__1 
       (.I0(\skid_buffer_reg[36]_0 [0]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[34] ),
        .O(\m_payload_i[34]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[35]_i_1 
       (.I0(\skid_buffer_reg[36]_0 [1]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[35] ),
        .O(\m_payload_i[35]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \m_payload_i[36]_i_1 
       (.I0(s_axi_rready),
        .I1(m_valid_i_reg_0),
        .O(p_1_in));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[36]_i_2 
       (.I0(\skid_buffer_reg[36]_0 [2]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[36] ),
        .O(\m_payload_i[36]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[3]_i_1__2 
       (.I0(\skid_buffer_reg[33]_0 [3]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[3] ),
        .O(\m_payload_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[4]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [4]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[4] ),
        .O(\m_payload_i[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[5]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [5]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[5] ),
        .O(\m_payload_i[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[6]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [6]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[6] ),
        .O(\m_payload_i[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[7]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [7]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[7] ),
        .O(\m_payload_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[8]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [8]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[8] ),
        .O(\m_payload_i[8]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_payload_i[9]_i_1__1 
       (.I0(\skid_buffer_reg[33]_0 [9]),
        .I1(s_ready_i_reg_0),
        .I2(\skid_buffer_reg_n_0_[9] ),
        .O(\m_payload_i[9]_i_1__1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[0]_i_1__2_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[10]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[11]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[12]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[13]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[14]_i_1__0_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[15]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[16]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[17]_i_1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[18]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[19]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[1]_i_1__2_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[20]_i_1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[21]_i_1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[22]_i_1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[23]_i_1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[24]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[25]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[26]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[27]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[28]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[29]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[2]_i_1__2_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[30]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[31]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[32]_i_1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[33]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[34]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[35]_i_1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[36]_i_2_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[3]_i_1__2_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[4]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[5]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[6]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[7]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[8]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(p_1_in),
        .D(\m_payload_i[9]_i_1__1_n_0 ),
        .Q(\m_payload_i_reg[36]_0 [9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h75FF)) 
    m_valid_i_i_1
       (.I0(s_ready_i_reg_0),
        .I1(s_axi_rready),
        .I2(m_valid_i_reg_0),
        .I3(m_valid_i_reg_2),
        .O(m_valid_i0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i0),
        .Q(m_valid_i_reg_0),
        .R(m_valid_i_reg_1));
  LUT4 #(
    .INIT(16'hFF8F)) 
    s_ready_i_i_1
       (.I0(s_ready_i_reg_0),
        .I1(m_valid_i_reg_2),
        .I2(m_valid_i_reg_0),
        .I3(s_axi_rready),
        .O(s_ready_i0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i0),
        .Q(s_ready_i_reg_0),
        .R(s_ready_i_reg_1));
  FDRE \skid_buffer_reg[0] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [0]),
        .Q(\skid_buffer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[10] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [10]),
        .Q(\skid_buffer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[11] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [11]),
        .Q(\skid_buffer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[12] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [12]),
        .Q(\skid_buffer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[13] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [13]),
        .Q(\skid_buffer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[14] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [14]),
        .Q(\skid_buffer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[15] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [15]),
        .Q(\skid_buffer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[16] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [16]),
        .Q(\skid_buffer_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[17] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [17]),
        .Q(\skid_buffer_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[18] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [18]),
        .Q(\skid_buffer_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[19] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [19]),
        .Q(\skid_buffer_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[1] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [1]),
        .Q(\skid_buffer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[20] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [20]),
        .Q(\skid_buffer_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[21] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [21]),
        .Q(\skid_buffer_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[22] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [22]),
        .Q(\skid_buffer_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[23] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [23]),
        .Q(\skid_buffer_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[24] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [24]),
        .Q(\skid_buffer_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[25] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [25]),
        .Q(\skid_buffer_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[26] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [26]),
        .Q(\skid_buffer_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[27] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [27]),
        .Q(\skid_buffer_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[28] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [28]),
        .Q(\skid_buffer_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[29] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [29]),
        .Q(\skid_buffer_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[2] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [2]),
        .Q(\skid_buffer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[30] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [30]),
        .Q(\skid_buffer_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[31] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [31]),
        .Q(\skid_buffer_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[32] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [32]),
        .Q(\skid_buffer_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[33] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [33]),
        .Q(\skid_buffer_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[34] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[36]_0 [0]),
        .Q(\skid_buffer_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[35] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[36]_0 [1]),
        .Q(\skid_buffer_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[36] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[36]_0 [2]),
        .Q(\skid_buffer_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[3] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [3]),
        .Q(\skid_buffer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[4] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [4]),
        .Q(\skid_buffer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[5] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [5]),
        .Q(\skid_buffer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[6] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [6]),
        .Q(\skid_buffer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[7] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [7]),
        .Q(\skid_buffer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[8] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [8]),
        .Q(\skid_buffer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \skid_buffer_reg[9] 
       (.C(aclk),
        .CE(s_ready_i_reg_0),
        .D(\skid_buffer_reg[33]_0 [9]),
        .Q(\skid_buffer_reg_n_0_[9] ),
        .R(1'b0));
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
