// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
// Date        : Sun Dec  1 19:33:20 2024
// Host        : m-desktop running 64-bit Manjaro Linux
// Command     : write_verilog -force -mode funcsim
//               SoomRV-Arty.gen/sources_1/bd/axi_map/ip/axi_map_UART8250Lite_0_0/axi_map_UART8250Lite_0_0_sim_netlist.v
// Design      : axi_map_UART8250Lite_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi_map_UART8250Lite_0_0,UART8250Lite,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *)
(* X_CORE_INFO = "UART8250Lite,Vivado 2024.1" *)
(* NotValidForBitStream *)
module axi_map_UART8250Lite_0_0
   (clk,
    aresetn,
    s_axi_awaddr,
    s_axi_awsize,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bready,
    s_axi_bvalid,
    s_axi_araddr,
    s_axi_arsize,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rready,
    s_axi_rdata,
    s_axi_rvalid,
    UART_tx,
    UART_rx);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET aresetn, FREQ_HZ 74916655, FREQ_TOLERANCE_HZ 0, PHASE 0, CLK_DOMAIN axi_map_mig_7series_0_0_ui_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [11:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [127:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [15:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [11:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [127:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 128, PROTOCOL AXI4LITE, FREQ_HZ 74916655, ID_WIDTH 0, ADDR_WIDTH 12, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 0, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0, CLK_DOMAIN axi_map_mig_7series_0_0_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output s_axi_rvalid;
  output UART_tx;
  input UART_rx;

  wire \<const0> ;
  wire UART_rx;
  wire UART_tx;
  wire aresetn;
  wire clk;
  wire [11:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [7:0]\^s_axi_rdata ;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [127:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign s_axi_rdata[127] = \<const0> ;
  assign s_axi_rdata[126] = \<const0> ;
  assign s_axi_rdata[125] = \<const0> ;
  assign s_axi_rdata[124] = \<const0> ;
  assign s_axi_rdata[123] = \<const0> ;
  assign s_axi_rdata[122] = \<const0> ;
  assign s_axi_rdata[121] = \<const0> ;
  assign s_axi_rdata[120] = \<const0> ;
  assign s_axi_rdata[119] = \<const0> ;
  assign s_axi_rdata[118] = \<const0> ;
  assign s_axi_rdata[117] = \<const0> ;
  assign s_axi_rdata[116] = \<const0> ;
  assign s_axi_rdata[115] = \<const0> ;
  assign s_axi_rdata[114] = \<const0> ;
  assign s_axi_rdata[113] = \<const0> ;
  assign s_axi_rdata[112] = \<const0> ;
  assign s_axi_rdata[111] = \<const0> ;
  assign s_axi_rdata[110] = \<const0> ;
  assign s_axi_rdata[109] = \<const0> ;
  assign s_axi_rdata[108] = \<const0> ;
  assign s_axi_rdata[107] = \<const0> ;
  assign s_axi_rdata[106] = \<const0> ;
  assign s_axi_rdata[105] = \<const0> ;
  assign s_axi_rdata[104] = \<const0> ;
  assign s_axi_rdata[103] = \<const0> ;
  assign s_axi_rdata[102] = \<const0> ;
  assign s_axi_rdata[101] = \<const0> ;
  assign s_axi_rdata[100] = \<const0> ;
  assign s_axi_rdata[99] = \<const0> ;
  assign s_axi_rdata[98] = \<const0> ;
  assign s_axi_rdata[97] = \<const0> ;
  assign s_axi_rdata[96] = \<const0> ;
  assign s_axi_rdata[95] = \<const0> ;
  assign s_axi_rdata[94] = \<const0> ;
  assign s_axi_rdata[93] = \<const0> ;
  assign s_axi_rdata[92] = \<const0> ;
  assign s_axi_rdata[91] = \<const0> ;
  assign s_axi_rdata[90] = \<const0> ;
  assign s_axi_rdata[89] = \<const0> ;
  assign s_axi_rdata[88] = \<const0> ;
  assign s_axi_rdata[87] = \<const0> ;
  assign s_axi_rdata[86] = \<const0> ;
  assign s_axi_rdata[85] = \<const0> ;
  assign s_axi_rdata[84] = \<const0> ;
  assign s_axi_rdata[83] = \<const0> ;
  assign s_axi_rdata[82] = \<const0> ;
  assign s_axi_rdata[81] = \<const0> ;
  assign s_axi_rdata[80] = \<const0> ;
  assign s_axi_rdata[79] = \<const0> ;
  assign s_axi_rdata[78] = \<const0> ;
  assign s_axi_rdata[77] = \<const0> ;
  assign s_axi_rdata[76] = \<const0> ;
  assign s_axi_rdata[75] = \<const0> ;
  assign s_axi_rdata[74] = \<const0> ;
  assign s_axi_rdata[73] = \<const0> ;
  assign s_axi_rdata[72] = \<const0> ;
  assign s_axi_rdata[71] = \<const0> ;
  assign s_axi_rdata[70] = \<const0> ;
  assign s_axi_rdata[69] = \<const0> ;
  assign s_axi_rdata[68] = \<const0> ;
  assign s_axi_rdata[67] = \<const0> ;
  assign s_axi_rdata[66] = \<const0> ;
  assign s_axi_rdata[65] = \<const0> ;
  assign s_axi_rdata[64] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7:0] = \^s_axi_rdata [7:0];
  GND GND
       (.G(\<const0> ));
  axi_map_UART8250Lite_0_0_UART8250Lite inst
       (.UART_rx(UART_rx),
        .UART_tx(UART_tx),
        .aresetn(aresetn),
        .clk(clk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid_reg_0(s_axi_bvalid),
        .s_axi_rdata(\^s_axi_rdata ),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid_reg_0(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "FIFO" *)
module axi_map_UART8250Lite_0_0_FIFO
   (rxFIFOavail,
    \outDataReg_reg[5]_0 ,
    Q,
    SR,
    clk,
    uartRdValid,
    \indexIn_reg[5]_0 ,
    aresetn,
    \s_axi_rdata_reg[5] ,
    s_axi_araddr,
    \outDataReg_reg[6]_0 );
  output rxFIFOavail;
  output \outDataReg_reg[5]_0 ;
  output [6:0]Q;
  input [0:0]SR;
  input clk;
  input uartRdValid;
  input \indexIn_reg[5]_0 ;
  input aresetn;
  input \s_axi_rdata_reg[5] ;
  input [2:0]s_axi_araddr;
  input [7:0]\outDataReg_reg[6]_0 ;

  wire [6:0]Q;
  wire [0:0]SR;
  wire aresetn;
  wire clk;
  wire doInsert;
  wire fullCond;
  wire fullCond_i_1__0_n_0;
  wire \indexIn_reg[5]_0 ;
  wire \indexIn_reg_n_0_[0] ;
  wire \indexIn_reg_n_0_[1] ;
  wire \indexIn_reg_n_0_[2] ;
  wire \indexIn_reg_n_0_[3] ;
  wire \indexIn_reg_n_0_[4] ;
  wire \indexIn_reg_n_0_[5] ;
  wire \indexOut[0]_i_1__0_n_0 ;
  wire \indexOut[1]_i_1__0_n_0 ;
  wire \indexOut[2]_i_1__0_n_0 ;
  wire \indexOut[3]_i_1__0_n_0 ;
  wire \indexOut[4]_i_1__0_n_0 ;
  wire \indexOut[5]_i_1__0_n_0 ;
  wire [5:0]indexOut_reg;
  wire mem_reg_0_63_0_2_i_1__0_n_0;
  wire [7:0]outDataReg0__0;
  wire \outDataReg[7]_i_1__0_n_0 ;
  wire \outDataReg[7]_i_2__0_n_0 ;
  wire \outDataReg[7]_i_3__0_n_0 ;
  wire \outDataReg[7]_i_4__0_n_0 ;
  wire \outDataReg_reg[5]_0 ;
  wire [7:0]\outDataReg_reg[6]_0 ;
  wire \outDataReg_reg_n_0_[5] ;
  wire outValidReg_i_1__0_n_0;
  wire [5:0]p_0_in__1;
  wire rxFIFOavail;
  wire [2:0]s_axi_araddr;
  wire \s_axi_rdata_reg[5] ;
  wire uartRdValid;
  wire NLW_mem_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_0_63_6_7_DOC_UNCONNECTED;
  wire NLW_mem_reg_0_63_6_7_DOD_UNCONNECTED;

  LUT5 #(
    .INIT(32'hDDFD00C0))
    fullCond_i_1__0
       (.I0(\outDataReg[7]_i_2__0_n_0 ),
        .I1(fullCond),
        .I2(rxFIFOavail),
        .I3(\indexIn_reg[5]_0 ),
        .I4(uartRdValid),
        .O(fullCond_i_1__0_n_0));
  FDRE fullCond_reg
       (.C(clk),
        .CE(1'b1),
        .D(fullCond_i_1__0_n_0),
        .Q(fullCond),
        .R(SR));
  LUT1 #(
    .INIT(2'h1))
    \indexIn[0]_i_1__0
       (.I0(\indexIn_reg_n_0_[0] ),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *)
  LUT2 #(
    .INIT(4'h6))
    \indexIn[1]_i_1__0
       (.I0(\indexIn_reg_n_0_[0] ),
        .I1(\indexIn_reg_n_0_[1] ),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *)
  LUT3 #(
    .INIT(8'h6A))
    \indexIn[2]_i_1
       (.I0(\indexIn_reg_n_0_[2] ),
        .I1(\indexIn_reg_n_0_[0] ),
        .I2(\indexIn_reg_n_0_[1] ),
        .O(p_0_in__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *)
  LUT4 #(
    .INIT(16'h7F80))
    \indexIn[3]_i_1
       (.I0(\indexIn_reg_n_0_[1] ),
        .I1(\indexIn_reg_n_0_[0] ),
        .I2(\indexIn_reg_n_0_[2] ),
        .I3(\indexIn_reg_n_0_[3] ),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *)
  LUT5 #(
    .INIT(32'h6AAAAAAA))
    \indexIn[4]_i_1__0
       (.I0(\indexIn_reg_n_0_[4] ),
        .I1(\indexIn_reg_n_0_[1] ),
        .I2(\indexIn_reg_n_0_[0] ),
        .I3(\indexIn_reg_n_0_[2] ),
        .I4(\indexIn_reg_n_0_[3] ),
        .O(p_0_in__1[4]));
  LUT5 #(
    .INIT(32'hAAAAA2AA))
    \indexIn[5]_i_1__0
       (.I0(uartRdValid),
        .I1(rxFIFOavail),
        .I2(\indexIn_reg[5]_0 ),
        .I3(fullCond),
        .I4(\outDataReg[7]_i_2__0_n_0 ),
        .O(doInsert));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA))
    \indexIn[5]_i_2__0
       (.I0(\indexIn_reg_n_0_[5] ),
        .I1(\indexIn_reg_n_0_[3] ),
        .I2(\indexIn_reg_n_0_[2] ),
        .I3(\indexIn_reg_n_0_[0] ),
        .I4(\indexIn_reg_n_0_[1] ),
        .I5(\indexIn_reg_n_0_[4] ),
        .O(p_0_in__1[5]));
  FDRE \indexIn_reg[0]
       (.C(clk),
        .CE(doInsert),
        .D(p_0_in__1[0]),
        .Q(\indexIn_reg_n_0_[0] ),
        .R(SR));
  FDRE \indexIn_reg[1]
       (.C(clk),
        .CE(doInsert),
        .D(p_0_in__1[1]),
        .Q(\indexIn_reg_n_0_[1] ),
        .R(SR));
  FDRE \indexIn_reg[2]
       (.C(clk),
        .CE(doInsert),
        .D(p_0_in__1[2]),
        .Q(\indexIn_reg_n_0_[2] ),
        .R(SR));
  FDRE \indexIn_reg[3]
       (.C(clk),
        .CE(doInsert),
        .D(p_0_in__1[3]),
        .Q(\indexIn_reg_n_0_[3] ),
        .R(SR));
  FDRE \indexIn_reg[4]
       (.C(clk),
        .CE(doInsert),
        .D(p_0_in__1[4]),
        .Q(\indexIn_reg_n_0_[4] ),
        .R(SR));
  FDRE \indexIn_reg[5]
       (.C(clk),
        .CE(doInsert),
        .D(p_0_in__1[5]),
        .Q(\indexIn_reg_n_0_[5] ),
        .R(SR));
  LUT1 #(
    .INIT(2'h1))
    \indexOut[0]_i_1__0
       (.I0(indexOut_reg[0]),
        .O(\indexOut[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *)
  LUT2 #(
    .INIT(4'h6))
    \indexOut[1]_i_1__0
       (.I0(indexOut_reg[0]),
        .I1(indexOut_reg[1]),
        .O(\indexOut[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *)
  LUT3 #(
    .INIT(8'h6A))
    \indexOut[2]_i_1__0
       (.I0(indexOut_reg[2]),
        .I1(indexOut_reg[0]),
        .I2(indexOut_reg[1]),
        .O(\indexOut[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *)
  LUT4 #(
    .INIT(16'h7F80))
    \indexOut[3]_i_1__0
       (.I0(indexOut_reg[1]),
        .I1(indexOut_reg[0]),
        .I2(indexOut_reg[2]),
        .I3(indexOut_reg[3]),
        .O(\indexOut[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *)
  LUT5 #(
    .INIT(32'h6AAAAAAA))
    \indexOut[4]_i_1__0
       (.I0(indexOut_reg[4]),
        .I1(indexOut_reg[1]),
        .I2(indexOut_reg[0]),
        .I3(indexOut_reg[2]),
        .I4(indexOut_reg[3]),
        .O(\indexOut[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA))
    \indexOut[5]_i_1__0
       (.I0(indexOut_reg[5]),
        .I1(indexOut_reg[3]),
        .I2(indexOut_reg[2]),
        .I3(indexOut_reg[0]),
        .I4(indexOut_reg[1]),
        .I5(indexOut_reg[4]),
        .O(\indexOut[5]_i_1__0_n_0 ));
  FDRE \indexOut_reg[0]
       (.C(clk),
        .CE(\outDataReg[7]_i_1__0_n_0 ),
        .D(\indexOut[0]_i_1__0_n_0 ),
        .Q(indexOut_reg[0]),
        .R(SR));
  FDRE \indexOut_reg[1]
       (.C(clk),
        .CE(\outDataReg[7]_i_1__0_n_0 ),
        .D(\indexOut[1]_i_1__0_n_0 ),
        .Q(indexOut_reg[1]),
        .R(SR));
  FDRE \indexOut_reg[2]
       (.C(clk),
        .CE(\outDataReg[7]_i_1__0_n_0 ),
        .D(\indexOut[2]_i_1__0_n_0 ),
        .Q(indexOut_reg[2]),
        .R(SR));
  FDRE \indexOut_reg[3]
       (.C(clk),
        .CE(\outDataReg[7]_i_1__0_n_0 ),
        .D(\indexOut[3]_i_1__0_n_0 ),
        .Q(indexOut_reg[3]),
        .R(SR));
  FDRE \indexOut_reg[4]
       (.C(clk),
        .CE(\outDataReg[7]_i_1__0_n_0 ),
        .D(\indexOut[4]_i_1__0_n_0 ),
        .Q(indexOut_reg[4]),
        .R(SR));
  FDRE \indexOut_reg[5]
       (.C(clk),
        .CE(\outDataReg[7]_i_1__0_n_0 ),
        .D(\indexOut[5]_i_1__0_n_0 ),
        .Q(indexOut_reg[5]),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "" *)
  (* RTL_RAM_BITS = "512" *)
  (* RTL_RAM_NAME = "inst/rxFIFO/mem_reg_0_63_0_2" *)
  (* RTL_RAM_TYPE = "RAM_SDP" *)
  (* ram_addr_begin = "0" *)
  (* ram_addr_end = "63" *)
  (* ram_offset = "0" *)
  (* ram_slice_begin = "0" *)
  (* ram_slice_end = "2" *)
  RAM64M mem_reg_0_63_0_2
       (.ADDRA(indexOut_reg),
        .ADDRB(indexOut_reg),
        .ADDRC(indexOut_reg),
        .ADDRD({\indexIn_reg_n_0_[5] ,\indexIn_reg_n_0_[4] ,\indexIn_reg_n_0_[3] ,\indexIn_reg_n_0_[2] ,\indexIn_reg_n_0_[1] ,\indexIn_reg_n_0_[0] }),
        .DIA(\outDataReg_reg[6]_0 [0]),
        .DIB(\outDataReg_reg[6]_0 [1]),
        .DIC(\outDataReg_reg[6]_0 [2]),
        .DID(1'b0),
        .DOA(outDataReg0__0[0]),
        .DOB(outDataReg0__0[1]),
        .DOC(outDataReg0__0[2]),
        .DOD(NLW_mem_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_0_63_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAA2AA00000000))
    mem_reg_0_63_0_2_i_1__0
       (.I0(uartRdValid),
        .I1(rxFIFOavail),
        .I2(\indexIn_reg[5]_0 ),
        .I3(fullCond),
        .I4(\outDataReg[7]_i_2__0_n_0 ),
        .I5(aresetn),
        .O(mem_reg_0_63_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *)
  (* RTL_RAM_BITS = "512" *)
  (* RTL_RAM_NAME = "inst/rxFIFO/mem_reg_0_63_3_5" *)
  (* RTL_RAM_TYPE = "RAM_SDP" *)
  (* ram_addr_begin = "0" *)
  (* ram_addr_end = "63" *)
  (* ram_offset = "0" *)
  (* ram_slice_begin = "3" *)
  (* ram_slice_end = "5" *)
  RAM64M mem_reg_0_63_3_5
       (.ADDRA(indexOut_reg),
        .ADDRB(indexOut_reg),
        .ADDRC(indexOut_reg),
        .ADDRD({\indexIn_reg_n_0_[5] ,\indexIn_reg_n_0_[4] ,\indexIn_reg_n_0_[3] ,\indexIn_reg_n_0_[2] ,\indexIn_reg_n_0_[1] ,\indexIn_reg_n_0_[0] }),
        .DIA(\outDataReg_reg[6]_0 [3]),
        .DIB(\outDataReg_reg[6]_0 [4]),
        .DIC(\outDataReg_reg[6]_0 [5]),
        .DID(1'b0),
        .DOA(outDataReg0__0[3]),
        .DOB(outDataReg0__0[4]),
        .DOC(outDataReg0__0[5]),
        .DOD(NLW_mem_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_0_63_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *)
  (* RTL_RAM_BITS = "512" *)
  (* RTL_RAM_NAME = "inst/rxFIFO/mem_reg_0_63_6_7" *)
  (* RTL_RAM_TYPE = "RAM_SDP" *)
  (* ram_addr_begin = "0" *)
  (* ram_addr_end = "63" *)
  (* ram_offset = "0" *)
  (* ram_slice_begin = "6" *)
  (* ram_slice_end = "7" *)
  RAM64M mem_reg_0_63_6_7
       (.ADDRA(indexOut_reg),
        .ADDRB(indexOut_reg),
        .ADDRC(indexOut_reg),
        .ADDRD({\indexIn_reg_n_0_[5] ,\indexIn_reg_n_0_[4] ,\indexIn_reg_n_0_[3] ,\indexIn_reg_n_0_[2] ,\indexIn_reg_n_0_[1] ,\indexIn_reg_n_0_[0] }),
        .DIA(\outDataReg_reg[6]_0 [6]),
        .DIB(\outDataReg_reg[6]_0 [7]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(outDataReg0__0[6]),
        .DOB(outDataReg0__0[7]),
        .DOC(NLW_mem_reg_0_63_6_7_DOC_UNCONNECTED),
        .DOD(NLW_mem_reg_0_63_6_7_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_0_63_0_2_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hEE0E))
    \outDataReg[7]_i_1__0
       (.I0(\outDataReg[7]_i_2__0_n_0 ),
        .I1(fullCond),
        .I2(rxFIFOavail),
        .I3(\indexIn_reg[5]_0 ),
        .O(\outDataReg[7]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hE))
    \outDataReg[7]_i_2__0
       (.I0(\outDataReg[7]_i_3__0_n_0 ),
        .I1(\outDataReg[7]_i_4__0_n_0 ),
        .O(\outDataReg[7]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6))
    \outDataReg[7]_i_3__0
       (.I0(indexOut_reg[3]),
        .I1(\indexIn_reg_n_0_[3] ),
        .I2(\indexIn_reg_n_0_[5] ),
        .I3(indexOut_reg[5]),
        .I4(\indexIn_reg_n_0_[4] ),
        .I5(indexOut_reg[4]),
        .O(\outDataReg[7]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h6FF6FFFFFFFF6FF6))
    \outDataReg[7]_i_4__0
       (.I0(indexOut_reg[0]),
        .I1(\indexIn_reg_n_0_[0] ),
        .I2(\indexIn_reg_n_0_[1] ),
        .I3(indexOut_reg[1]),
        .I4(\indexIn_reg_n_0_[2] ),
        .I5(indexOut_reg[2]),
        .O(\outDataReg[7]_i_4__0_n_0 ));
  FDRE \outDataReg_reg[0]
       (.C(clk),
        .CE(\outDataReg[7]_i_1__0_n_0 ),
        .D(outDataReg0__0[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \outDataReg_reg[1]
       (.C(clk),
        .CE(\outDataReg[7]_i_1__0_n_0 ),
        .D(outDataReg0__0[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \outDataReg_reg[2]
       (.C(clk),
        .CE(\outDataReg[7]_i_1__0_n_0 ),
        .D(outDataReg0__0[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \outDataReg_reg[3]
       (.C(clk),
        .CE(\outDataReg[7]_i_1__0_n_0 ),
        .D(outDataReg0__0[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \outDataReg_reg[4]
       (.C(clk),
        .CE(\outDataReg[7]_i_1__0_n_0 ),
        .D(outDataReg0__0[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \outDataReg_reg[5]
       (.C(clk),
        .CE(\outDataReg[7]_i_1__0_n_0 ),
        .D(outDataReg0__0[5]),
        .Q(\outDataReg_reg_n_0_[5] ),
        .R(SR));
  FDRE \outDataReg_reg[6]
       (.C(clk),
        .CE(\outDataReg[7]_i_1__0_n_0 ),
        .D(outDataReg0__0[6]),
        .Q(Q[5]),
        .R(SR));
  FDRE \outDataReg_reg[7]
       (.C(clk),
        .CE(\outDataReg[7]_i_1__0_n_0 ),
        .D(outDataReg0__0[7]),
        .Q(Q[6]),
        .R(SR));
  LUT5 #(
    .INIT(32'hEEFE0000))
    outValidReg_i_1__0
       (.I0(\outDataReg[7]_i_2__0_n_0 ),
        .I1(fullCond),
        .I2(rxFIFOavail),
        .I3(\indexIn_reg[5]_0 ),
        .I4(aresetn),
        .O(outValidReg_i_1__0_n_0));
  FDRE outValidReg_reg
       (.C(clk),
        .CE(1'b1),
        .D(outValidReg_i_1__0_n_0),
        .Q(rxFIFOavail),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000002))
    \s_axi_rdata[5]_i_5
       (.I0(\outDataReg_reg_n_0_[5] ),
        .I1(\s_axi_rdata_reg[5] ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_araddr[1]),
        .I4(s_axi_araddr[2]),
        .O(\outDataReg_reg[5]_0 ));
endmodule

(* ORIG_REF_NAME = "FIFO" *)
module axi_map_UART8250Lite_0_0_FIFO_0
   (uartWr,
    fullCond_reg_0,
    outValidReg_reg_0,
    fullCond_reg_1,
    \indexOut_reg[3]_0 ,
    \outDataReg_reg[7]_0 ,
    SR,
    clk,
    aresetn,
    \indexIn_reg[5]_0 ,
    \s_axi_rdata_reg[6] ,
    Q,
    wAddrValid,
    \indexIn[5]_i_3_0 ,
    \outDataReg_reg[6]_0 );
  output uartWr;
  output fullCond_reg_0;
  output outValidReg_reg_0;
  output fullCond_reg_1;
  output \indexOut_reg[3]_0 ;
  output [7:0]\outDataReg_reg[7]_0 ;
  input [0:0]SR;
  input clk;
  input aresetn;
  input \indexIn_reg[5]_0 ;
  input \s_axi_rdata_reg[6] ;
  input [11:0]Q;
  input wAddrValid;
  input \indexIn[5]_i_3_0 ;
  input [7:0]\outDataReg_reg[6]_0 ;

  wire [11:0]Q;
  wire [0:0]SR;
  wire aresetn;
  wire clk;
  wire doInsert;
  wire free1_carry__0_i_1_n_0;
  wire free1_carry__0_i_2_n_0;
  wire free1_carry__0_n_3;
  wire free1_carry__0_n_6;
  wire free1_carry__0_n_7;
  wire free1_carry_i_1_n_0;
  wire free1_carry_i_2_n_0;
  wire free1_carry_i_3_n_0;
  wire free1_carry_i_4_n_0;
  wire free1_carry_n_0;
  wire free1_carry_n_1;
  wire free1_carry_n_2;
  wire free1_carry_n_3;
  wire free1_carry_n_4;
  wire free1_carry_n_5;
  wire free1_carry_n_6;
  wire free1_carry_n_7;
  wire fullCond;
  wire fullCond_i_1_n_0;
  wire fullCond_reg_0;
  wire fullCond_reg_1;
  wire \indexIn[0]_i_1_n_0 ;
  wire \indexIn[2]_i_1__0_n_0 ;
  wire \indexIn[3]_i_1__0_n_0 ;
  wire \indexIn[5]_i_3_0 ;
  wire \indexIn[5]_i_3_n_0 ;
  wire \indexIn[5]_i_4_n_0 ;
  wire \indexIn[5]_i_5_n_0 ;
  wire [5:0]indexIn_reg;
  wire \indexIn_reg[5]_0 ;
  wire \indexOut[0]_i_1_n_0 ;
  wire \indexOut[1]_i_1_n_0 ;
  wire \indexOut[2]_i_1_n_0 ;
  wire \indexOut[3]_i_1_n_0 ;
  wire \indexOut[4]_i_1_n_0 ;
  wire \indexOut[5]_i_1_n_0 ;
  wire [5:0]indexOut_reg;
  wire \indexOut_reg[3]_0 ;
  wire mem_reg_0_63_0_2_i_1_n_0;
  wire [7:0]outDataReg0;
  wire \outDataReg[7]_i_1_n_0 ;
  wire \outDataReg[7]_i_2_n_0 ;
  wire \outDataReg[7]_i_3_n_0 ;
  wire \outDataReg[7]_i_4_n_0 ;
  wire [7:0]\outDataReg_reg[6]_0 ;
  wire [7:0]\outDataReg_reg[7]_0 ;
  wire outValidReg_i_1_n_0;
  wire outValidReg_reg_0;
  wire [5:1]p_0_in__0;
  wire \s_axi_rdata_reg[6] ;
  wire uartWr;
  wire wAddrValid;
  wire [3:1]NLW_free1_carry__0_CO_UNCONNECTED;
  wire [3:2]NLW_free1_carry__0_O_UNCONNECTED;
  wire NLW_mem_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_mem_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_mem_reg_0_63_6_7_DOC_UNCONNECTED;
  wire NLW_mem_reg_0_63_6_7_DOD_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *)
  CARRY4 free1_carry
       (.CI(1'b0),
        .CO({free1_carry_n_0,free1_carry_n_1,free1_carry_n_2,free1_carry_n_3}),
        .CYINIT(1'b1),
        .DI(indexOut_reg[3:0]),
        .O({free1_carry_n_4,free1_carry_n_5,free1_carry_n_6,free1_carry_n_7}),
        .S({free1_carry_i_1_n_0,free1_carry_i_2_n_0,free1_carry_i_3_n_0,free1_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *)
  CARRY4 free1_carry__0
       (.CI(free1_carry_n_0),
        .CO({NLW_free1_carry__0_CO_UNCONNECTED[3:1],free1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,indexOut_reg[4]}),
        .O({NLW_free1_carry__0_O_UNCONNECTED[3:2],free1_carry__0_n_6,free1_carry__0_n_7}),
        .S({1'b0,1'b0,free1_carry__0_i_1_n_0,free1_carry__0_i_2_n_0}));
  LUT2 #(
    .INIT(4'h9))
    free1_carry__0_i_1
       (.I0(indexOut_reg[5]),
        .I1(indexIn_reg[5]),
        .O(free1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9))
    free1_carry__0_i_2
       (.I0(indexOut_reg[4]),
        .I1(indexIn_reg[4]),
        .O(free1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9))
    free1_carry_i_1
       (.I0(indexOut_reg[3]),
        .I1(indexIn_reg[3]),
        .O(free1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9))
    free1_carry_i_2
       (.I0(indexOut_reg[2]),
        .I1(indexIn_reg[2]),
        .O(free1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9))
    free1_carry_i_3
       (.I0(indexOut_reg[1]),
        .I1(indexIn_reg[1]),
        .O(free1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9))
    free1_carry_i_4
       (.I0(indexOut_reg[0]),
        .I1(indexIn_reg[0]),
        .O(free1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFFF70FF70700000))
    fullCond_i_1
       (.I0(\indexIn_reg[5]_0 ),
        .I1(aresetn),
        .I2(uartWr),
        .I3(\outDataReg[7]_i_2_n_0 ),
        .I4(fullCond),
        .I5(doInsert),
        .O(fullCond_i_1_n_0));
  FDRE fullCond_reg
       (.C(clk),
        .CE(1'b1),
        .D(fullCond_i_1_n_0),
        .Q(fullCond),
        .R(SR));
  LUT1 #(
    .INIT(2'h1))
    \indexIn[0]_i_1
       (.I0(indexIn_reg[0]),
        .O(\indexIn[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *)
  LUT2 #(
    .INIT(4'h6))
    \indexIn[1]_i_1
       (.I0(indexIn_reg[1]),
        .I1(indexIn_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *)
  LUT3 #(
    .INIT(8'h6A))
    \indexIn[2]_i_1__0
       (.I0(indexIn_reg[2]),
        .I1(indexIn_reg[0]),
        .I2(indexIn_reg[1]),
        .O(\indexIn[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *)
  LUT4 #(
    .INIT(16'h6AAA))
    \indexIn[3]_i_1__0
       (.I0(indexIn_reg[3]),
        .I1(indexIn_reg[2]),
        .I2(indexIn_reg[1]),
        .I3(indexIn_reg[0]),
        .O(\indexIn[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *)
  LUT5 #(
    .INIT(32'h6AAAAAAA))
    \indexIn[4]_i_1
       (.I0(indexIn_reg[4]),
        .I1(indexIn_reg[0]),
        .I2(indexIn_reg[1]),
        .I3(indexIn_reg[2]),
        .I4(indexIn_reg[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h00000000FFFF8FFF))
    \indexIn[5]_i_1
       (.I0(\indexIn_reg[5]_0 ),
        .I1(aresetn),
        .I2(uartWr),
        .I3(fullCond),
        .I4(\outDataReg[7]_i_2_n_0 ),
        .I5(\indexIn[5]_i_3_n_0 ),
        .O(doInsert));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA))
    \indexIn[5]_i_2
       (.I0(indexIn_reg[5]),
        .I1(indexIn_reg[4]),
        .I2(indexIn_reg[3]),
        .I3(indexIn_reg[2]),
        .I4(indexIn_reg[1]),
        .I5(indexIn_reg[0]),
        .O(p_0_in__0[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE))
    \indexIn[5]_i_3
       (.I0(\indexIn[5]_i_4_n_0 ),
        .I1(\indexIn[5]_i_5_n_0 ),
        .I2(Q[9]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[1]),
        .O(\indexIn[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7))
    \indexIn[5]_i_4
       (.I0(wAddrValid),
        .I1(\indexIn[5]_i_3_0 ),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(Q[5]),
        .I5(Q[7]),
        .O(\indexIn[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE))
    \indexIn[5]_i_5
       (.I0(Q[10]),
        .I1(Q[3]),
        .I2(Q[11]),
        .I3(Q[4]),
        .O(\indexIn[5]_i_5_n_0 ));
  FDRE \indexIn_reg[0]
       (.C(clk),
        .CE(doInsert),
        .D(\indexIn[0]_i_1_n_0 ),
        .Q(indexIn_reg[0]),
        .R(SR));
  FDRE \indexIn_reg[1]
       (.C(clk),
        .CE(doInsert),
        .D(p_0_in__0[1]),
        .Q(indexIn_reg[1]),
        .R(SR));
  FDRE \indexIn_reg[2]
       (.C(clk),
        .CE(doInsert),
        .D(\indexIn[2]_i_1__0_n_0 ),
        .Q(indexIn_reg[2]),
        .R(SR));
  FDRE \indexIn_reg[3]
       (.C(clk),
        .CE(doInsert),
        .D(\indexIn[3]_i_1__0_n_0 ),
        .Q(indexIn_reg[3]),
        .R(SR));
  FDRE \indexIn_reg[4]
       (.C(clk),
        .CE(doInsert),
        .D(p_0_in__0[4]),
        .Q(indexIn_reg[4]),
        .R(SR));
  FDRE \indexIn_reg[5]
       (.C(clk),
        .CE(doInsert),
        .D(p_0_in__0[5]),
        .Q(indexIn_reg[5]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1))
    \indexOut[0]_i_1
       (.I0(indexOut_reg[0]),
        .O(\indexOut[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *)
  LUT2 #(
    .INIT(4'h6))
    \indexOut[1]_i_1
       (.I0(indexOut_reg[0]),
        .I1(indexOut_reg[1]),
        .O(\indexOut[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *)
  LUT3 #(
    .INIT(8'h6A))
    \indexOut[2]_i_1
       (.I0(indexOut_reg[2]),
        .I1(indexOut_reg[0]),
        .I2(indexOut_reg[1]),
        .O(\indexOut[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *)
  LUT4 #(
    .INIT(16'h7F80))
    \indexOut[3]_i_1
       (.I0(indexOut_reg[1]),
        .I1(indexOut_reg[0]),
        .I2(indexOut_reg[2]),
        .I3(indexOut_reg[3]),
        .O(\indexOut[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *)
  LUT5 #(
    .INIT(32'h6AAAAAAA))
    \indexOut[4]_i_1
       (.I0(indexOut_reg[4]),
        .I1(indexOut_reg[1]),
        .I2(indexOut_reg[0]),
        .I3(indexOut_reg[2]),
        .I4(indexOut_reg[3]),
        .O(\indexOut[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA))
    \indexOut[5]_i_1
       (.I0(indexOut_reg[5]),
        .I1(indexOut_reg[3]),
        .I2(indexOut_reg[2]),
        .I3(indexOut_reg[0]),
        .I4(indexOut_reg[1]),
        .I5(indexOut_reg[4]),
        .O(\indexOut[5]_i_1_n_0 ));
  FDRE \indexOut_reg[0]
       (.C(clk),
        .CE(\outDataReg[7]_i_1_n_0 ),
        .D(\indexOut[0]_i_1_n_0 ),
        .Q(indexOut_reg[0]),
        .R(SR));
  FDRE \indexOut_reg[1]
       (.C(clk),
        .CE(\outDataReg[7]_i_1_n_0 ),
        .D(\indexOut[1]_i_1_n_0 ),
        .Q(indexOut_reg[1]),
        .R(SR));
  FDRE \indexOut_reg[2]
       (.C(clk),
        .CE(\outDataReg[7]_i_1_n_0 ),
        .D(\indexOut[2]_i_1_n_0 ),
        .Q(indexOut_reg[2]),
        .R(SR));
  FDRE \indexOut_reg[3]
       (.C(clk),
        .CE(\outDataReg[7]_i_1_n_0 ),
        .D(\indexOut[3]_i_1_n_0 ),
        .Q(indexOut_reg[3]),
        .R(SR));
  FDRE \indexOut_reg[4]
       (.C(clk),
        .CE(\outDataReg[7]_i_1_n_0 ),
        .D(\indexOut[4]_i_1_n_0 ),
        .Q(indexOut_reg[4]),
        .R(SR));
  FDRE \indexOut_reg[5]
       (.C(clk),
        .CE(\outDataReg[7]_i_1_n_0 ),
        .D(\indexOut[5]_i_1_n_0 ),
        .Q(indexOut_reg[5]),
        .R(SR));
  (* METHODOLOGY_DRC_VIOS = "" *)
  (* RTL_RAM_BITS = "512" *)
  (* RTL_RAM_NAME = "inst/txFIFO/mem_reg_0_63_0_2" *)
  (* RTL_RAM_TYPE = "RAM_SDP" *)
  (* ram_addr_begin = "0" *)
  (* ram_addr_end = "63" *)
  (* ram_offset = "0" *)
  (* ram_slice_begin = "0" *)
  (* ram_slice_end = "2" *)
  RAM64M mem_reg_0_63_0_2
       (.ADDRA(indexOut_reg),
        .ADDRB(indexOut_reg),
        .ADDRC(indexOut_reg),
        .ADDRD(indexIn_reg),
        .DIA(\outDataReg_reg[6]_0 [0]),
        .DIB(\outDataReg_reg[6]_0 [1]),
        .DIC(\outDataReg_reg[6]_0 [2]),
        .DID(1'b0),
        .DOA(outDataReg0[0]),
        .DOB(outDataReg0[1]),
        .DOC(outDataReg0[2]),
        .DOD(NLW_mem_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_0_63_0_2_i_1_n_0));
  LUT2 #(
    .INIT(4'h8))
    mem_reg_0_63_0_2_i_1
       (.I0(doInsert),
        .I1(aresetn),
        .O(mem_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *)
  (* RTL_RAM_BITS = "512" *)
  (* RTL_RAM_NAME = "inst/txFIFO/mem_reg_0_63_3_5" *)
  (* RTL_RAM_TYPE = "RAM_SDP" *)
  (* ram_addr_begin = "0" *)
  (* ram_addr_end = "63" *)
  (* ram_offset = "0" *)
  (* ram_slice_begin = "3" *)
  (* ram_slice_end = "5" *)
  RAM64M mem_reg_0_63_3_5
       (.ADDRA(indexOut_reg),
        .ADDRB(indexOut_reg),
        .ADDRC(indexOut_reg),
        .ADDRD(indexIn_reg),
        .DIA(\outDataReg_reg[6]_0 [3]),
        .DIB(\outDataReg_reg[6]_0 [4]),
        .DIC(\outDataReg_reg[6]_0 [5]),
        .DID(1'b0),
        .DOA(outDataReg0[3]),
        .DOB(outDataReg0[4]),
        .DOC(outDataReg0[5]),
        .DOD(NLW_mem_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *)
  (* RTL_RAM_BITS = "512" *)
  (* RTL_RAM_NAME = "inst/txFIFO/mem_reg_0_63_6_7" *)
  (* RTL_RAM_TYPE = "RAM_SDP" *)
  (* ram_addr_begin = "0" *)
  (* ram_addr_end = "63" *)
  (* ram_offset = "0" *)
  (* ram_slice_begin = "6" *)
  (* ram_slice_end = "7" *)
  RAM64M mem_reg_0_63_6_7
       (.ADDRA(indexOut_reg),
        .ADDRB(indexOut_reg),
        .ADDRC(indexOut_reg),
        .ADDRD(indexIn_reg),
        .DIA(\outDataReg_reg[6]_0 [6]),
        .DIB(\outDataReg_reg[6]_0 [7]),
        .DIC(1'b0),
        .DID(1'b0),
        .DOA(outDataReg0[6]),
        .DOB(outDataReg0[7]),
        .DOC(NLW_mem_reg_0_63_6_7_DOC_UNCONNECTED),
        .DOD(NLW_mem_reg_0_63_6_7_DOD_UNCONNECTED),
        .WCLK(clk),
        .WE(mem_reg_0_63_0_2_i_1_n_0));
  LUT5 #(
    .INIT(32'h8F8F8F00))
    \outDataReg[7]_i_1
       (.I0(\indexIn_reg[5]_0 ),
        .I1(aresetn),
        .I2(uartWr),
        .I3(\outDataReg[7]_i_2_n_0 ),
        .I4(fullCond),
        .O(\outDataReg[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF6FF6))
    \outDataReg[7]_i_2
       (.I0(indexIn_reg[0]),
        .I1(indexOut_reg[0]),
        .I2(indexIn_reg[1]),
        .I3(indexOut_reg[1]),
        .I4(\outDataReg[7]_i_3_n_0 ),
        .I5(\outDataReg[7]_i_4_n_0 ),
        .O(\outDataReg[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6))
    \outDataReg[7]_i_3
       (.I0(indexOut_reg[5]),
        .I1(indexIn_reg[5]),
        .I2(indexOut_reg[2]),
        .I3(indexIn_reg[2]),
        .O(\outDataReg[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6))
    \outDataReg[7]_i_4
       (.I0(indexOut_reg[3]),
        .I1(indexIn_reg[3]),
        .I2(indexOut_reg[4]),
        .I3(indexIn_reg[4]),
        .O(\outDataReg[7]_i_4_n_0 ));
  FDRE \outDataReg_reg[0]
       (.C(clk),
        .CE(\outDataReg[7]_i_1_n_0 ),
        .D(outDataReg0[0]),
        .Q(\outDataReg_reg[7]_0 [0]),
        .R(SR));
  FDRE \outDataReg_reg[1]
       (.C(clk),
        .CE(\outDataReg[7]_i_1_n_0 ),
        .D(outDataReg0[1]),
        .Q(\outDataReg_reg[7]_0 [1]),
        .R(SR));
  FDRE \outDataReg_reg[2]
       (.C(clk),
        .CE(\outDataReg[7]_i_1_n_0 ),
        .D(outDataReg0[2]),
        .Q(\outDataReg_reg[7]_0 [2]),
        .R(SR));
  FDRE \outDataReg_reg[3]
       (.C(clk),
        .CE(\outDataReg[7]_i_1_n_0 ),
        .D(outDataReg0[3]),
        .Q(\outDataReg_reg[7]_0 [3]),
        .R(SR));
  FDRE \outDataReg_reg[4]
       (.C(clk),
        .CE(\outDataReg[7]_i_1_n_0 ),
        .D(outDataReg0[4]),
        .Q(\outDataReg_reg[7]_0 [4]),
        .R(SR));
  FDRE \outDataReg_reg[5]
       (.C(clk),
        .CE(\outDataReg[7]_i_1_n_0 ),
        .D(outDataReg0[5]),
        .Q(\outDataReg_reg[7]_0 [5]),
        .R(SR));
  FDRE \outDataReg_reg[6]
       (.C(clk),
        .CE(\outDataReg[7]_i_1_n_0 ),
        .D(outDataReg0[6]),
        .Q(\outDataReg_reg[7]_0 [6]),
        .R(SR));
  FDRE \outDataReg_reg[7]
       (.C(clk),
        .CE(\outDataReg[7]_i_1_n_0 ),
        .D(outDataReg0[7]),
        .Q(\outDataReg_reg[7]_0 [7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *)
  LUT5 #(
    .INIT(32'hCCCCCC40))
    outValidReg_i_1
       (.I0(\indexIn_reg[5]_0 ),
        .I1(aresetn),
        .I2(uartWr),
        .I3(\outDataReg[7]_i_2_n_0 ),
        .I4(fullCond),
        .O(outValidReg_i_1_n_0));
  FDRE outValidReg_reg
       (.C(clk),
        .CE(1'b1),
        .D(outValidReg_i_1_n_0),
        .Q(uartWr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *)
  LUT2 #(
    .INIT(4'h1))
    \s_axi_rdata[5]_i_2
       (.I0(fullCond),
        .I1(\outDataReg[7]_i_2_n_0 ),
        .O(fullCond_reg_0));
  LUT6 #(
    .INIT(64'h0000000000000007))
    \s_axi_rdata[5]_i_4
       (.I0(free1_carry_n_6),
        .I1(free1_carry_n_7),
        .I2(free1_carry__0_n_7),
        .I3(free1_carry__0_n_6),
        .I4(free1_carry_n_5),
        .I5(free1_carry_n_4),
        .O(\indexOut_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *)
  LUT3 #(
    .INIT(8'hBF))
    \s_axi_rdata[6]_i_2
       (.I0(uartWr),
        .I1(aresetn),
        .I2(\indexIn_reg[5]_0 ),
        .O(outValidReg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *)
  LUT3 #(
    .INIT(8'h01))
    \s_axi_rdata[6]_i_3
       (.I0(\outDataReg[7]_i_2_n_0 ),
        .I1(fullCond),
        .I2(\s_axi_rdata_reg[6] ),
        .O(fullCond_reg_1));
endmodule

(* ORIG_REF_NAME = "UART8250Lite" *)
module axi_map_UART8250Lite_0_0_UART8250Lite
   (s_axi_bvalid_reg_0,
    s_axi_rvalid_reg_0,
    s_axi_rdata,
    s_axi_awready,
    s_axi_wready,
    s_axi_arready,
    UART_tx,
    aresetn,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    clk,
    UART_rx,
    s_axi_wdata,
    s_axi_awaddr,
    s_axi_araddr,
    s_axi_bready,
    s_axi_rready);
  output s_axi_bvalid_reg_0;
  output s_axi_rvalid_reg_0;
  output [7:0]s_axi_rdata;
  output s_axi_awready;
  output s_axi_wready;
  output s_axi_arready;
  output UART_tx;
  input aresetn;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input clk;
  input UART_rx;
  input [7:0]s_axi_wdata;
  input [11:0]s_axi_awaddr;
  input [11:0]s_axi_araddr;
  input s_axi_bready;
  input s_axi_rready;

  wire UART_rx;
  wire UART_tx;
  wire aresetn;
  wire clk;
  wire [7:0]data_o;
  wire [7:0]outDataReg;
  wire rxFIFOAck1_out;
  wire rxFIFOAck_reg_n_0;
  wire rxFIFO_n_1;
  wire rxFIFO_n_2;
  wire rxFIFO_n_3;
  wire rxFIFO_n_4;
  wire rxFIFO_n_5;
  wire rxFIFO_n_6;
  wire rxFIFO_n_7;
  wire rxFIFO_n_8;
  wire rxFIFOavail;
  wire [11:0]s_axi_araddr;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [11:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid_i_2_n_0;
  wire s_axi_bvalid_reg_0;
  wire [7:0]s_axi_rdata;
  wire \s_axi_rdata[0]_i_1_n_0 ;
  wire \s_axi_rdata[5]_i_1_n_0 ;
  wire \s_axi_rdata[5]_i_3_n_0 ;
  wire \s_axi_rdata[5]_i_6_n_0 ;
  wire \s_axi_rdata[5]_i_7_n_0 ;
  wire \s_axi_rdata[6]_i_1_n_0 ;
  wire \s_axi_rdata[7]_i_1_n_0 ;
  wire \s_axi_rdata[7]_i_2_n_0 ;
  wire \s_axi_rdata[7]_i_3_n_0 ;
  wire \s_axi_rdata[7]_i_4_n_0 ;
  wire s_axi_rready;
  wire s_axi_rvalid_i_1_n_0;
  wire s_axi_rvalid_reg_0;
  wire [7:0]s_axi_wdata;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire txFIFO_n_1;
  wire txFIFO_n_2;
  wire txFIFO_n_3;
  wire txFIFO_n_4;
  wire uartRdValid;
  wire uartWr;
  wire uart_n_0;
  wire uart_n_3;
  wire wAddrValid;
  wire wAddrValid_i_1_n_0;
  wire wDataValid_i_1_n_0;
  wire wDataValid_reg_n_0;
  wire \waddr[11]_i_1_n_0 ;
  wire \waddr_reg_n_0_[0] ;
  wire \waddr_reg_n_0_[10] ;
  wire \waddr_reg_n_0_[11] ;
  wire \waddr_reg_n_0_[1] ;
  wire \waddr_reg_n_0_[2] ;
  wire \waddr_reg_n_0_[3] ;
  wire \waddr_reg_n_0_[4] ;
  wire \waddr_reg_n_0_[5] ;
  wire \waddr_reg_n_0_[6] ;
  wire \waddr_reg_n_0_[7] ;
  wire \waddr_reg_n_0_[8] ;
  wire \waddr_reg_n_0_[9] ;
  wire [7:0]wdata;
  wire \wdata[7]_i_1_n_0 ;

  axi_map_UART8250Lite_0_0_FIFO rxFIFO
       (.Q({rxFIFO_n_2,rxFIFO_n_3,rxFIFO_n_4,rxFIFO_n_5,rxFIFO_n_6,rxFIFO_n_7,rxFIFO_n_8}),
        .SR(uart_n_0),
        .aresetn(aresetn),
        .clk(clk),
        .\indexIn_reg[5]_0 (rxFIFOAck_reg_n_0),
        .\outDataReg_reg[5]_0 (rxFIFO_n_1),
        .\outDataReg_reg[6]_0 (data_o),
        .rxFIFOavail(rxFIFOavail),
        .s_axi_araddr(s_axi_araddr[2:0]),
        .\s_axi_rdata_reg[5] (\s_axi_rdata[7]_i_4_n_0 ),
        .uartRdValid(uartRdValid));
  (* SOFT_HLUTNM = "soft_lutpair25" *)
  LUT3 #(
    .INIT(8'h04))
    rxFIFOAck_i_1
       (.I0(s_axi_rvalid_reg_0),
        .I1(s_axi_arvalid),
        .I2(\s_axi_rdata[7]_i_3_n_0 ),
        .O(rxFIFOAck1_out));
  FDRE rxFIFOAck_reg
       (.C(clk),
        .CE(1'b1),
        .D(rxFIFOAck1_out),
        .Q(rxFIFOAck_reg_n_0),
        .R(uart_n_0));
  LUT1 #(
    .INIT(2'h1))
    s_axi_arready_INST_0
       (.I0(s_axi_rvalid_reg_0),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair24" *)
  LUT2 #(
    .INIT(4'h1))
    s_axi_awready_INST_0
       (.I0(wAddrValid),
        .I1(s_axi_bvalid_reg_0),
        .O(s_axi_awready));
  LUT4 #(
    .INIT(16'hD5C0))
    s_axi_bvalid_i_2
       (.I0(s_axi_bready),
        .I1(wAddrValid),
        .I2(wDataValid_reg_n_0),
        .I3(s_axi_bvalid_reg_0),
        .O(s_axi_bvalid_i_2_n_0));
  FDRE s_axi_bvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_bvalid_i_2_n_0),
        .Q(s_axi_bvalid_reg_0),
        .R(uart_n_0));
  LUT6 #(
    .INIT(64'h4F44FFFF4F440000))
    \s_axi_rdata[0]_i_1
       (.I0(\s_axi_rdata[7]_i_3_n_0 ),
        .I1(rxFIFO_n_8),
        .I2(\s_axi_rdata[5]_i_3_n_0 ),
        .I3(rxFIFOavail),
        .I4(\s_axi_rdata[7]_i_2_n_0 ),
        .I5(s_axi_rdata[0]),
        .O(\s_axi_rdata[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF23FFFFFF230000))
    \s_axi_rdata[5]_i_1
       (.I0(txFIFO_n_1),
        .I1(\s_axi_rdata[5]_i_3_n_0 ),
        .I2(txFIFO_n_4),
        .I3(rxFIFO_n_1),
        .I4(\s_axi_rdata[7]_i_2_n_0 ),
        .I5(s_axi_rdata[5]),
        .O(\s_axi_rdata[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF))
    \s_axi_rdata[5]_i_3
       (.I0(\s_axi_rdata[5]_i_6_n_0 ),
        .I1(\s_axi_rdata[5]_i_7_n_0 ),
        .I2(s_axi_araddr[11]),
        .I3(s_axi_araddr[2]),
        .I4(s_axi_araddr[0]),
        .I5(s_axi_araddr[1]),
        .O(\s_axi_rdata[5]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE))
    \s_axi_rdata[5]_i_6
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_araddr[3]),
        .I2(s_axi_araddr[6]),
        .I3(s_axi_araddr[5]),
        .O(\s_axi_rdata[5]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE))
    \s_axi_rdata[5]_i_7
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_araddr[7]),
        .I2(s_axi_araddr[10]),
        .I3(s_axi_araddr[9]),
        .O(\s_axi_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4F44FFFF4F440000))
    \s_axi_rdata[6]_i_1
       (.I0(\s_axi_rdata[7]_i_3_n_0 ),
        .I1(rxFIFO_n_3),
        .I2(txFIFO_n_2),
        .I3(txFIFO_n_3),
        .I4(\s_axi_rdata[7]_i_2_n_0 ),
        .I5(s_axi_rdata[6]),
        .O(\s_axi_rdata[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080))
    \s_axi_rdata[7]_i_1
       (.I0(\s_axi_rdata[7]_i_3_n_0 ),
        .I1(aresetn),
        .I2(s_axi_arvalid),
        .I3(s_axi_rvalid_reg_0),
        .O(\s_axi_rdata[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40))
    \s_axi_rdata[7]_i_2
       (.I0(s_axi_rvalid_reg_0),
        .I1(s_axi_arvalid),
        .I2(aresetn),
        .O(\s_axi_rdata[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE))
    \s_axi_rdata[7]_i_3
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_araddr[1]),
        .I2(s_axi_araddr[0]),
        .I3(\s_axi_rdata[7]_i_4_n_0 ),
        .O(\s_axi_rdata[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE))
    \s_axi_rdata[7]_i_4
       (.I0(s_axi_araddr[11]),
        .I1(\s_axi_rdata[5]_i_7_n_0 ),
        .I2(s_axi_araddr[4]),
        .I3(s_axi_araddr[3]),
        .I4(s_axi_araddr[6]),
        .I5(s_axi_araddr[5]),
        .O(\s_axi_rdata[7]_i_4_n_0 ));
  FDRE \s_axi_rdata_reg[0]
       (.C(clk),
        .CE(1'b1),
        .D(\s_axi_rdata[0]_i_1_n_0 ),
        .Q(s_axi_rdata[0]),
        .R(1'b0));
  FDRE \s_axi_rdata_reg[1]
       (.C(clk),
        .CE(\s_axi_rdata[7]_i_2_n_0 ),
        .D(rxFIFO_n_7),
        .Q(s_axi_rdata[1]),
        .R(\s_axi_rdata[7]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[2]
       (.C(clk),
        .CE(\s_axi_rdata[7]_i_2_n_0 ),
        .D(rxFIFO_n_6),
        .Q(s_axi_rdata[2]),
        .R(\s_axi_rdata[7]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[3]
       (.C(clk),
        .CE(\s_axi_rdata[7]_i_2_n_0 ),
        .D(rxFIFO_n_5),
        .Q(s_axi_rdata[3]),
        .R(\s_axi_rdata[7]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[4]
       (.C(clk),
        .CE(\s_axi_rdata[7]_i_2_n_0 ),
        .D(rxFIFO_n_4),
        .Q(s_axi_rdata[4]),
        .R(\s_axi_rdata[7]_i_1_n_0 ));
  FDRE \s_axi_rdata_reg[5]
       (.C(clk),
        .CE(1'b1),
        .D(\s_axi_rdata[5]_i_1_n_0 ),
        .Q(s_axi_rdata[5]),
        .R(1'b0));
  FDRE \s_axi_rdata_reg[6]
       (.C(clk),
        .CE(1'b1),
        .D(\s_axi_rdata[6]_i_1_n_0 ),
        .Q(s_axi_rdata[6]),
        .R(1'b0));
  FDRE \s_axi_rdata_reg[7]
       (.C(clk),
        .CE(\s_axi_rdata[7]_i_2_n_0 ),
        .D(rxFIFO_n_2),
        .Q(s_axi_rdata[7]),
        .R(\s_axi_rdata[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *)
  LUT3 #(
    .INIT(8'h74))
    s_axi_rvalid_i_1
       (.I0(s_axi_rready),
        .I1(s_axi_rvalid_reg_0),
        .I2(s_axi_arvalid),
        .O(s_axi_rvalid_i_1_n_0));
  FDRE s_axi_rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rvalid_reg_0),
        .R(uart_n_0));
  (* SOFT_HLUTNM = "soft_lutpair23" *)
  LUT2 #(
    .INIT(4'h1))
    s_axi_wready_INST_0
       (.I0(wDataValid_reg_n_0),
        .I1(s_axi_bvalid_reg_0),
        .O(s_axi_wready));
  axi_map_UART8250Lite_0_0_FIFO_0 txFIFO
       (.Q({\waddr_reg_n_0_[11] ,\waddr_reg_n_0_[10] ,\waddr_reg_n_0_[9] ,\waddr_reg_n_0_[8] ,\waddr_reg_n_0_[7] ,\waddr_reg_n_0_[6] ,\waddr_reg_n_0_[5] ,\waddr_reg_n_0_[4] ,\waddr_reg_n_0_[3] ,\waddr_reg_n_0_[2] ,\waddr_reg_n_0_[1] ,\waddr_reg_n_0_[0] }),
        .SR(uart_n_0),
        .aresetn(aresetn),
        .clk(clk),
        .fullCond_reg_0(txFIFO_n_1),
        .fullCond_reg_1(txFIFO_n_3),
        .\indexIn[5]_i_3_0 (wDataValid_reg_n_0),
        .\indexIn_reg[5]_0 (uart_n_3),
        .\indexOut_reg[3]_0 (txFIFO_n_4),
        .\outDataReg_reg[6]_0 (wdata),
        .\outDataReg_reg[7]_0 (outDataReg),
        .outValidReg_reg_0(txFIFO_n_2),
        .\s_axi_rdata_reg[6] (\s_axi_rdata[5]_i_3_n_0 ),
        .uartWr(uartWr),
        .wAddrValid(wAddrValid));
  axi_map_UART8250Lite_0_0_Uart uart
       (.D(outDataReg),
        .\FSM_onehot_state_reg[1] (uart_n_3),
        .Q(data_o),
        .SR(uart_n_0),
        .UART_rx(UART_rx),
        .UART_tx(UART_tx),
        .aresetn(aresetn),
        .clk(clk),
        .uartRdValid(uartRdValid),
        .uartWr(uartWr));
  (* SOFT_HLUTNM = "soft_lutpair23" *)
  LUT5 #(
    .INIT(32'h0F220000))
    wAddrValid_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_bvalid_reg_0),
        .I2(wDataValid_reg_n_0),
        .I3(wAddrValid),
        .I4(aresetn),
        .O(wAddrValid_i_1_n_0));
  FDRE wAddrValid_reg
       (.C(clk),
        .CE(1'b1),
        .D(wAddrValid_i_1_n_0),
        .Q(wAddrValid),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair24" *)
  LUT5 #(
    .INIT(32'h02F20000))
    wDataValid_i_1
       (.I0(s_axi_wvalid),
        .I1(s_axi_bvalid_reg_0),
        .I2(wDataValid_reg_n_0),
        .I3(wAddrValid),
        .I4(aresetn),
        .O(wDataValid_i_1_n_0));
  FDRE wDataValid_reg
       (.C(clk),
        .CE(1'b1),
        .D(wDataValid_i_1_n_0),
        .Q(wDataValid_reg_n_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000))
    \waddr[11]_i_1
       (.I0(wAddrValid),
        .I1(s_axi_bvalid_reg_0),
        .I2(s_axi_awvalid),
        .I3(aresetn),
        .O(\waddr[11]_i_1_n_0 ));
  FDRE \waddr_reg[0]
       (.C(clk),
        .CE(\waddr[11]_i_1_n_0 ),
        .D(s_axi_awaddr[0]),
        .Q(\waddr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \waddr_reg[10]
       (.C(clk),
        .CE(\waddr[11]_i_1_n_0 ),
        .D(s_axi_awaddr[10]),
        .Q(\waddr_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \waddr_reg[11]
       (.C(clk),
        .CE(\waddr[11]_i_1_n_0 ),
        .D(s_axi_awaddr[11]),
        .Q(\waddr_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \waddr_reg[1]
       (.C(clk),
        .CE(\waddr[11]_i_1_n_0 ),
        .D(s_axi_awaddr[1]),
        .Q(\waddr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \waddr_reg[2]
       (.C(clk),
        .CE(\waddr[11]_i_1_n_0 ),
        .D(s_axi_awaddr[2]),
        .Q(\waddr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \waddr_reg[3]
       (.C(clk),
        .CE(\waddr[11]_i_1_n_0 ),
        .D(s_axi_awaddr[3]),
        .Q(\waddr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \waddr_reg[4]
       (.C(clk),
        .CE(\waddr[11]_i_1_n_0 ),
        .D(s_axi_awaddr[4]),
        .Q(\waddr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \waddr_reg[5]
       (.C(clk),
        .CE(\waddr[11]_i_1_n_0 ),
        .D(s_axi_awaddr[5]),
        .Q(\waddr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \waddr_reg[6]
       (.C(clk),
        .CE(\waddr[11]_i_1_n_0 ),
        .D(s_axi_awaddr[6]),
        .Q(\waddr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \waddr_reg[7]
       (.C(clk),
        .CE(\waddr[11]_i_1_n_0 ),
        .D(s_axi_awaddr[7]),
        .Q(\waddr_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \waddr_reg[8]
       (.C(clk),
        .CE(\waddr[11]_i_1_n_0 ),
        .D(s_axi_awaddr[8]),
        .Q(\waddr_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \waddr_reg[9]
       (.C(clk),
        .CE(\waddr[11]_i_1_n_0 ),
        .D(s_axi_awaddr[9]),
        .Q(\waddr_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h1000))
    \wdata[7]_i_1
       (.I0(wDataValid_reg_n_0),
        .I1(s_axi_bvalid_reg_0),
        .I2(s_axi_wvalid),
        .I3(aresetn),
        .O(\wdata[7]_i_1_n_0 ));
  FDRE \wdata_reg[0]
       (.C(clk),
        .CE(\wdata[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(wdata[0]),
        .R(1'b0));
  FDRE \wdata_reg[1]
       (.C(clk),
        .CE(\wdata[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(wdata[1]),
        .R(1'b0));
  FDRE \wdata_reg[2]
       (.C(clk),
        .CE(\wdata[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(wdata[2]),
        .R(1'b0));
  FDRE \wdata_reg[3]
       (.C(clk),
        .CE(\wdata[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(wdata[3]),
        .R(1'b0));
  FDRE \wdata_reg[4]
       (.C(clk),
        .CE(\wdata[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(wdata[4]),
        .R(1'b0));
  FDRE \wdata_reg[5]
       (.C(clk),
        .CE(\wdata[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(wdata[5]),
        .R(1'b0));
  FDRE \wdata_reg[6]
       (.C(clk),
        .CE(\wdata[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(wdata[6]),
        .R(1'b0));
  FDRE \wdata_reg[7]
       (.C(clk),
        .CE(\wdata[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(wdata[7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Uart" *)
module axi_map_UART8250Lite_0_0_Uart
   (SR,
    UART_tx,
    uartRdValid,
    \FSM_onehot_state_reg[1] ,
    Q,
    clk,
    aresetn,
    uartWr,
    UART_rx,
    D);
  output [0:0]SR;
  output UART_tx;
  output uartRdValid;
  output \FSM_onehot_state_reg[1] ;
  output [7:0]Q;
  input clk;
  input aresetn;
  input uartWr;
  input UART_rx;
  input [7:0]D;

  wire [7:0]D;
  wire \FSM_onehot_state_reg[1] ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire UART_rx;
  wire UART_tx;
  wire aresetn;
  wire clk;
  wire uartRdValid;
  wire uartWr;

  axi_map_UART8250Lite_0_0_UartRx uart_rx
       (.Q(Q),
        .SR(SR),
        .UART_rx(UART_rx),
        .aresetn(aresetn),
        .clk(clk),
        .uartRdValid(uartRdValid));
  axi_map_UART8250Lite_0_0_UartTx uart_tx
       (.D(D),
        .\FSM_onehot_state_reg[1]_0 (\FSM_onehot_state_reg[1] ),
        .SR(SR),
        .UART_tx(UART_tx),
        .aresetn(aresetn),
        .clk(clk),
        .uartWr(uartWr));
endmodule

(* ORIG_REF_NAME = "UartRx" *)
module axi_map_UART8250Lite_0_0_UartRx
   (uartRdValid,
    SR,
    Q,
    clk,
    aresetn,
    UART_rx);
  output uartRdValid;
  output [0:0]SR;
  output [7:0]Q;
  input clk;
  input aresetn;
  input UART_rx;

  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_inv_i_1_n_0 ;
  wire \FSM_sequential_state[1]_inv_i_2_n_0 ;
  wire \FSM_sequential_state[1]_inv_i_3_n_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire UART_rx;
  wire aresetn;
  wire [15:0]bit_timer;
  wire bit_timer0_carry__0_i_1__0_n_0;
  wire bit_timer0_carry__0_i_2__0_n_0;
  wire bit_timer0_carry__0_i_3__0_n_0;
  wire bit_timer0_carry__0_i_4__0_n_0;
  wire bit_timer0_carry__0_n_0;
  wire bit_timer0_carry__0_n_1;
  wire bit_timer0_carry__0_n_2;
  wire bit_timer0_carry__0_n_3;
  wire bit_timer0_carry__0_n_4;
  wire bit_timer0_carry__0_n_5;
  wire bit_timer0_carry__0_n_6;
  wire bit_timer0_carry__0_n_7;
  wire bit_timer0_carry__1_i_1__0_n_0;
  wire bit_timer0_carry__1_i_2__0_n_0;
  wire bit_timer0_carry__1_i_3__0_n_0;
  wire bit_timer0_carry__1_i_4__0_n_0;
  wire bit_timer0_carry__1_n_0;
  wire bit_timer0_carry__1_n_1;
  wire bit_timer0_carry__1_n_2;
  wire bit_timer0_carry__1_n_3;
  wire bit_timer0_carry__1_n_4;
  wire bit_timer0_carry__1_n_5;
  wire bit_timer0_carry__1_n_6;
  wire bit_timer0_carry__1_n_7;
  wire bit_timer0_carry__2_i_1__0_n_0;
  wire bit_timer0_carry__2_i_2__0_n_0;
  wire bit_timer0_carry__2_i_3__0_n_0;
  wire bit_timer0_carry__2_n_2;
  wire bit_timer0_carry__2_n_3;
  wire bit_timer0_carry__2_n_5;
  wire bit_timer0_carry__2_n_6;
  wire bit_timer0_carry__2_n_7;
  wire bit_timer0_carry_i_1__0_n_0;
  wire bit_timer0_carry_i_2__0_n_0;
  wire bit_timer0_carry_i_3__0_n_0;
  wire bit_timer0_carry_i_4__0_n_0;
  wire bit_timer0_carry_n_0;
  wire bit_timer0_carry_n_1;
  wire bit_timer0_carry_n_2;
  wire bit_timer0_carry_n_3;
  wire bit_timer0_carry_n_4;
  wire bit_timer0_carry_n_5;
  wire bit_timer0_carry_n_6;
  wire bit_timer0_carry_n_7;
  wire \bit_timer[15]_i_2_n_0 ;
  wire \bit_timer[15]_i_3_n_0 ;
  wire \bit_timer[15]_i_4_n_0 ;
  wire \bit_timer[1]_i_1_n_0 ;
  wire \bit_timer[3]_i_1_n_0 ;
  wire \bit_timer[5]_i_1_n_0 ;
  wire \bit_timer[5]_i_2__0_n_0 ;
  wire \bit_timer_reg_n_0_[0] ;
  wire \bit_timer_reg_n_0_[10] ;
  wire \bit_timer_reg_n_0_[11] ;
  wire \bit_timer_reg_n_0_[12] ;
  wire \bit_timer_reg_n_0_[13] ;
  wire \bit_timer_reg_n_0_[14] ;
  wire \bit_timer_reg_n_0_[15] ;
  wire \bit_timer_reg_n_0_[1] ;
  wire \bit_timer_reg_n_0_[2] ;
  wire \bit_timer_reg_n_0_[3] ;
  wire \bit_timer_reg_n_0_[4] ;
  wire \bit_timer_reg_n_0_[5] ;
  wire \bit_timer_reg_n_0_[6] ;
  wire \bit_timer_reg_n_0_[7] ;
  wire \bit_timer_reg_n_0_[8] ;
  wire \bit_timer_reg_n_0_[9] ;
  wire clk;
  wire \data_o[7]_i_1_n_0 ;
  wire p_0_in5_in;
  wire \packet[0]_i_1_n_0 ;
  wire \packet[1]_i_1_n_0 ;
  wire \packet[2]_i_1_n_0 ;
  wire \packet[3]_i_1_n_0 ;
  wire \packet[3]_i_2_n_0 ;
  wire \packet[4]_i_1_n_0 ;
  wire \packet[4]_i_2_n_0 ;
  wire \packet[5]_i_1_n_0 ;
  wire \packet[6]_i_1_n_0 ;
  wire \packet[6]_i_2_n_0 ;
  wire \packet[7]_i_1_n_0 ;
  wire \packet[7]_i_2_n_0 ;
  wire \packet[7]_i_3_n_0 ;
  wire \packet[7]_i_4_n_0 ;
  wire \packet[7]_i_5_n_0 ;
  wire \packet[8]_i_1_n_0 ;
  wire \packet[8]_i_2_n_0 ;
  wire \packet[8]_i_3_n_0 ;
  wire \packet[9]_i_1_n_0 ;
  wire \packet[9]_i_2_n_0 ;
  wire \packet[9]_i_3_n_0 ;
  wire \packet[9]_i_4_n_0 ;
  wire \packet_reg_n_0_[0] ;
  wire \packet_reg_n_0_[2] ;
  wire \packet_reg_n_0_[3] ;
  wire \packet_reg_n_0_[4] ;
  wire \packet_reg_n_0_[5] ;
  wire \packet_reg_n_0_[6] ;
  wire \packet_reg_n_0_[7] ;
  wire \packet_reg_n_0_[8] ;
  wire \packet_reg_n_0_[9] ;
  wire ready_o_i_1_n_0;
  wire [1:1]select_packet_bit;
  wire \select_packet_bit[0]_i_1__0_n_0 ;
  wire \select_packet_bit[2]_i_1__0_n_0 ;
  wire \select_packet_bit[3]_i_1__0_n_0 ;
  wire \select_packet_bit[4]_i_1_n_0 ;
  wire \select_packet_bit[4]_i_2_n_0 ;
  wire \select_packet_bit[5]_i_1_n_0 ;
  wire \select_packet_bit[5]_i_2_n_0 ;
  wire \select_packet_bit[5]_i_3_n_0 ;
  wire \select_packet_bit_reg_n_0_[0] ;
  wire \select_packet_bit_reg_n_0_[1] ;
  wire \select_packet_bit_reg_n_0_[2] ;
  wire \select_packet_bit_reg_n_0_[3] ;
  wire \select_packet_bit_reg_n_0_[4] ;
  wire \select_packet_bit_reg_n_0_[5] ;
  wire [1:0]state__0;
  wire uartRdValid;
  wire [3:2]NLW_bit_timer0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_bit_timer0_carry__2_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair13" *)
  LUT5 #(
    .INIT(32'h04F4F4F4))
    \FSM_sequential_state[0]_i_1
       (.I0(UART_rx),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\FSM_sequential_state[0]_i_3_n_0 ),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000))
    \FSM_sequential_state[0]_i_2
       (.I0(\bit_timer[15]_i_3_n_0 ),
        .I1(\bit_timer_reg_n_0_[0] ),
        .I2(state__0[1]),
        .I3(\bit_timer_reg_n_0_[2] ),
        .I4(\FSM_sequential_state[0]_i_4_n_0 ),
        .I5(\FSM_sequential_state[0]_i_5_n_0 ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFCCC2))
    \FSM_sequential_state[0]_i_3
       (.I0(UART_rx),
        .I1(\select_packet_bit_reg_n_0_[3] ),
        .I2(\FSM_sequential_state[0]_i_6_n_0 ),
        .I3(\select_packet_bit_reg_n_0_[2] ),
        .I4(\select_packet_bit_reg_n_0_[5] ),
        .I5(\select_packet_bit_reg_n_0_[4] ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *)
  LUT2 #(
    .INIT(4'hB))
    \FSM_sequential_state[0]_i_4
       (.I0(\bit_timer_reg_n_0_[5] ),
        .I1(\bit_timer_reg_n_0_[4] ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE))
    \FSM_sequential_state[0]_i_5
       (.I0(\bit_timer_reg_n_0_[7] ),
        .I1(\bit_timer_reg_n_0_[3] ),
        .I2(\bit_timer_reg_n_0_[6] ),
        .I3(\bit_timer_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *)
  LUT2 #(
    .INIT(4'hE))
    \FSM_sequential_state[0]_i_6
       (.I0(\select_packet_bit_reg_n_0_[1] ),
        .I1(\select_packet_bit_reg_n_0_[0] ),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h7BFB7B7BBBFBBBBB))
    \FSM_sequential_state[1]_inv_i_1
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .I3(\FSM_sequential_state[1]_inv_i_2_n_0 ),
        .I4(UART_rx),
        .I5(\FSM_sequential_state[1]_inv_i_3_n_0 ),
        .O(\FSM_sequential_state[1]_inv_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE))
    \FSM_sequential_state[1]_inv_i_2
       (.I0(\select_packet_bit_reg_n_0_[5] ),
        .I1(\select_packet_bit_reg_n_0_[4] ),
        .I2(\select_packet_bit_reg_n_0_[3] ),
        .I3(\select_packet_bit_reg_n_0_[1] ),
        .I4(\select_packet_bit_reg_n_0_[0] ),
        .I5(\select_packet_bit_reg_n_0_[2] ),
        .O(\FSM_sequential_state[1]_inv_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEEEEEEEEE))
    \FSM_sequential_state[1]_inv_i_3
       (.I0(\select_packet_bit_reg_n_0_[4] ),
        .I1(\select_packet_bit_reg_n_0_[5] ),
        .I2(\select_packet_bit_reg_n_0_[2] ),
        .I3(\select_packet_bit_reg_n_0_[0] ),
        .I4(\select_packet_bit_reg_n_0_[1] ),
        .I5(\select_packet_bit_reg_n_0_[3] ),
        .O(\FSM_sequential_state[1]_inv_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_RECEIVE_PACKET:01,STATE_VALIDATE_PACKET:10,STATE_IDLE:00" *)
  FDRE #(
    .INIT(1'b0))
    \FSM_sequential_state_reg[0]
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_RECEIVE_PACKET:01,STATE_VALIDATE_PACKET:10,STATE_IDLE:00" *)
  (* inverted = "yes" *)
  FDSE #(
    .INIT(1'b1))
    \FSM_sequential_state_reg[1]_inv
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_inv_i_1_n_0 ),
        .Q(state__0[1]),
        .S(SR));
  (* ADDER_THRESHOLD = "35" *)
  CARRY4 bit_timer0_carry
       (.CI(1'b0),
        .CO({bit_timer0_carry_n_0,bit_timer0_carry_n_1,bit_timer0_carry_n_2,bit_timer0_carry_n_3}),
        .CYINIT(\bit_timer_reg_n_0_[0] ),
        .DI({\bit_timer_reg_n_0_[4] ,\bit_timer_reg_n_0_[3] ,\bit_timer_reg_n_0_[2] ,\bit_timer_reg_n_0_[1] }),
        .O({bit_timer0_carry_n_4,bit_timer0_carry_n_5,bit_timer0_carry_n_6,bit_timer0_carry_n_7}),
        .S({bit_timer0_carry_i_1__0_n_0,bit_timer0_carry_i_2__0_n_0,bit_timer0_carry_i_3__0_n_0,bit_timer0_carry_i_4__0_n_0}));
  (* ADDER_THRESHOLD = "35" *)
  CARRY4 bit_timer0_carry__0
       (.CI(bit_timer0_carry_n_0),
        .CO({bit_timer0_carry__0_n_0,bit_timer0_carry__0_n_1,bit_timer0_carry__0_n_2,bit_timer0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\bit_timer_reg_n_0_[8] ,\bit_timer_reg_n_0_[7] ,\bit_timer_reg_n_0_[6] ,\bit_timer_reg_n_0_[5] }),
        .O({bit_timer0_carry__0_n_4,bit_timer0_carry__0_n_5,bit_timer0_carry__0_n_6,bit_timer0_carry__0_n_7}),
        .S({bit_timer0_carry__0_i_1__0_n_0,bit_timer0_carry__0_i_2__0_n_0,bit_timer0_carry__0_i_3__0_n_0,bit_timer0_carry__0_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__0_i_1__0
       (.I0(\bit_timer_reg_n_0_[8] ),
        .O(bit_timer0_carry__0_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__0_i_2__0
       (.I0(\bit_timer_reg_n_0_[7] ),
        .O(bit_timer0_carry__0_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__0_i_3__0
       (.I0(\bit_timer_reg_n_0_[6] ),
        .O(bit_timer0_carry__0_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__0_i_4__0
       (.I0(\bit_timer_reg_n_0_[5] ),
        .O(bit_timer0_carry__0_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *)
  CARRY4 bit_timer0_carry__1
       (.CI(bit_timer0_carry__0_n_0),
        .CO({bit_timer0_carry__1_n_0,bit_timer0_carry__1_n_1,bit_timer0_carry__1_n_2,bit_timer0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\bit_timer_reg_n_0_[12] ,\bit_timer_reg_n_0_[11] ,\bit_timer_reg_n_0_[10] ,\bit_timer_reg_n_0_[9] }),
        .O({bit_timer0_carry__1_n_4,bit_timer0_carry__1_n_5,bit_timer0_carry__1_n_6,bit_timer0_carry__1_n_7}),
        .S({bit_timer0_carry__1_i_1__0_n_0,bit_timer0_carry__1_i_2__0_n_0,bit_timer0_carry__1_i_3__0_n_0,bit_timer0_carry__1_i_4__0_n_0}));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__1_i_1__0
       (.I0(\bit_timer_reg_n_0_[12] ),
        .O(bit_timer0_carry__1_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__1_i_2__0
       (.I0(\bit_timer_reg_n_0_[11] ),
        .O(bit_timer0_carry__1_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__1_i_3__0
       (.I0(\bit_timer_reg_n_0_[10] ),
        .O(bit_timer0_carry__1_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__1_i_4__0
       (.I0(\bit_timer_reg_n_0_[9] ),
        .O(bit_timer0_carry__1_i_4__0_n_0));
  (* ADDER_THRESHOLD = "35" *)
  CARRY4 bit_timer0_carry__2
       (.CI(bit_timer0_carry__1_n_0),
        .CO({NLW_bit_timer0_carry__2_CO_UNCONNECTED[3:2],bit_timer0_carry__2_n_2,bit_timer0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\bit_timer_reg_n_0_[14] ,\bit_timer_reg_n_0_[13] }),
        .O({NLW_bit_timer0_carry__2_O_UNCONNECTED[3],bit_timer0_carry__2_n_5,bit_timer0_carry__2_n_6,bit_timer0_carry__2_n_7}),
        .S({1'b0,bit_timer0_carry__2_i_1__0_n_0,bit_timer0_carry__2_i_2__0_n_0,bit_timer0_carry__2_i_3__0_n_0}));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__2_i_1__0
       (.I0(\bit_timer_reg_n_0_[15] ),
        .O(bit_timer0_carry__2_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__2_i_2__0
       (.I0(\bit_timer_reg_n_0_[14] ),
        .O(bit_timer0_carry__2_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__2_i_3__0
       (.I0(\bit_timer_reg_n_0_[13] ),
        .O(bit_timer0_carry__2_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry_i_1__0
       (.I0(\bit_timer_reg_n_0_[4] ),
        .O(bit_timer0_carry_i_1__0_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry_i_2__0
       (.I0(\bit_timer_reg_n_0_[3] ),
        .O(bit_timer0_carry_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry_i_3__0
       (.I0(\bit_timer_reg_n_0_[2] ),
        .O(bit_timer0_carry_i_3__0_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry_i_4__0
       (.I0(\bit_timer_reg_n_0_[1] ),
        .O(bit_timer0_carry_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h00008880))
    \bit_timer[0]_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_timer[15]_i_2_n_0 ),
        .I3(\bit_timer[15]_i_3_n_0 ),
        .I4(\bit_timer_reg_n_0_[0] ),
        .O(bit_timer[0]));
  LUT5 #(
    .INIT(32'h88800000))
    \bit_timer[10]_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_timer[15]_i_2_n_0 ),
        .I3(\bit_timer[15]_i_3_n_0 ),
        .I4(bit_timer0_carry__1_n_6),
        .O(bit_timer[10]));
  LUT5 #(
    .INIT(32'h88800000))
    \bit_timer[11]_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_timer[15]_i_2_n_0 ),
        .I3(\bit_timer[15]_i_3_n_0 ),
        .I4(bit_timer0_carry__1_n_5),
        .O(bit_timer[11]));
  LUT5 #(
    .INIT(32'h88800000))
    \bit_timer[12]_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_timer[15]_i_2_n_0 ),
        .I3(\bit_timer[15]_i_3_n_0 ),
        .I4(bit_timer0_carry__1_n_4),
        .O(bit_timer[12]));
  LUT5 #(
    .INIT(32'h88800000))
    \bit_timer[13]_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_timer[15]_i_2_n_0 ),
        .I3(\bit_timer[15]_i_3_n_0 ),
        .I4(bit_timer0_carry__2_n_7),
        .O(bit_timer[13]));
  LUT5 #(
    .INIT(32'h88800000))
    \bit_timer[14]_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_timer[15]_i_2_n_0 ),
        .I3(\bit_timer[15]_i_3_n_0 ),
        .I4(bit_timer0_carry__2_n_6),
        .O(bit_timer[14]));
  LUT5 #(
    .INIT(32'h88800000))
    \bit_timer[15]_i_1__0
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_timer[15]_i_2_n_0 ),
        .I3(\bit_timer[15]_i_3_n_0 ),
        .I4(bit_timer0_carry__2_n_5),
        .O(bit_timer[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *)
  LUT5 #(
    .INIT(32'hFFFFFFFE))
    \bit_timer[15]_i_2
       (.I0(\FSM_sequential_state[0]_i_5_n_0 ),
        .I1(\bit_timer_reg_n_0_[4] ),
        .I2(\bit_timer_reg_n_0_[0] ),
        .I3(\bit_timer_reg_n_0_[2] ),
        .I4(\bit_timer_reg_n_0_[5] ),
        .O(\bit_timer[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFEFFFF))
    \bit_timer[15]_i_3
       (.I0(\bit_timer_reg_n_0_[10] ),
        .I1(\bit_timer_reg_n_0_[8] ),
        .I2(\bit_timer_reg_n_0_[14] ),
        .I3(\bit_timer_reg_n_0_[15] ),
        .I4(\bit_timer[15]_i_4_n_0 ),
        .O(\bit_timer[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001))
    \bit_timer[15]_i_4
       (.I0(\bit_timer_reg_n_0_[13] ),
        .I1(\bit_timer_reg_n_0_[12] ),
        .I2(\bit_timer_reg_n_0_[11] ),
        .I3(\bit_timer_reg_n_0_[9] ),
        .O(\bit_timer[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *)
  LUT3 #(
    .INIT(8'hBF))
    \bit_timer[1]_i_1
       (.I0(bit_timer0_carry_n_7),
        .I1(state__0[0]),
        .I2(\bit_timer[5]_i_2__0_n_0 ),
        .O(\bit_timer[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88800000))
    \bit_timer[2]_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_timer[15]_i_2_n_0 ),
        .I3(\bit_timer[15]_i_3_n_0 ),
        .I4(bit_timer0_carry_n_6),
        .O(bit_timer[2]));
  (* SOFT_HLUTNM = "soft_lutpair17" *)
  LUT3 #(
    .INIT(8'hBF))
    \bit_timer[3]_i_1
       (.I0(bit_timer0_carry_n_5),
        .I1(state__0[0]),
        .I2(\bit_timer[5]_i_2__0_n_0 ),
        .O(\bit_timer[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88800000))
    \bit_timer[4]_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_timer[15]_i_2_n_0 ),
        .I3(\bit_timer[15]_i_3_n_0 ),
        .I4(bit_timer0_carry_n_4),
        .O(bit_timer[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *)
  LUT3 #(
    .INIT(8'hBF))
    \bit_timer[5]_i_1
       (.I0(bit_timer0_carry__0_n_7),
        .I1(state__0[0]),
        .I2(\bit_timer[5]_i_2__0_n_0 ),
        .O(\bit_timer[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE))
    \bit_timer[5]_i_2__0
       (.I0(\bit_timer[15]_i_3_n_0 ),
        .I1(\bit_timer_reg_n_0_[5] ),
        .I2(\bit_timer_reg_n_0_[2] ),
        .I3(\bit_timer_reg_n_0_[0] ),
        .I4(\bit_timer_reg_n_0_[4] ),
        .I5(\FSM_sequential_state[0]_i_5_n_0 ),
        .O(\bit_timer[5]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h88800000))
    \bit_timer[6]_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_timer[15]_i_2_n_0 ),
        .I3(\bit_timer[15]_i_3_n_0 ),
        .I4(bit_timer0_carry__0_n_6),
        .O(bit_timer[6]));
  LUT5 #(
    .INIT(32'h88800000))
    \bit_timer[7]_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_timer[15]_i_2_n_0 ),
        .I3(\bit_timer[15]_i_3_n_0 ),
        .I4(bit_timer0_carry__0_n_5),
        .O(bit_timer[7]));
  LUT5 #(
    .INIT(32'h88800000))
    \bit_timer[8]_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_timer[15]_i_2_n_0 ),
        .I3(\bit_timer[15]_i_3_n_0 ),
        .I4(bit_timer0_carry__0_n_4),
        .O(bit_timer[8]));
  LUT5 #(
    .INIT(32'h88800000))
    \bit_timer[9]_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\bit_timer[15]_i_2_n_0 ),
        .I3(\bit_timer[15]_i_3_n_0 ),
        .I4(bit_timer0_carry__1_n_7),
        .O(bit_timer[9]));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[0]
       (.C(clk),
        .CE(state__0[1]),
        .D(bit_timer[0]),
        .Q(\bit_timer_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[10]
       (.C(clk),
        .CE(state__0[1]),
        .D(bit_timer[10]),
        .Q(\bit_timer_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[11]
       (.C(clk),
        .CE(state__0[1]),
        .D(bit_timer[11]),
        .Q(\bit_timer_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[12]
       (.C(clk),
        .CE(state__0[1]),
        .D(bit_timer[12]),
        .Q(\bit_timer_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[13]
       (.C(clk),
        .CE(state__0[1]),
        .D(bit_timer[13]),
        .Q(\bit_timer_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[14]
       (.C(clk),
        .CE(state__0[1]),
        .D(bit_timer[14]),
        .Q(\bit_timer_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[15]
       (.C(clk),
        .CE(state__0[1]),
        .D(bit_timer[15]),
        .Q(\bit_timer_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[1]
       (.C(clk),
        .CE(state__0[1]),
        .D(\bit_timer[1]_i_1_n_0 ),
        .Q(\bit_timer_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[2]
       (.C(clk),
        .CE(state__0[1]),
        .D(bit_timer[2]),
        .Q(\bit_timer_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[3]
       (.C(clk),
        .CE(state__0[1]),
        .D(\bit_timer[3]_i_1_n_0 ),
        .Q(\bit_timer_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[4]
       (.C(clk),
        .CE(state__0[1]),
        .D(bit_timer[4]),
        .Q(\bit_timer_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[5]
       (.C(clk),
        .CE(state__0[1]),
        .D(\bit_timer[5]_i_1_n_0 ),
        .Q(\bit_timer_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[6]
       (.C(clk),
        .CE(state__0[1]),
        .D(bit_timer[6]),
        .Q(\bit_timer_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[7]
       (.C(clk),
        .CE(state__0[1]),
        .D(bit_timer[7]),
        .Q(\bit_timer_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[8]
       (.C(clk),
        .CE(state__0[1]),
        .D(bit_timer[8]),
        .Q(\bit_timer_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[9]
       (.C(clk),
        .CE(state__0[1]),
        .D(bit_timer[9]),
        .Q(\bit_timer_reg_n_0_[9] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000100))
    \data_o[7]_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(uartRdValid),
        .I3(\packet_reg_n_0_[9] ),
        .I4(\packet_reg_n_0_[0] ),
        .O(\data_o[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0))
    \data_o_reg[0]
       (.C(clk),
        .CE(\data_o[7]_i_1_n_0 ),
        .D(p_0_in5_in),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \data_o_reg[1]
       (.C(clk),
        .CE(\data_o[7]_i_1_n_0 ),
        .D(\packet_reg_n_0_[2] ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \data_o_reg[2]
       (.C(clk),
        .CE(\data_o[7]_i_1_n_0 ),
        .D(\packet_reg_n_0_[3] ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \data_o_reg[3]
       (.C(clk),
        .CE(\data_o[7]_i_1_n_0 ),
        .D(\packet_reg_n_0_[4] ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \data_o_reg[4]
       (.C(clk),
        .CE(\data_o[7]_i_1_n_0 ),
        .D(\packet_reg_n_0_[5] ),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \data_o_reg[5]
       (.C(clk),
        .CE(\data_o[7]_i_1_n_0 ),
        .D(\packet_reg_n_0_[6] ),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \data_o_reg[6]
       (.C(clk),
        .CE(\data_o[7]_i_1_n_0 ),
        .D(\packet_reg_n_0_[7] ),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \data_o_reg[7]
       (.C(clk),
        .CE(\data_o[7]_i_1_n_0 ),
        .D(\packet_reg_n_0_[8] ),
        .Q(Q[7]),
        .R(SR));
  LUT6 #(
    .INIT(64'hFDFD8DFD00008000))
    \packet[0]_i_1
       (.I0(state__0[1]),
        .I1(UART_rx),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\FSM_sequential_state[1]_inv_i_2_n_0 ),
        .I5(\packet_reg_n_0_[0] ),
        .O(\packet[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFD80FDFD00800000))
    \packet[1]_i_1
       (.I0(state__0[1]),
        .I1(UART_rx),
        .I2(state__0[0]),
        .I3(\packet[3]_i_2_n_0 ),
        .I4(\packet[9]_i_3_n_0 ),
        .I5(p_0_in5_in),
        .O(\packet[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888))
    \packet[2]_i_1
       (.I0(\packet[7]_i_2_n_0 ),
        .I1(\packet[7]_i_3_n_0 ),
        .I2(\packet[3]_i_2_n_0 ),
        .I3(\packet[6]_i_2_n_0 ),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(\packet_reg_n_0_[2] ),
        .O(\packet[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBABBBB888A8888))
    \packet[3]_i_1
       (.I0(\packet[7]_i_2_n_0 ),
        .I1(\packet[7]_i_3_n_0 ),
        .I2(\packet[3]_i_2_n_0 ),
        .I3(\packet[7]_i_4_n_0 ),
        .I4(\FSM_sequential_state[0]_i_2_n_0 ),
        .I5(\packet_reg_n_0_[3] ),
        .O(\packet[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE))
    \packet[3]_i_2
       (.I0(\select_packet_bit_reg_n_0_[2] ),
        .I1(\select_packet_bit_reg_n_0_[5] ),
        .I2(\select_packet_bit_reg_n_0_[4] ),
        .I3(\select_packet_bit_reg_n_0_[3] ),
        .O(\packet[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDDD00000080))
    \packet[4]_i_1
       (.I0(state__0[1]),
        .I1(UART_rx),
        .I2(state__0[0]),
        .I3(\packet[4]_i_2_n_0 ),
        .I4(\packet[8]_i_3_n_0 ),
        .I5(\packet_reg_n_0_[4] ),
        .O(\packet[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF))
    \packet[4]_i_2
       (.I0(\select_packet_bit_reg_n_0_[0] ),
        .I1(\select_packet_bit_reg_n_0_[1] ),
        .I2(\select_packet_bit_reg_n_0_[2] ),
        .I3(\select_packet_bit_reg_n_0_[3] ),
        .I4(\select_packet_bit_reg_n_0_[4] ),
        .I5(\select_packet_bit_reg_n_0_[5] ),
        .O(\packet[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFD80FDFD00800000))
    \packet[5]_i_1
       (.I0(state__0[1]),
        .I1(UART_rx),
        .I2(state__0[0]),
        .I3(\packet[7]_i_5_n_0 ),
        .I4(\packet[9]_i_3_n_0 ),
        .I5(\packet_reg_n_0_[5] ),
        .O(\packet[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88))
    \packet[6]_i_1
       (.I0(\packet[7]_i_2_n_0 ),
        .I1(\packet[7]_i_3_n_0 ),
        .I2(\packet[6]_i_2_n_0 ),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\packet[7]_i_5_n_0 ),
        .I5(\packet_reg_n_0_[6] ),
        .O(\packet[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *)
  LUT3 #(
    .INIT(8'hBF))
    \packet[6]_i_2
       (.I0(\select_packet_bit_reg_n_0_[0] ),
        .I1(\select_packet_bit_reg_n_0_[1] ),
        .I2(state__0[0]),
        .O(\packet[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBABB88888A88))
    \packet[7]_i_1
       (.I0(\packet[7]_i_2_n_0 ),
        .I1(\packet[7]_i_3_n_0 ),
        .I2(\packet[7]_i_4_n_0 ),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\packet[7]_i_5_n_0 ),
        .I5(\packet_reg_n_0_[7] ),
        .O(\packet[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *)
  LUT3 #(
    .INIT(8'h80))
    \packet[7]_i_2
       (.I0(UART_rx),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\packet[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *)
  LUT3 #(
    .INIT(8'h10))
    \packet[7]_i_3
       (.I0(state__0[0]),
        .I1(UART_rx),
        .I2(state__0[1]),
        .O(\packet[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *)
  LUT3 #(
    .INIT(8'h7F))
    \packet[7]_i_4
       (.I0(\select_packet_bit_reg_n_0_[0] ),
        .I1(\select_packet_bit_reg_n_0_[1] ),
        .I2(state__0[0]),
        .O(\packet[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *)
  LUT4 #(
    .INIT(16'hFEFF))
    \packet[7]_i_5
       (.I0(\select_packet_bit_reg_n_0_[5] ),
        .I1(\select_packet_bit_reg_n_0_[4] ),
        .I2(\select_packet_bit_reg_n_0_[3] ),
        .I3(\select_packet_bit_reg_n_0_[2] ),
        .O(\packet[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDDD00000080))
    \packet[8]_i_1
       (.I0(state__0[1]),
        .I1(UART_rx),
        .I2(state__0[0]),
        .I3(\packet[8]_i_2_n_0 ),
        .I4(\packet[8]_i_3_n_0 ),
        .I5(\packet_reg_n_0_[8] ),
        .O(\packet[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF))
    \packet[8]_i_2
       (.I0(\select_packet_bit_reg_n_0_[0] ),
        .I1(\select_packet_bit_reg_n_0_[1] ),
        .I2(\select_packet_bit_reg_n_0_[3] ),
        .I3(\select_packet_bit_reg_n_0_[2] ),
        .I4(\select_packet_bit_reg_n_0_[4] ),
        .I5(\select_packet_bit_reg_n_0_[5] ),
        .O(\packet[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF))
    \packet[8]_i_3
       (.I0(\bit_timer[15]_i_3_n_0 ),
        .I1(\bit_timer_reg_n_0_[4] ),
        .I2(\bit_timer_reg_n_0_[5] ),
        .I3(\bit_timer_reg_n_0_[0] ),
        .I4(\bit_timer_reg_n_0_[2] ),
        .I5(\FSM_sequential_state[0]_i_5_n_0 ),
        .O(\packet[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFD80FDFD00800000))
    \packet[9]_i_1
       (.I0(state__0[1]),
        .I1(UART_rx),
        .I2(state__0[0]),
        .I3(\packet[9]_i_2_n_0 ),
        .I4(\packet[9]_i_3_n_0 ),
        .I5(\packet_reg_n_0_[9] ),
        .O(\packet[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *)
  LUT4 #(
    .INIT(16'hFEFF))
    \packet[9]_i_2
       (.I0(\select_packet_bit_reg_n_0_[5] ),
        .I1(\select_packet_bit_reg_n_0_[4] ),
        .I2(\select_packet_bit_reg_n_0_[2] ),
        .I3(\select_packet_bit_reg_n_0_[3] ),
        .O(\packet[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *)
  LUT5 #(
    .INIT(32'h00100000))
    \packet[9]_i_3
       (.I0(\packet[9]_i_4_n_0 ),
        .I1(\bit_timer[15]_i_3_n_0 ),
        .I2(\select_packet_bit_reg_n_0_[0] ),
        .I3(\select_packet_bit_reg_n_0_[1] ),
        .I4(state__0[0]),
        .O(\packet[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF))
    \packet[9]_i_4
       (.I0(\FSM_sequential_state[0]_i_5_n_0 ),
        .I1(\bit_timer_reg_n_0_[4] ),
        .I2(\bit_timer_reg_n_0_[5] ),
        .I3(\bit_timer_reg_n_0_[2] ),
        .I4(state__0[1]),
        .I5(\bit_timer_reg_n_0_[0] ),
        .O(\packet[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0))
    \packet_reg[0]
       (.C(clk),
        .CE(1'b1),
        .D(\packet[0]_i_1_n_0 ),
        .Q(\packet_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \packet_reg[1]
       (.C(clk),
        .CE(1'b1),
        .D(\packet[1]_i_1_n_0 ),
        .Q(p_0_in5_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \packet_reg[2]
       (.C(clk),
        .CE(1'b1),
        .D(\packet[2]_i_1_n_0 ),
        .Q(\packet_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \packet_reg[3]
       (.C(clk),
        .CE(1'b1),
        .D(\packet[3]_i_1_n_0 ),
        .Q(\packet_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \packet_reg[4]
       (.C(clk),
        .CE(1'b1),
        .D(\packet[4]_i_1_n_0 ),
        .Q(\packet_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \packet_reg[5]
       (.C(clk),
        .CE(1'b1),
        .D(\packet[5]_i_1_n_0 ),
        .Q(\packet_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \packet_reg[6]
       (.C(clk),
        .CE(1'b1),
        .D(\packet[6]_i_1_n_0 ),
        .Q(\packet_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \packet_reg[7]
       (.C(clk),
        .CE(1'b1),
        .D(\packet[7]_i_1_n_0 ),
        .Q(\packet_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \packet_reg[8]
       (.C(clk),
        .CE(1'b1),
        .D(\packet[8]_i_1_n_0 ),
        .Q(\packet_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \packet_reg[9]
       (.C(clk),
        .CE(1'b1),
        .D(\packet[9]_i_1_n_0 ),
        .Q(\packet_reg_n_0_[9] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h0F000002))
    ready_o_i_1
       (.I0(\packet_reg_n_0_[9] ),
        .I1(\packet_reg_n_0_[0] ),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(uartRdValid),
        .O(ready_o_i_1_n_0));
  FDRE #(
    .INIT(1'b0))
    ready_o_reg
       (.C(clk),
        .CE(1'b1),
        .D(ready_o_i_1_n_0),
        .Q(uartRdValid),
        .R(SR));
  LUT1 #(
    .INIT(2'h1))
    s_axi_bvalid_i_1
       (.I0(aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair16" *)
  LUT3 #(
    .INIT(8'h40))
    \select_packet_bit[0]_i_1__0
       (.I0(\select_packet_bit_reg_n_0_[0] ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\select_packet_bit[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *)
  LUT4 #(
    .INIT(16'h6000))
    \select_packet_bit[1]_i_1__0
       (.I0(\select_packet_bit_reg_n_0_[1] ),
        .I1(\select_packet_bit_reg_n_0_[0] ),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(select_packet_bit));
  (* SOFT_HLUTNM = "soft_lutpair10" *)
  LUT5 #(
    .INIT(32'h08808080))
    \select_packet_bit[2]_i_1__0
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\select_packet_bit_reg_n_0_[2] ),
        .I3(\select_packet_bit_reg_n_0_[0] ),
        .I4(\select_packet_bit_reg_n_0_[1] ),
        .O(\select_packet_bit[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0880808080808080))
    \select_packet_bit[3]_i_1__0
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\select_packet_bit_reg_n_0_[3] ),
        .I3(\select_packet_bit_reg_n_0_[2] ),
        .I4(\select_packet_bit_reg_n_0_[1] ),
        .I5(\select_packet_bit_reg_n_0_[0] ),
        .O(\select_packet_bit[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8008808080808080))
    \select_packet_bit[4]_i_1
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\select_packet_bit_reg_n_0_[4] ),
        .I3(\select_packet_bit[4]_i_2_n_0 ),
        .I4(\select_packet_bit_reg_n_0_[2] ),
        .I5(\select_packet_bit_reg_n_0_[3] ),
        .O(\select_packet_bit[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7))
    \select_packet_bit[4]_i_2
       (.I0(\select_packet_bit_reg_n_0_[1] ),
        .I1(\select_packet_bit_reg_n_0_[0] ),
        .O(\select_packet_bit[4]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF4))
    \select_packet_bit[5]_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\select_packet_bit[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h28880000))
    \select_packet_bit[5]_i_2
       (.I0(state__0[1]),
        .I1(\select_packet_bit_reg_n_0_[5] ),
        .I2(\select_packet_bit_reg_n_0_[4] ),
        .I3(\select_packet_bit[5]_i_3_n_0 ),
        .I4(state__0[0]),
        .O(\select_packet_bit[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *)
  LUT4 #(
    .INIT(16'h8000))
    \select_packet_bit[5]_i_3
       (.I0(\select_packet_bit_reg_n_0_[3] ),
        .I1(\select_packet_bit_reg_n_0_[2] ),
        .I2(\select_packet_bit_reg_n_0_[1] ),
        .I3(\select_packet_bit_reg_n_0_[0] ),
        .O(\select_packet_bit[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0))
    \select_packet_bit_reg[0]
       (.C(clk),
        .CE(\select_packet_bit[5]_i_1_n_0 ),
        .D(\select_packet_bit[0]_i_1__0_n_0 ),
        .Q(\select_packet_bit_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \select_packet_bit_reg[1]
       (.C(clk),
        .CE(\select_packet_bit[5]_i_1_n_0 ),
        .D(select_packet_bit),
        .Q(\select_packet_bit_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \select_packet_bit_reg[2]
       (.C(clk),
        .CE(\select_packet_bit[5]_i_1_n_0 ),
        .D(\select_packet_bit[2]_i_1__0_n_0 ),
        .Q(\select_packet_bit_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \select_packet_bit_reg[3]
       (.C(clk),
        .CE(\select_packet_bit[5]_i_1_n_0 ),
        .D(\select_packet_bit[3]_i_1__0_n_0 ),
        .Q(\select_packet_bit_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \select_packet_bit_reg[4]
       (.C(clk),
        .CE(\select_packet_bit[5]_i_1_n_0 ),
        .D(\select_packet_bit[4]_i_1_n_0 ),
        .Q(\select_packet_bit_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \select_packet_bit_reg[5]
       (.C(clk),
        .CE(\select_packet_bit[5]_i_1_n_0 ),
        .D(\select_packet_bit[5]_i_2_n_0 ),
        .Q(\select_packet_bit_reg_n_0_[5] ),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "UartTx" *)
module axi_map_UART8250Lite_0_0_UartTx
   (UART_tx,
    \FSM_onehot_state_reg[1]_0 ,
    SR,
    clk,
    aresetn,
    uartWr,
    D);
  output UART_tx;
  output \FSM_onehot_state_reg[1]_0 ;
  input [0:0]SR;
  input clk;
  input aresetn;
  input uartWr;
  input [7:0]D;

  wire [7:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_2_n_0 ;
  wire \FSM_onehot_state[2]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[1]_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire [0:0]SR;
  wire UART_tx;
  wire aresetn;
  wire [15:1]bit_timer0;
  wire bit_timer0_carry__0_i_1_n_0;
  wire bit_timer0_carry__0_i_2_n_0;
  wire bit_timer0_carry__0_i_3_n_0;
  wire bit_timer0_carry__0_i_4_n_0;
  wire bit_timer0_carry__0_n_0;
  wire bit_timer0_carry__0_n_1;
  wire bit_timer0_carry__0_n_2;
  wire bit_timer0_carry__0_n_3;
  wire bit_timer0_carry__1_i_1_n_0;
  wire bit_timer0_carry__1_i_2_n_0;
  wire bit_timer0_carry__1_i_3_n_0;
  wire bit_timer0_carry__1_i_4_n_0;
  wire bit_timer0_carry__1_n_0;
  wire bit_timer0_carry__1_n_1;
  wire bit_timer0_carry__1_n_2;
  wire bit_timer0_carry__1_n_3;
  wire bit_timer0_carry__2_i_1_n_0;
  wire bit_timer0_carry__2_i_2_n_0;
  wire bit_timer0_carry__2_i_3_n_0;
  wire bit_timer0_carry__2_n_2;
  wire bit_timer0_carry__2_n_3;
  wire bit_timer0_carry_i_1_n_0;
  wire bit_timer0_carry_i_2_n_0;
  wire bit_timer0_carry_i_3_n_0;
  wire bit_timer0_carry_i_4_n_0;
  wire bit_timer0_carry_n_0;
  wire bit_timer0_carry_n_1;
  wire bit_timer0_carry_n_2;
  wire bit_timer0_carry_n_3;
  wire \bit_timer[0]_i_1__0_n_0 ;
  wire \bit_timer[10]_i_1__0_n_0 ;
  wire \bit_timer[11]_i_1__0_n_0 ;
  wire \bit_timer[12]_i_1__0_n_0 ;
  wire \bit_timer[13]_i_1__0_n_0 ;
  wire \bit_timer[14]_i_1__0_n_0 ;
  wire \bit_timer[15]_i_1_n_0 ;
  wire \bit_timer[15]_i_2__0_n_0 ;
  wire \bit_timer[1]_i_1_n_0 ;
  wire \bit_timer[2]_i_1__0_n_0 ;
  wire \bit_timer[3]_i_1_n_0 ;
  wire \bit_timer[4]_i_1__0_n_0 ;
  wire \bit_timer[5]_i_1_n_0 ;
  wire \bit_timer[5]_i_2_n_0 ;
  wire \bit_timer[5]_i_3_n_0 ;
  wire \bit_timer[6]_i_1__0_n_0 ;
  wire \bit_timer[7]_i_1__0_n_0 ;
  wire \bit_timer[8]_i_1__0_n_0 ;
  wire \bit_timer[9]_i_1__0_n_0 ;
  wire \bit_timer_reg_n_0_[0] ;
  wire \bit_timer_reg_n_0_[10] ;
  wire \bit_timer_reg_n_0_[11] ;
  wire \bit_timer_reg_n_0_[12] ;
  wire \bit_timer_reg_n_0_[13] ;
  wire \bit_timer_reg_n_0_[14] ;
  wire \bit_timer_reg_n_0_[15] ;
  wire \bit_timer_reg_n_0_[1] ;
  wire \bit_timer_reg_n_0_[2] ;
  wire \bit_timer_reg_n_0_[3] ;
  wire \bit_timer_reg_n_0_[4] ;
  wire \bit_timer_reg_n_0_[5] ;
  wire \bit_timer_reg_n_0_[6] ;
  wire \bit_timer_reg_n_0_[7] ;
  wire \bit_timer_reg_n_0_[8] ;
  wire \bit_timer_reg_n_0_[9] ;
  wire clk;
  wire data;
  wire \data_reg_n_0_[0] ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_0_in3_in;
  wire p_0_in4_in;
  wire p_1_in;
  wire [1:0]select_packet_bit;
  wire \select_packet_bit[2]_i_1_n_0 ;
  wire \select_packet_bit[3]_i_1_n_0 ;
  wire \select_packet_bit[3]_i_2_n_0 ;
  wire \select_packet_bit[3]_i_3_n_0 ;
  wire \select_packet_bit[3]_i_4_n_0 ;
  wire \select_packet_bit[3]_i_5_n_0 ;
  wire \select_packet_bit[3]_i_6_n_0 ;
  wire \select_packet_bit[3]_i_7_n_0 ;
  wire \select_packet_bit_reg_n_0_[0] ;
  wire \select_packet_bit_reg_n_0_[1] ;
  wire \select_packet_bit_reg_n_0_[2] ;
  wire \select_packet_bit_reg_n_0_[3] ;
  wire serial_o_i_1_n_0;
  wire serial_o_i_2_n_0;
  wire serial_o_i_3_n_0;
  wire serial_o_i_5_n_0;
  wire serial_o_i_6_n_0;
  wire serial_o_reg_i_4_n_0;
  wire uartWr;
  wire write_has_triggered_i_1_n_0;
  wire write_has_triggered_reg_n_0;
  wire [3:2]NLW_bit_timer0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_bit_timer0_carry__2_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00A20000))
    \FSM_onehot_state[0]_i_1
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state[2]_i_3_n_0 ),
        .I3(data),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFFFFFCFC44F4))
    \FSM_onehot_state[1]_i_1
       (.I0(\FSM_onehot_state[2]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state[2]_i_3_n_0 ),
        .I4(data),
        .I5(\FSM_onehot_state_reg[1]_0 ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAEF20AA20))
    \FSM_onehot_state[2]_i_1
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state[2]_i_3_n_0 ),
        .I5(data),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h7F))
    \FSM_onehot_state[2]_i_2
       (.I0(\select_packet_bit_reg_n_0_[2] ),
        .I1(\select_packet_bit_reg_n_0_[3] ),
        .I2(\select_packet_bit[3]_i_3_n_0 ),
        .O(\FSM_onehot_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *)
  LUT3 #(
    .INIT(8'h1F))
    \FSM_onehot_state[2]_i_3
       (.I0(\select_packet_bit_reg_n_0_[2] ),
        .I1(\select_packet_bit_reg_n_0_[1] ),
        .I2(\select_packet_bit_reg_n_0_[3] ),
        .O(\FSM_onehot_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "STATE_POST_RESET:001,STATE_IDLE:010,STATE_SEND_PACKET:100," *)
  FDSE #(
    .INIT(1'b1))
    \FSM_onehot_state_reg[0]
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "STATE_POST_RESET:001,STATE_IDLE:010,STATE_SEND_PACKET:100," *)
  FDRE #(
    .INIT(1'b0))
    \FSM_onehot_state_reg[1]
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg[1]_0 ),
        .R(SR));
  (* FSM_ENCODED_STATES = "STATE_POST_RESET:001,STATE_IDLE:010,STATE_SEND_PACKET:100," *)
  FDRE #(
    .INIT(1'b0))
    \FSM_onehot_state_reg[2]
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(SR));
  (* ADDER_THRESHOLD = "35" *)
  CARRY4 bit_timer0_carry
       (.CI(1'b0),
        .CO({bit_timer0_carry_n_0,bit_timer0_carry_n_1,bit_timer0_carry_n_2,bit_timer0_carry_n_3}),
        .CYINIT(\bit_timer_reg_n_0_[0] ),
        .DI({\bit_timer_reg_n_0_[4] ,\bit_timer_reg_n_0_[3] ,\bit_timer_reg_n_0_[2] ,\bit_timer_reg_n_0_[1] }),
        .O(bit_timer0[4:1]),
        .S({bit_timer0_carry_i_1_n_0,bit_timer0_carry_i_2_n_0,bit_timer0_carry_i_3_n_0,bit_timer0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *)
  CARRY4 bit_timer0_carry__0
       (.CI(bit_timer0_carry_n_0),
        .CO({bit_timer0_carry__0_n_0,bit_timer0_carry__0_n_1,bit_timer0_carry__0_n_2,bit_timer0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({\bit_timer_reg_n_0_[8] ,\bit_timer_reg_n_0_[7] ,\bit_timer_reg_n_0_[6] ,\bit_timer_reg_n_0_[5] }),
        .O(bit_timer0[8:5]),
        .S({bit_timer0_carry__0_i_1_n_0,bit_timer0_carry__0_i_2_n_0,bit_timer0_carry__0_i_3_n_0,bit_timer0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__0_i_1
       (.I0(\bit_timer_reg_n_0_[8] ),
        .O(bit_timer0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__0_i_2
       (.I0(\bit_timer_reg_n_0_[7] ),
        .O(bit_timer0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__0_i_3
       (.I0(\bit_timer_reg_n_0_[6] ),
        .O(bit_timer0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__0_i_4
       (.I0(\bit_timer_reg_n_0_[5] ),
        .O(bit_timer0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *)
  CARRY4 bit_timer0_carry__1
       (.CI(bit_timer0_carry__0_n_0),
        .CO({bit_timer0_carry__1_n_0,bit_timer0_carry__1_n_1,bit_timer0_carry__1_n_2,bit_timer0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({\bit_timer_reg_n_0_[12] ,\bit_timer_reg_n_0_[11] ,\bit_timer_reg_n_0_[10] ,\bit_timer_reg_n_0_[9] }),
        .O(bit_timer0[12:9]),
        .S({bit_timer0_carry__1_i_1_n_0,bit_timer0_carry__1_i_2_n_0,bit_timer0_carry__1_i_3_n_0,bit_timer0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__1_i_1
       (.I0(\bit_timer_reg_n_0_[12] ),
        .O(bit_timer0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__1_i_2
       (.I0(\bit_timer_reg_n_0_[11] ),
        .O(bit_timer0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__1_i_3
       (.I0(\bit_timer_reg_n_0_[10] ),
        .O(bit_timer0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__1_i_4
       (.I0(\bit_timer_reg_n_0_[9] ),
        .O(bit_timer0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *)
  CARRY4 bit_timer0_carry__2
       (.CI(bit_timer0_carry__1_n_0),
        .CO({NLW_bit_timer0_carry__2_CO_UNCONNECTED[3:2],bit_timer0_carry__2_n_2,bit_timer0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\bit_timer_reg_n_0_[14] ,\bit_timer_reg_n_0_[13] }),
        .O({NLW_bit_timer0_carry__2_O_UNCONNECTED[3],bit_timer0[15:13]}),
        .S({1'b0,bit_timer0_carry__2_i_1_n_0,bit_timer0_carry__2_i_2_n_0,bit_timer0_carry__2_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__2_i_1
       (.I0(\bit_timer_reg_n_0_[15] ),
        .O(bit_timer0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__2_i_2
       (.I0(\bit_timer_reg_n_0_[14] ),
        .O(bit_timer0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry__2_i_3
       (.I0(\bit_timer_reg_n_0_[13] ),
        .O(bit_timer0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry_i_1
       (.I0(\bit_timer_reg_n_0_[4] ),
        .O(bit_timer0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry_i_2
       (.I0(\bit_timer_reg_n_0_[3] ),
        .O(bit_timer0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry_i_3
       (.I0(\bit_timer_reg_n_0_[2] ),
        .O(bit_timer0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1))
    bit_timer0_carry_i_4
       (.I0(\bit_timer_reg_n_0_[1] ),
        .O(bit_timer0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'h10101000))
    \bit_timer[0]_i_1__0
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(\bit_timer_reg_n_0_[0] ),
        .I2(aresetn),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_timer[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h40404000))
    \bit_timer[10]_i_1__0
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(bit_timer0[10]),
        .I2(aresetn),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_timer[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h40404000))
    \bit_timer[11]_i_1__0
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(bit_timer0[11]),
        .I2(aresetn),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_timer[11]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h40404000))
    \bit_timer[12]_i_1__0
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(bit_timer0[12]),
        .I2(aresetn),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_timer[12]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h40404000))
    \bit_timer[13]_i_1__0
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(bit_timer0[13]),
        .I2(aresetn),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_timer[13]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h40404000))
    \bit_timer[14]_i_1__0
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(bit_timer0[14]),
        .I2(aresetn),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_timer[14]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7F00FFFF))
    \bit_timer[15]_i_1
       (.I0(\select_packet_bit_reg_n_0_[2] ),
        .I1(\select_packet_bit_reg_n_0_[3] ),
        .I2(\select_packet_bit[3]_i_3_n_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(aresetn),
        .I5(serial_o_i_3_n_0),
        .O(\bit_timer[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *)
  LUT5 #(
    .INIT(32'h40404000))
    \bit_timer[15]_i_2__0
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(bit_timer0[15]),
        .I2(aresetn),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_timer[15]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAFEFFFFAAFE0000))
    \bit_timer[1]_i_1
       (.I0(\bit_timer[5]_i_3_n_0 ),
        .I1(\select_packet_bit[3]_i_3_n_0 ),
        .I2(bit_timer0[1]),
        .I3(\bit_timer[5]_i_2_n_0 ),
        .I4(\bit_timer[15]_i_1_n_0 ),
        .I5(\bit_timer_reg_n_0_[1] ),
        .O(\bit_timer[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40404000))
    \bit_timer[2]_i_1__0
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(bit_timer0[2]),
        .I2(aresetn),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_timer[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAFEFFFFAAFE0000))
    \bit_timer[3]_i_1
       (.I0(\bit_timer[5]_i_3_n_0 ),
        .I1(\select_packet_bit[3]_i_3_n_0 ),
        .I2(bit_timer0[3]),
        .I3(\bit_timer[5]_i_2_n_0 ),
        .I4(\bit_timer[15]_i_1_n_0 ),
        .I5(\bit_timer_reg_n_0_[3] ),
        .O(\bit_timer[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40404000))
    \bit_timer[4]_i_1__0
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(bit_timer0[4]),
        .I2(aresetn),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_timer[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF0EFFFFFF0E0000))
    \bit_timer[5]_i_1
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(bit_timer0[5]),
        .I2(\bit_timer[5]_i_2_n_0 ),
        .I3(\bit_timer[5]_i_3_n_0 ),
        .I4(\bit_timer[15]_i_1_n_0 ),
        .I5(\bit_timer_reg_n_0_[5] ),
        .O(\bit_timer[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *)
  LUT2 #(
    .INIT(4'h1))
    \bit_timer[5]_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_timer[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *)
  LUT2 #(
    .INIT(4'hB))
    \bit_timer[5]_i_3
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(aresetn),
        .O(\bit_timer[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h40404000))
    \bit_timer[6]_i_1__0
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(bit_timer0[6]),
        .I2(aresetn),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_timer[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h40404000))
    \bit_timer[7]_i_1__0
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(bit_timer0[7]),
        .I2(aresetn),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_timer[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h40404000))
    \bit_timer[8]_i_1__0
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(bit_timer0[8]),
        .I2(aresetn),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_timer[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h40404000))
    \bit_timer[9]_i_1__0
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(bit_timer0[9]),
        .I2(aresetn),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\bit_timer[9]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[0]
       (.C(clk),
        .CE(\bit_timer[15]_i_1_n_0 ),
        .D(\bit_timer[0]_i_1__0_n_0 ),
        .Q(\bit_timer_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[10]
       (.C(clk),
        .CE(\bit_timer[15]_i_1_n_0 ),
        .D(\bit_timer[10]_i_1__0_n_0 ),
        .Q(\bit_timer_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[11]
       (.C(clk),
        .CE(\bit_timer[15]_i_1_n_0 ),
        .D(\bit_timer[11]_i_1__0_n_0 ),
        .Q(\bit_timer_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[12]
       (.C(clk),
        .CE(\bit_timer[15]_i_1_n_0 ),
        .D(\bit_timer[12]_i_1__0_n_0 ),
        .Q(\bit_timer_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[13]
       (.C(clk),
        .CE(\bit_timer[15]_i_1_n_0 ),
        .D(\bit_timer[13]_i_1__0_n_0 ),
        .Q(\bit_timer_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[14]
       (.C(clk),
        .CE(\bit_timer[15]_i_1_n_0 ),
        .D(\bit_timer[14]_i_1__0_n_0 ),
        .Q(\bit_timer_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[15]
       (.C(clk),
        .CE(\bit_timer[15]_i_1_n_0 ),
        .D(\bit_timer[15]_i_2__0_n_0 ),
        .Q(\bit_timer_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[1]
       (.C(clk),
        .CE(1'b1),
        .D(\bit_timer[1]_i_1_n_0 ),
        .Q(\bit_timer_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[2]
       (.C(clk),
        .CE(\bit_timer[15]_i_1_n_0 ),
        .D(\bit_timer[2]_i_1__0_n_0 ),
        .Q(\bit_timer_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[3]
       (.C(clk),
        .CE(1'b1),
        .D(\bit_timer[3]_i_1_n_0 ),
        .Q(\bit_timer_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[4]
       (.C(clk),
        .CE(\bit_timer[15]_i_1_n_0 ),
        .D(\bit_timer[4]_i_1__0_n_0 ),
        .Q(\bit_timer_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[5]
       (.C(clk),
        .CE(1'b1),
        .D(\bit_timer[5]_i_1_n_0 ),
        .Q(\bit_timer_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[6]
       (.C(clk),
        .CE(\bit_timer[15]_i_1_n_0 ),
        .D(\bit_timer[6]_i_1__0_n_0 ),
        .Q(\bit_timer_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[7]
       (.C(clk),
        .CE(\bit_timer[15]_i_1_n_0 ),
        .D(\bit_timer[7]_i_1__0_n_0 ),
        .Q(\bit_timer_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[8]
       (.C(clk),
        .CE(\bit_timer[15]_i_1_n_0 ),
        .D(\bit_timer[8]_i_1__0_n_0 ),
        .Q(\bit_timer_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0))
    \bit_timer_reg[9]
       (.C(clk),
        .CE(\bit_timer[15]_i_1_n_0 ),
        .D(\bit_timer[9]_i_1__0_n_0 ),
        .Q(\bit_timer_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0080))
    \data[7]_i_1
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(aresetn),
        .I2(uartWr),
        .I3(write_has_triggered_reg_n_0),
        .O(data));
  FDRE #(
    .INIT(1'b0))
    \data_reg[0]
       (.C(clk),
        .CE(data),
        .D(D[0]),
        .Q(\data_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \data_reg[1]
       (.C(clk),
        .CE(data),
        .D(D[1]),
        .Q(p_0_in4_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \data_reg[2]
       (.C(clk),
        .CE(data),
        .D(D[2]),
        .Q(p_0_in3_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \data_reg[3]
       (.C(clk),
        .CE(data),
        .D(D[3]),
        .Q(p_0_in2_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \data_reg[4]
       (.C(clk),
        .CE(data),
        .D(D[4]),
        .Q(p_0_in1_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \data_reg[5]
       (.C(clk),
        .CE(data),
        .D(D[5]),
        .Q(p_0_in0_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \data_reg[6]
       (.C(clk),
        .CE(data),
        .D(D[6]),
        .Q(p_0_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \data_reg[7]
       (.C(clk),
        .CE(data),
        .D(D[7]),
        .Q(p_1_in),
        .R(SR));
  LUT3 #(
    .INIT(8'h54))
    \select_packet_bit[0]_i_1
       (.I0(\select_packet_bit_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .O(select_packet_bit[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *)
  LUT4 #(
    .INIT(16'h6660))
    \select_packet_bit[1]_i_1
       (.I0(\select_packet_bit_reg_n_0_[0] ),
        .I1(\select_packet_bit_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .O(select_packet_bit[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *)
  LUT5 #(
    .INIT(32'h0EEEE000))
    \select_packet_bit[2]_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\select_packet_bit_reg_n_0_[1] ),
        .I3(\select_packet_bit_reg_n_0_[0] ),
        .I4(\select_packet_bit_reg_n_0_[2] ),
        .O(\select_packet_bit[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0EEEEEEE0E0E0E0))
    \select_packet_bit[3]_i_1
       (.I0(\select_packet_bit[3]_i_3_n_0 ),
        .I1(\FSM_onehot_state_reg[1]_0 ),
        .I2(serial_o_i_3_n_0),
        .I3(\select_packet_bit_reg_n_0_[2] ),
        .I4(\select_packet_bit_reg_n_0_[3] ),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\select_packet_bit[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0EEEEEEEE0000000))
    \select_packet_bit[3]_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\select_packet_bit_reg_n_0_[2] ),
        .I3(\select_packet_bit_reg_n_0_[0] ),
        .I4(\select_packet_bit_reg_n_0_[1] ),
        .I5(\select_packet_bit_reg_n_0_[3] ),
        .O(\select_packet_bit[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004))
    \select_packet_bit[3]_i_3
       (.I0(\select_packet_bit[3]_i_4_n_0 ),
        .I1(\select_packet_bit[3]_i_5_n_0 ),
        .I2(\select_packet_bit[3]_i_6_n_0 ),
        .I3(\select_packet_bit[3]_i_7_n_0 ),
        .O(\select_packet_bit[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE))
    \select_packet_bit[3]_i_4
       (.I0(\bit_timer_reg_n_0_[15] ),
        .I1(\bit_timer_reg_n_0_[14] ),
        .I2(\bit_timer_reg_n_0_[13] ),
        .I3(\bit_timer_reg_n_0_[12] ),
        .O(\select_packet_bit[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0001))
    \select_packet_bit[3]_i_5
       (.I0(\bit_timer_reg_n_0_[11] ),
        .I1(\bit_timer_reg_n_0_[8] ),
        .I2(\bit_timer_reg_n_0_[9] ),
        .I3(\bit_timer_reg_n_0_[10] ),
        .O(\select_packet_bit[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE))
    \select_packet_bit[3]_i_6
       (.I0(\bit_timer_reg_n_0_[5] ),
        .I1(\bit_timer_reg_n_0_[6] ),
        .I2(\bit_timer_reg_n_0_[4] ),
        .I3(\bit_timer_reg_n_0_[7] ),
        .O(\select_packet_bit[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE))
    \select_packet_bit[3]_i_7
       (.I0(\bit_timer_reg_n_0_[2] ),
        .I1(\bit_timer_reg_n_0_[3] ),
        .I2(\bit_timer_reg_n_0_[0] ),
        .I3(\bit_timer_reg_n_0_[1] ),
        .O(\select_packet_bit[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0))
    \select_packet_bit_reg[0]
       (.C(clk),
        .CE(\select_packet_bit[3]_i_1_n_0 ),
        .D(select_packet_bit[0]),
        .Q(\select_packet_bit_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \select_packet_bit_reg[1]
       (.C(clk),
        .CE(\select_packet_bit[3]_i_1_n_0 ),
        .D(select_packet_bit[1]),
        .Q(\select_packet_bit_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \select_packet_bit_reg[2]
       (.C(clk),
        .CE(\select_packet_bit[3]_i_1_n_0 ),
        .D(\select_packet_bit[2]_i_1_n_0 ),
        .Q(\select_packet_bit_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0))
    \select_packet_bit_reg[3]
       (.C(clk),
        .CE(\select_packet_bit[3]_i_1_n_0 ),
        .D(\select_packet_bit[3]_i_2_n_0 ),
        .Q(\select_packet_bit_reg_n_0_[3] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair22" *)
  LUT4 #(
    .INIT(16'hEFE0))
    serial_o_i_1
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(serial_o_i_2_n_0),
        .I2(serial_o_i_3_n_0),
        .I3(UART_tx),
        .O(serial_o_i_1_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEE200000000))
    serial_o_i_2
       (.I0(serial_o_reg_i_4_n_0),
        .I1(\select_packet_bit_reg_n_0_[3] ),
        .I2(\select_packet_bit_reg_n_0_[1] ),
        .I3(\select_packet_bit_reg_n_0_[0] ),
        .I4(p_1_in),
        .I5(\FSM_onehot_state_reg_n_0_[2] ),
        .O(serial_o_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *)
  LUT5 #(
    .INIT(32'hAAAEEEEE))
    serial_o_i_3
       (.I0(\FSM_onehot_state_reg[1]_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\select_packet_bit_reg_n_0_[2] ),
        .I3(\select_packet_bit_reg_n_0_[1] ),
        .I4(\select_packet_bit_reg_n_0_[3] ),
        .O(serial_o_i_3_n_0));
  LUT5 #(
    .INIT(32'hAFC0A0C0))
    serial_o_i_5
       (.I0(p_0_in3_in),
        .I1(p_0_in4_in),
        .I2(\select_packet_bit_reg_n_0_[1] ),
        .I3(\select_packet_bit_reg_n_0_[0] ),
        .I4(\data_reg_n_0_[0] ),
        .O(serial_o_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0))
    serial_o_i_6
       (.I0(p_0_in),
        .I1(p_0_in0_in),
        .I2(\select_packet_bit_reg_n_0_[1] ),
        .I3(p_0_in1_in),
        .I4(\select_packet_bit_reg_n_0_[0] ),
        .I5(p_0_in2_in),
        .O(serial_o_i_6_n_0));
  FDSE #(
    .INIT(1'b1))
    serial_o_reg
       (.C(clk),
        .CE(1'b1),
        .D(serial_o_i_1_n_0),
        .Q(UART_tx),
        .S(SR));
  MUXF7 serial_o_reg_i_4
       (.I0(serial_o_i_5_n_0),
        .I1(serial_o_i_6_n_0),
        .O(serial_o_reg_i_4_n_0),
        .S(\select_packet_bit_reg_n_0_[2] ));
  LUT5 #(
    .INIT(32'hC0C0C0CA))
    write_has_triggered_i_1
       (.I0(write_has_triggered_reg_n_0),
        .I1(uartWr),
        .I2(\FSM_onehot_state_reg[1]_0 ),
        .I3(\FSM_onehot_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(write_has_triggered_i_1_n_0));
  FDRE #(
    .INIT(1'b0))
    write_has_triggered_reg
       (.C(clk),
        .CE(1'b1),
        .D(write_has_triggered_i_1_n_0),
        .Q(write_has_triggered_reg_n_0),
        .R(SR));
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
