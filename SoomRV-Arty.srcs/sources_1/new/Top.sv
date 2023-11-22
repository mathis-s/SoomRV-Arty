`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2023 01:34:16 PM
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define AXI_ID_LEN 2

module Top
(
    input logic clk,
    input logic rst,
    input logic[3:0] IN_button,
    input logic[3:0] IN_switch,
    output logic[3:0] OUT_led,
    output logic[11:0] OUT_rgb,

    // Inouts
    inout [15:0]       ddr3_dq,
    inout [1:0]        ddr3_dqs_n,
    inout [1:0]        ddr3_dqs_p,
    // Outputs
    output [13:0]     ddr3_addr,
    output [2:0]        ddr3_ba,
    output            ddr3_ras_n,
    output            ddr3_cas_n,
    output            ddr3_we_n,
    output            ddr3_reset_n,
    output [0:0]       ddr3_ck_p,
    output [0:0]       ddr3_ck_n,
    output [0:0]       ddr3_cke,
    output [0:0]        ddr3_cs_n,
    output [1:0]     ddr3_dm,
    output [0:0]       ddr3_odt,

    output logic sclk,
    output logic sen,
    inout logic[3:0] sdio,

    input wire sin,
    output wire sout
);

typedef struct packed
{
    logic[31:0] stallPC;
    
    logic sqNStall;
    logic stSqNStall;

    logic rnStall;
    logic memBusy;

    logic sqBusy;
    logic lsuBusy;
    logic ldNack;
    logic stNack;
    
} DebugInfo;

typedef struct packed
{
    logic[3:0] transfValid;
    logic[3:0] transfReadDone;
    logic[3:0] transfWriteDone;
    logic[3:0] transfIsMMIO;
} DebugInfoMemC;

localparam WIDTH = 128;
localparam ADDR_LEN = 32;

logic calibComplete;

logic rstEarly;
logic rstCore = 1;
logic rstQSPI = 1;
logic en10 = 1;

wire[63:0] ledSignals = {
    CORE_dbg.stallPC,
    
    CORE_dbg.stNack, CORE_dbg.ldNack, CORE_dbg.sqBusy, CORE_dbg.lsuBusy,
    
    CORE_dbgMemC.transfIsMMIO,
    CORE_dbgMemC.transfReadDone,
    CORE_dbgMemC.transfWriteDone,
    CORE_dbgMemC.transfValid,

    CORE_dbg.memBusy, CORE_dbg.rnStall, CORE_dbg.stSqNStall, CORE_dbg.sqNStall,
    1'b0, s_axi_bvalid, s_axi_wvalid, s_axi_rvalid, 
    s_axi_awvalid, s_axi_arvalid, en10, rstCore
};

wire pc_asserted_0;
wire[159:0] pc_status_0;
wire[191:0] pc_stat_dbg = {{32{pc_asserted_0}}, pc_status_0};

always_ff@(posedge core_clk) begin
    
    rstQSPI <= rstEarly || !calibComplete;
    rstCore <= rstEarly || !calibComplete || !QSPI_done;

    en10 <= en10 | IN_button[1];
    if (IN_button[0] || soomrv_halt)
        en10 <= 0;
    
    OUT_led <= ledSignals[4*IN_switch+:4];
    OUT_rgb <= pc_stat_dbg[12*IN_switch+:12];
end

wire core_clk;
wire soomrv_halt;
DebugInfo CORE_dbg;
DebugInfoMemC CORE_dbgMemC;
SoC soomrv
(
    .clk(core_clk),
    .rst(rstCore),
    .en(en10),

    .OUT_powerOff(soomrv_halt),
    .OUT_reboot(),
    
    .s_axi_awid(s_axi_awid),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awlen(s_axi_awlen),
    .s_axi_awsize(s_axi_awsize),
    .s_axi_awburst(s_axi_awburst),
    .s_axi_awlock(s_axi_awlock),
    .s_axi_awcache(),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wlast(s_axi_wlast),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bready(s_axi_bready),
    .s_axi_bid(s_axi_bid),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_arid(s_axi_arid),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arlen(s_axi_arlen),
    .s_axi_arsize(s_axi_arsize),
    .s_axi_arburst(s_axi_arburst),
    .s_axi_arlock(s_axi_arlock),
    .s_axi_arcache(),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rready(s_axi_rready),
    .s_axi_rid(s_axi_rid),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rlast(s_axi_rlast),
    .s_axi_rvalid(s_axi_rvalid),

    .OUT_dbg(CORE_dbg),
    .OUT_dbgMemC(CORE_dbgMemC)
);

logic clk167;
logic clk200;
clk_wiz_0 clkw
(
    .clk_out1(clk167),
    .clk_out2(clk200),
    .reset(!rst),
    .locked(),
    .clk_in1(clk)
);

logic ui_clk_sync_rst;

logic[`AXI_ID_LEN-1:0]  s_axi_awid;
logic[ADDR_LEN-1:0] s_axi_awaddr;
logic[7:0] s_axi_awlen;
logic[2:0] s_axi_awsize;
logic[1:0] s_axi_awburst;
logic[0:0] s_axi_awlock;
logic[3:0] s_axi_awcache;
logic s_axi_awvalid;
logic s_axi_awready;
logic[WIDTH-1:0] s_axi_wdata;
logic[(WIDTH/8)-1:0] s_axi_wstrb;
logic s_axi_wlast;
logic s_axi_wvalid;
logic s_axi_wready;
logic s_axi_bready;
logic[`AXI_ID_LEN-1:0] s_axi_bid;
logic s_axi_bvalid;
logic[`AXI_ID_LEN-1:0] s_axi_arid;
logic[ADDR_LEN-1:0] s_axi_araddr;
logic[7:0] s_axi_arlen;
logic[2:0] s_axi_arsize;
logic[1:0] s_axi_arburst;
logic[0:0] s_axi_arlock;
logic[3:0] s_axi_arcache;
logic s_axi_arvalid;
logic s_axi_arready;
logic s_axi_rready;
logic[`AXI_ID_LEN-1:0] s_axi_rid;
logic[WIDTH-1:0] s_axi_rdata;
logic s_axi_rlast;
logic s_axi_rvalid;

assign s_axi_awcache = 4'b0010;
assign s_axi_arcache = 4'b0010;

logic[`AXI_ID_LEN-1:0]  qspi_axi_awid;
logic[ADDR_LEN-1:0] qspi_axi_awaddr;
logic[7:0] qspi_axi_awlen;
logic[2:0] qspi_axi_awsize;
logic[1:0] qspi_axi_awburst;
logic[0:0] qspi_axi_awlock;
logic[3:0] qspi_axi_awcache;
logic qspi_axi_awvalid;
wire qspi_axi_awready = s_axi_awready;
logic[WIDTH-1:0] qspi_axi_wdata;
logic[(WIDTH/8)-1:0] qspi_axi_wstrb;
logic qspi_axi_wlast;
logic qspi_axi_wvalid;
wire qspi_axi_wready = s_axi_wready;

logic QSPI_done;
logic QSPI_error;
QSPIReader qspi
(
    .clk(core_clk),
    .rst(rstQSPI),

    .sclk(sclk),
    .sen(sen),
    .sdio(sdio),

    .s_axi_awid(qspi_axi_awid),
    .s_axi_awaddr(qspi_axi_awaddr),
    .s_axi_awlen(qspi_axi_awlen),
    .s_axi_awsize(qspi_axi_awsize),
    .s_axi_awburst(qspi_axi_awburst),
    .s_axi_awlock(qspi_axi_awlock),
    .s_axi_awcache(qspi_axi_awcache),
    .s_axi_awvalid(qspi_axi_awvalid),
    .s_axi_awready(qspi_axi_awready),
    .s_axi_wdata(qspi_axi_wdata),
    .s_axi_wstrb(qspi_axi_wstrb),
    .s_axi_wlast(qspi_axi_wlast),
    .s_axi_wvalid(qspi_axi_wvalid),
    .s_axi_wready(qspi_axi_wready),

    .OUT_error(QSPI_error),
    .OUT_done(QSPI_done)
);

axi_map axi_address_space
(
    .DDR3_0_addr(ddr3_addr),
    .DDR3_0_ba(ddr3_ba),
    .DDR3_0_cas_n(ddr3_cas_n),
    .DDR3_0_ck_n(ddr3_ck_n),
    .DDR3_0_ck_p(ddr3_ck_p),
    .DDR3_0_cke(ddr3_cke),
    .DDR3_0_cs_n(ddr3_cs_n),
    .DDR3_0_dm(ddr3_dm),
    .DDR3_0_dq(ddr3_dq),
    .DDR3_0_dqs_n(ddr3_dqs_n),
    .DDR3_0_dqs_p(ddr3_dqs_p),
    .DDR3_0_odt(ddr3_odt),
    .DDR3_0_ras_n(ddr3_ras_n),
    .DDR3_0_reset_n(ddr3_reset_n),
    .DDR3_0_we_n(ddr3_we_n),

    .S00_AXI_0_araddr(s_axi_araddr),
    .S00_AXI_0_arburst(s_axi_arburst),
    .S00_AXI_0_arcache(s_axi_arcache),
    .S00_AXI_0_arid(s_axi_arid),
    .S00_AXI_0_arlen(s_axi_arlen),
    .S00_AXI_0_arlock(s_axi_arlock),
    .S00_AXI_0_arprot(1),
    .S00_AXI_0_arqos(0),
    .S00_AXI_0_arready(s_axi_arready),
    .S00_AXI_0_arsize(s_axi_arsize),
    .S00_AXI_0_arvalid(s_axi_arvalid),

    .S00_AXI_0_awaddr(QSPI_done ? s_axi_awaddr : qspi_axi_awaddr),
    .S00_AXI_0_awburst(QSPI_done ? (s_axi_awburst) : qspi_axi_awburst),
    .S00_AXI_0_awcache(s_axi_awcache),
    .S00_AXI_0_awid(QSPI_done ? s_axi_awid : qspi_axi_awid),
    .S00_AXI_0_awlen(QSPI_done ? s_axi_awlen : qspi_axi_awlen),
    .S00_AXI_0_awlock(QSPI_done ? s_axi_awlock : qspi_axi_awlock),
    .S00_AXI_0_awprot(QSPI_done ? 1 : 1),
    .S00_AXI_0_awqos(QSPI_done ? 0 : 0),
    .S00_AXI_0_awready(s_axi_awready),
    .S00_AXI_0_awsize(QSPI_done ? s_axi_awsize : qspi_axi_awsize),
    .S00_AXI_0_awvalid(QSPI_done ? s_axi_awvalid : qspi_axi_awvalid),

    .S00_AXI_0_bid(s_axi_bid),
    .S00_AXI_0_bready(QSPI_done ? s_axi_bready : 1'b1),
    .S00_AXI_0_bresp(),
    .S00_AXI_0_bvalid(s_axi_bvalid),
    
    .S00_AXI_0_rdata(s_axi_rdata),
    .S00_AXI_0_rid(s_axi_rid),
    .S00_AXI_0_rlast(s_axi_rlast),
    .S00_AXI_0_rready(s_axi_rready),
    .S00_AXI_0_rresp(),
    .S00_AXI_0_rvalid(s_axi_rvalid),

    .S00_AXI_0_wdata(QSPI_done ? s_axi_wdata : qspi_axi_wdata),
    .S00_AXI_0_wlast(QSPI_done ? s_axi_wlast : qspi_axi_wlast),
    .S00_AXI_0_wready(s_axi_wready),
    .S00_AXI_0_wstrb(QSPI_done ? s_axi_wstrb : qspi_axi_wstrb),
    .S00_AXI_0_wvalid(QSPI_done ? s_axi_wvalid : qspi_axi_wvalid),

    .clk21(core_clk),
    .clk_ref_i_0(clk200),
    .ext_reset_in_0(rst),
    .init_calib_complete_0(calibComplete),
    .mb_reset_0(rstEarly),
    .mmcm_locked_0(),
    .sys_clk_i_0(clk167),
    .UART_rx_0(sin),
    .UART_tx_0(sout),

    .pc_asserted_0(pc_asserted_0),
    .pc_status_0(pc_status_0)
);
endmodule
