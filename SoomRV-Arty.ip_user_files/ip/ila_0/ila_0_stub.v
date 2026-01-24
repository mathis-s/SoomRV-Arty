// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Mon Dec  2 16:54:09 2024
// Host        : m-desktop running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode synth_stub
//               SoomRV-Arty.gen/sources_1/ip/ila_0/ila_0_stub.v
// Design      : ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2024.1" *)
module ila_0(clk, probe0, probe1, probe2, probe3, probe4, probe5,
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16, probe17,
  probe18, probe19, probe20, probe21, probe22, probe23, probe24, probe25, probe26, probe27, probe28,
  probe29, probe30, probe31, probe32, probe33)
/* synthesis syn_black_box black_box_pad_pin="probe0[182:0],probe1[182:0],probe2[182:0],probe3[182:0],probe4[182:0],probe5[40:0],probe6[40:0],probe7[40:0],probe8[40:0],probe9[19:0],probe10[19:0],probe11[19:0],probe12[19:0],probe13[19:0],probe14[19:0],probe15[19:0],probe16[71:0],probe17[47:0],probe18[6:0],probe19[73:0],probe20[204:0],probe21[129:0],probe22[160:0],probe23[127:0],probe24[127:0],probe25[100:0],probe26[100:0],probe27[88:0],probe28[88:0],probe29[139:0],probe30[183:0],probe31[31:0],probe32[31:0],probe33[439:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [182:0]probe0;
  input [182:0]probe1;
  input [182:0]probe2;
  input [182:0]probe3;
  input [182:0]probe4;
  input [40:0]probe5;
  input [40:0]probe6;
  input [40:0]probe7;
  input [40:0]probe8;
  input [19:0]probe9;
  input [19:0]probe10;
  input [19:0]probe11;
  input [19:0]probe12;
  input [19:0]probe13;
  input [19:0]probe14;
  input [19:0]probe15;
  input [71:0]probe16;
  input [47:0]probe17;
  input [6:0]probe18;
  input [73:0]probe19;
  input [204:0]probe20;
  input [129:0]probe21;
  input [160:0]probe22;
  input [127:0]probe23;
  input [127:0]probe24;
  input [100:0]probe25;
  input [100:0]probe26;
  input [88:0]probe27;
  input [88:0]probe28;
  input [139:0]probe29;
  input [183:0]probe30;
  input [31:0]probe31;
  input [31:0]probe32;
  input [439:0]probe33;
endmodule
