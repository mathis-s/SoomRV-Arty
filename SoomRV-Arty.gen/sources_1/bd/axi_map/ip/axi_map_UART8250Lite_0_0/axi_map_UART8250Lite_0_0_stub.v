// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed Nov 22 00:33:34 2023
// Host        : m-desktop running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               SoomRV-Arty.gen/sources_1/bd/axi_map/ip/axi_map_UART8250Lite_0_0/axi_map_UART8250Lite_0_0_stub.v
// Design      : axi_map_UART8250Lite_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "UART8250Lite,Vivado 2023.2" *)
module axi_map_UART8250Lite_0_0(clk, aresetn, s_axi_awaddr, s_axi_awsize, 
  s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, 
  s_axi_bready, s_axi_bvalid, s_axi_araddr, s_axi_arsize, s_axi_arvalid, s_axi_arready, 
  s_axi_rready, s_axi_rdata, s_axi_rvalid, UART_tx, UART_rx)
/* synthesis syn_black_box black_box_pad_pin="aresetn,s_axi_awaddr[11:0],s_axi_awsize[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[127:0],s_axi_wstrb[15:0],s_axi_wvalid,s_axi_wready,s_axi_bready,s_axi_bvalid,s_axi_araddr[11:0],s_axi_arsize[2:0],s_axi_arvalid,s_axi_arready,s_axi_rready,s_axi_rdata[127:0],s_axi_rvalid,UART_tx,UART_rx" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input aresetn;
  input [11:0]s_axi_awaddr;
  input [2:0]s_axi_awsize;
  input s_axi_awvalid;
  output s_axi_awready;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  input s_axi_bready;
  output s_axi_bvalid;
  input [11:0]s_axi_araddr;
  input [2:0]s_axi_arsize;
  input s_axi_arvalid;
  output s_axi_arready;
  input s_axi_rready;
  output [127:0]s_axi_rdata;
  output s_axi_rvalid;
  output UART_tx;
  input UART_rx;
endmodule
