// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


//------------------------------------------------------------------------------------
// Filename:    axi_bram_ctrl_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module axi_bram_ctrl_0 (
  input bit_as_bool s_axi_aclk,
  input bit_as_bool s_axi_aresetn,
  input bit [1 : 0] s_axi_awid,
  input bit [13 : 0] s_axi_awaddr,
  input bit [7 : 0] s_axi_awlen,
  input bit [2 : 0] s_axi_awsize,
  input bit [1 : 0] s_axi_awburst,
  input bit_as_bool s_axi_awlock,
  input bit [3 : 0] s_axi_awcache,
  input bit [2 : 0] s_axi_awprot,
  input bit_as_bool s_axi_awvalid,
  output bit_as_bool s_axi_awready,
  input bit [127 : 0] s_axi_wdata,
  input bit [15 : 0] s_axi_wstrb,
  input bit_as_bool s_axi_wlast,
  input bit_as_bool s_axi_wvalid,
  output bit_as_bool s_axi_wready,
  output bit [1 : 0] s_axi_bid,
  output bit [1 : 0] s_axi_bresp,
  output bit_as_bool s_axi_bvalid,
  input bit_as_bool s_axi_bready,
  input bit [1 : 0] s_axi_arid,
  input bit [13 : 0] s_axi_araddr,
  input bit [7 : 0] s_axi_arlen,
  input bit [2 : 0] s_axi_arsize,
  input bit [1 : 0] s_axi_arburst,
  input bit_as_bool s_axi_arlock,
  input bit [3 : 0] s_axi_arcache,
  input bit [2 : 0] s_axi_arprot,
  input bit_as_bool s_axi_arvalid,
  output bit_as_bool s_axi_arready,
  output bit [1 : 0] s_axi_rid,
  output bit [127 : 0] s_axi_rdata,
  output bit [1 : 0] s_axi_rresp,
  output bit_as_bool s_axi_rlast,
  output bit_as_bool s_axi_rvalid,
  input bit_as_bool s_axi_rready
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module axi_bram_ctrl_0 (s_axi_aclk,s_axi_aresetn,s_axi_awid,s_axi_awaddr,s_axi_awlen,s_axi_awsize,s_axi_awburst,s_axi_awlock,s_axi_awcache,s_axi_awprot,s_axi_awvalid,s_axi_awready,s_axi_wdata,s_axi_wstrb,s_axi_wlast,s_axi_wvalid,s_axi_wready,s_axi_bid,s_axi_bresp,s_axi_bvalid,s_axi_bready,s_axi_arid,s_axi_araddr,s_axi_arlen,s_axi_arsize,s_axi_arburst,s_axi_arlock,s_axi_arcache,s_axi_arprot,s_axi_arvalid,s_axi_arready,s_axi_rid,s_axi_rdata,s_axi_rresp,s_axi_rlast,s_axi_rvalid,s_axi_rready)
(* integer foreign = "SystemC";
*);
  input bit s_axi_aclk;
  input bit s_axi_aresetn;
  input bit [1 : 0] s_axi_awid;
  input bit [13 : 0] s_axi_awaddr;
  input bit [7 : 0] s_axi_awlen;
  input bit [2 : 0] s_axi_awsize;
  input bit [1 : 0] s_axi_awburst;
  input bit s_axi_awlock;
  input bit [3 : 0] s_axi_awcache;
  input bit [2 : 0] s_axi_awprot;
  input bit s_axi_awvalid;
  output wire s_axi_awready;
  input bit [127 : 0] s_axi_wdata;
  input bit [15 : 0] s_axi_wstrb;
  input bit s_axi_wlast;
  input bit s_axi_wvalid;
  output wire s_axi_wready;
  output wire [1 : 0] s_axi_bid;
  output wire [1 : 0] s_axi_bresp;
  output wire s_axi_bvalid;
  input bit s_axi_bready;
  input bit [1 : 0] s_axi_arid;
  input bit [13 : 0] s_axi_araddr;
  input bit [7 : 0] s_axi_arlen;
  input bit [2 : 0] s_axi_arsize;
  input bit [1 : 0] s_axi_arburst;
  input bit s_axi_arlock;
  input bit [3 : 0] s_axi_arcache;
  input bit [2 : 0] s_axi_arprot;
  input bit s_axi_arvalid;
  output wire s_axi_arready;
  output wire [1 : 0] s_axi_rid;
  output wire [127 : 0] s_axi_rdata;
  output wire [1 : 0] s_axi_rresp;
  output wire s_axi_rlast;
  output wire s_axi_rvalid;
  input bit s_axi_rready;
endmodule
`endif
