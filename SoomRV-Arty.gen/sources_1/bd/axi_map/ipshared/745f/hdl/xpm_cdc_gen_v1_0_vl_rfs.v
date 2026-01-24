// (c) Copyright 2015, 2023 Advanced Micro Devices, Inc. All rights reserved.
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
////////////////////////////////////////////////////////////
//
/////////////////////////////////////////

`timescale 1ps/1ps

module xpm_cdc_gen_v1_0_4 #(

//Parameter Definitions
 parameter integer C_CDC_TYPE = 0,
  parameter SIM_ASSERT_CHK = 0,
  parameter SRC_CLK_PERIOD = 5000,
  parameter DEST_CLK_PERIOD = 2500,			     
  parameter integer DEST_SYNC_FF = 4,
  parameter integer INIT_SYNC_FF = 0,  
  parameter integer SRC_INPUT_REG = 0,
  parameter integer WIDTH = 2, 
  parameter integer SIM_LOSSLESS_GRAY_CHK = 0,
  parameter integer DEST_EXT_HSK = 1, 
  parameter integer SRC_SYNC_FF = 4,
  parameter integer RST_USED     = 0, 
  parameter integer REG_OUTPUT = 0,
  parameter INIT = 0,  
  parameter RST_ACTIVE_HIGH = 0         
 
)(

  input      src_clk,
  input      dest_clk,
  input      [WIDTH-1:0] src_in_bin,
  input      [WIDTH-1:0] src_in,
  input      src_send,
  input      dest_ack,
  input      src_pulse,
  input      src_rst,
  input      dest_rst_in,
  input      src_arst,

  output  [WIDTH-1:0] dest_out,
  output  [WIDTH-1:0] dest_out_bin,
  output  src_rcv,
  output  dest_req,
  output  dest_pulse,
  output  dest_rst_out,
  output  dest_arst  
  
);

//Local params
 localparam VERSION = 0;

 
//Local signals
/*
 reg  [WIDTH-1:0] src_in_bin_int;
 reg  [WIDTH-1:0] src_in_int;
 reg              src_send_int;
 reg              dest_ack_int;
 reg              src_pulse_int; 
 reg              src_rst_int;
 reg              dest_rst_in_int;

 wire [WIDTH-1:0] dest_out_int; 
 wire [WIDTH-1:0] dest_out_bin_int;
 wire             src_rcv_int;
 wire             dest_req_int; 
 wire             dest_pulse_int;
 wire             dest_arst_int;
 wire             dest_rst_out_int;

 
  always @(posedge src_clk)
  begin
   src_in_int     <= src_in;
   src_in_bin_int <= src_in_bin;
   src_send_int   <= src_send;
   src_pulse_int  <= src_pulse;
   src_rst_int    <= src_rst;
   dest_rst_in_int   <= dest_rst_in; 
   src_rcv        <= src_rcv_int;   
  end 

  always @(posedge dest_clk)
  begin
   dest_out      <= dest_out_int;
   dest_out_bin  <= dest_out_bin_int;
   dest_req      <= dest_req_int;
   dest_ack_int  <= dest_ack;      
   dest_pulse    <= dest_pulse_int;
   dest_arst     <= dest_arst_int;
   dest_rst_out  <= dest_rst_out_int;
  end 
*/
//---------------------------------------------------------------------
//Generate the instantiation of the appropriate XPM CDC module
//Instantiate cdc_single
//---------------------------------------------------------------------
generate
if (C_CDC_TYPE==6)

  xpm_cdc_single #(
    .VERSION        (VERSION),
    .SIM_ASSERT_CHK (SIM_ASSERT_CHK),
    .INIT_SYNC_FF   (INIT_SYNC_FF),
    .DEST_SYNC_FF   (DEST_SYNC_FF),
    .SRC_INPUT_REG  (SRC_INPUT_REG)
  ) xsingle (
    .src_clk         (src_clk),
    .src_in          (src_in),
    .dest_clk        (dest_clk),
    .dest_out        (dest_out)
  );
else if (C_CDC_TYPE==1)
//--------------------------------------------------------------------
//Instantiate cdc_array_single
//--------------------------------------------------------------------
  xpm_cdc_array_single #(
    .VERSION        (VERSION),
    .SIM_ASSERT_CHK (SIM_ASSERT_CHK),
    .INIT_SYNC_FF   (INIT_SYNC_FF),
    .WIDTH          (WIDTH),
    .DEST_SYNC_FF   (DEST_SYNC_FF),
    .SRC_INPUT_REG  (SRC_INPUT_REG)
  ) xarray (
    .src_clk         (src_clk),
    .src_in          (src_in),
    .dest_clk        (dest_clk),
    .dest_out        (dest_out)
  );  
//Instantiate cdc_gray 
else if (C_CDC_TYPE==3)
  xpm_cdc_gray #(
    .VERSION               (VERSION),
    .SIM_ASSERT_CHK        (SIM_ASSERT_CHK), 
    .INIT_SYNC_FF          (INIT_SYNC_FF),
    .REG_OUTPUT            (REG_OUTPUT),
    .DEST_SYNC_FF          (DEST_SYNC_FF),
    .SIM_LOSSLESS_GRAY_CHK (SIM_LOSSLESS_GRAY_CHK),
    .WIDTH                 (WIDTH)
  ) xgray (
    .src_clk               (src_clk),
    .src_in_bin            (src_in_bin),
    .dest_clk              (dest_clk),        
    .dest_out_bin          (dest_out_bin)
  );
//Instantiate cdc_handshake
else if (C_CDC_TYPE==4)
 xpm_cdc_handshake #(
    .VERSION               (VERSION),
    .SIM_ASSERT_CHK        (SIM_ASSERT_CHK),         
    .INIT_SYNC_FF          (INIT_SYNC_FF),
    .DEST_SYNC_FF          (DEST_SYNC_FF),
    .SRC_SYNC_FF           (SRC_SYNC_FF),
    .WIDTH                 (WIDTH),         
    .DEST_EXT_HSK          (DEST_EXT_HSK)
  ) xhandshake (
    .src_clk               (src_clk),
    .src_in                (src_in),
    .src_send              (src_send), 
    .src_rcv               (src_rcv),
    .dest_clk              (dest_clk),
    .dest_req              (dest_req),
    .dest_ack              (dest_ack),
    .dest_out              (dest_out)
  ); 
//Instantiate cdc_pulse
else if (C_CDC_TYPE==5)
  xpm_cdc_pulse #(
    .VERSION               (VERSION),
    .SIM_ASSERT_CHK        (SIM_ASSERT_CHK),
    .INIT_SYNC_FF          (INIT_SYNC_FF),
    .REG_OUTPUT            (REG_OUTPUT),
    .RST_USED              (RST_USED),     
    .DEST_SYNC_FF          (DEST_SYNC_FF)
  ) xpulse (
    .src_clk               (src_clk),
    .src_pulse             (src_pulse),
    .dest_clk              (dest_clk),
    .src_rst               (src_rst), 
    .dest_rst              (dest_rst_in),
    .dest_pulse            (dest_pulse)
  );
// Instantiate cdc_sync_rst
else if (C_CDC_TYPE==7)
  xpm_cdc_sync_rst #(    
    .VERSION               (VERSION),
    .SIM_ASSERT_CHK        (SIM_ASSERT_CHK),     
    .INIT_SYNC_FF          (INIT_SYNC_FF),
    .DEST_SYNC_FF          (DEST_SYNC_FF),
    .INIT                  (INIT)
  ) xsrst (
    .src_rst               (src_rst),
    .dest_rst             (dest_rst_out),
    .dest_clk              (dest_clk)
  );
// Instantiate cdc_async_rst
else if (C_CDC_TYPE==2)
  xpm_cdc_async_rst #(
    .VERSION               (VERSION),
    .DEST_SYNC_FF          (DEST_SYNC_FF),
    .INIT_SYNC_FF          (INIT_SYNC_FF),
    .RST_ACTIVE_HIGH       (RST_ACTIVE_HIGH)
  ) xarst (
    .src_arst              (src_arst),
    .dest_arst             (dest_arst),
    .dest_clk              (dest_clk)
  );
endgenerate
endmodule
`default_nettype wire







