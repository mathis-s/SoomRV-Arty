// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:xpm_cdc_gen:1.0
// IP Revision: 4

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module axi_map_xpm_cdc_gen_0_0 (
  src_clk,
  dest_clk,
  src_in,
  dest_out
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME src_signal_clock, FREQ_HZ 224820144, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN axi_map_mig_7series_0_0_ui_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 src_signal_clock CLK" *)
input wire src_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dest_signal_clock, FREQ_HZ 49944440, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN axi_map_mig_7series_0_0_ui_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dest_signal_clock CLK" *)
input wire dest_clk;
input wire [0 : 0] src_in;
output wire [0 : 0] dest_out;

  xpm_cdc_gen_v1_0_4 #(
    .C_CDC_TYPE(6),
    .SRC_CLK_PERIOD(5000),
    .DEST_CLK_PERIOD(2500),
    .SIM_ASSERT_CHK(1),
    .DEST_SYNC_FF(4),
    .INIT_SYNC_FF(0),
    .SRC_INPUT_REG(1),
    .WIDTH(1),
    .REG_OUTPUT(0),
    .SIM_LOSSLESS_GRAY_CHK(0),
    .SRC_SYNC_FF(4),
    .DEST_EXT_HSK(1),
    .RST_USED(1),
    .INIT(1),
    .RST_ACTIVE_HIGH(0)
  ) inst (
    .src_clk(src_clk),
    .dest_clk(dest_clk),
    .src_in(src_in),
    .dest_out(dest_out),
    .src_in_bin(1'B1),
    .dest_out_bin(),
    .src_rcv(),
    .src_send(1'B1),
    .dest_req(),
    .dest_ack(1'B1),
    .src_pulse(1'B1),
    .dest_rst_out(),
    .dest_rst_in(1'B1),
    .dest_pulse(),
    .src_rst(1'B1),
    .dest_arst(),
    .src_arst(1'B1)
  );
endmodule
