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
    input logic clk_p,
    input logic clk_n,
    input logic rst,
    input logic[4:0] IN_button,
    input logic[7:0] IN_switch,
    output logic[7:0] OUT_led,

    output [14:0]DDR3_0_addr,
    output [2:0]DDR3_0_ba,
    output DDR3_0_cas_n,
    output [0:0]DDR3_0_ck_n,
    output [0:0]DDR3_0_ck_p,
    output [0:0]DDR3_0_cke,
    output [0:0]DDR3_0_cs_n,
    output [3:0]DDR3_0_dm,
    inout [31:0]DDR3_0_dq,
    inout [3:0]DDR3_0_dqs_n,
    inout [3:0]DDR3_0_dqs_p,
    output [0:0]DDR3_0_odt,
    output DDR3_0_ras_n,
    output DDR3_0_reset_n,
    output DDR3_0_we_n,

    output logic sen,
    inout logic[3:0] sdio,

    input wire sin,
    output wire sout
);

localparam WIDTH = 128;
localparam ADDR_LEN = 32;

logic rstEarly;
logic rstCore = 1;
logic rstQSPI = 1;
logic en10 = 1;

wire[63:0] ledSignals = {
    CORE_dbg.stallPC,

    CORE_dbg.stNack, CORE_dbg.ldNack, CORE_dbg.sqBusy, CORE_dbg.lsuBusy,
    CORE_dbgMemC.transfIsMMIO,

    CORE_dbgMemC.transfReadDone, CORE_dbgMemC.transfWriteDone,

    CORE_dbgMemC.transfValid, CORE_dbg.memBusy, CORE_dbg.rnStall, CORE_dbg.stSqNStall, CORE_dbg.sqNStall,

    QSPI_error, s_axi_bvalid, s_axi_wvalid, s_axi_rvalid, s_axi_awvalid, s_axi_arvalid, en10, rstCore
};

logic calibComplete;
logic calibComplete_d1;
logic calibComplete_d2;
always_ff@(posedge core_clk) begin

    calibComplete_d1 <= calibComplete;
    calibComplete_d2 <= calibComplete_d1;

    rstQSPI <= rstEarly || !calibComplete_d2;
    rstCore <= rstEarly || !calibComplete_d2 || !QSPI_done;

    en10 <= en10 | IN_button[1];
    if (IN_button[0] || soomrv_halt)
        en10 <= 0;

    OUT_led <= ledSignals[8*IN_switch[0+:3]+:8];
end


`include "Include.svh"


wire EX_UOp[4:0] exUOps = soomrv.core.LD_uop;
wire ResultUOp[4:0] resultUOps = soomrv.core.resultUOps;
wire FlagsUOp[6:0] flagsUOps = soomrv.core.flagUOps;
wire Trap_UOp trapUOp = soomrv.core.ROB_trapUOp;
wire TrapInfoUpdate trapInfo = soomrv.core.TH_trapInfo;
wire BranchProv branch = soomrv.core.branch;
wire IF_Instr ifInstrs = soomrv.core.ifetch.ifp.FIFO_out;
wire PD_Instr[3:0] pdInstrs = {soomrv.core.PD_instrs[3], soomrv.core.PD_instrs[2], soomrv.core.PD_instrs[1], soomrv.core.PD_instrs[0]};
wire MemController_LdDataFwd ldDataFwd = soomrv.memc.ldDataFwd;
wire StDataLookupUOp[1:0] stDataLookup = soomrv.core.stLookupUOp;// 34
wire StDataUOp[1:0] stDataUOp = soomrv.core.SDL_stDataUOp; // 80
wire StFwdResult[1:0] sqFwdRes = soomrv.core.SQ_fwd; // 76
wire StFwdResult[1:0] sqbFwdRes = soomrv.core.SQB_fwd; //76

wire SQ_UOp[1:0] sqUOps = soomrv.core.SQ_uops;
wire ST_UOp stUOp = soomrv.core.SQB_uop;

wire LD_UOp[1:0] ldUOps;
assign ldUOps[0] = soomrv.core.lsu.ldOps[0][1];
assign ldUOps[1] = soomrv.core.lsu.ldOps[1][1];

wire LoadResUOp[1:0] ldResUOps;
assign ldResUOps[0] = soomrv.core.lsu.ldResUOp[0];
assign ldResUOps[1] = soomrv.core.lsu.ldResUOp[1];

typedef struct packed
{
    logic[31:0] data;
    logic[29:0] addr;
    logic[3:0] wmask;
    logic loaded;
    logic addrAvail;
} SQEntry;

SQEntry sqEntry_0 = soomrv.core.sq.entries[0];

/*
ila_0 ila(core_clk,
    exUOps[0], exUOps[1], exUOps[2], exUOps[3], exUOps[4],
    resultUOps[0], resultUOps[1], resultUOps[2], resultUOps[3], //resultUOps[4],
    flagsUOps[0], flagsUOps[1], flagsUOps[2], flagsUOps[3], flagsUOps[4], flagsUOps[5], flagsUOps[6],

    trapInfo, trapUOp, soomrv.core.ROB_curSqN, branch, ifInstrs,
    {s_axi_rvalid, s_axi_rready, s_axi_rdata}, ldDataFwd, soomrv.IF_cache.rdata[0], soomrv.IF_cache.rdata[1],
    ldUOps[0], ldUOps[1],
    ldResUOps[0], ldResUOps[1], sqUOps, stUOp,
    soomrv.core.intPortsGen[0].genblk7.csr.mcycle[31:0],
    soomrv.core.intPortsGen[0].genblk7.csr.minstret[31:0],
    pdInstrs
    //stDataLookup, stDataUOp, sqFwdRes, sqbFwdRes,
    //sqEntry_0, soomrv.core.sq.invalRange_c, soomrv.core.sq.baseIndex, soomrv.core.sq.forwardRange_c[0], soomrv.core.sq.forwardRange_c[1], soomrv.core.rob.hangCounter
);
*/

wire core_clk;
wire clkx5;
wire soomrv_halt;
DebugInfo CORE_dbg;
DebugInfoMemC CORE_dbgMemC;
SoC soomrv
(
    .clk(core_clk),
    .clkx5(clkx5),
    .rst(rstCore),
    .en(en10),

    .IN_irq(1'b0),

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

logic sclk;
STARTUPE2 #(
   .PROG_USR("FALSE"),  // Activate program event security feature. Requires encrypted bitstreams.
   .SIM_CCLK_FREQ(0.0)  // Set the Configuration Clock Frequency(ns) for simulation.
)
STARTUPE2_inst (
   .CFGCLK(),       // 1-bit output: Configuration main clock output
   .CFGMCLK(),     // 1-bit output: Configuration internal oscillator clock output
   .EOS(),             // 1-bit output: Active high output signal indicating the End Of Startup.
   .PREQ(),           // 1-bit output: PROGRAM request to fabric output
   .CLK(CLK),             // 1-bit input: User start-up clock input
   .GSR(1'b0),             // 1-bit input: Global Set/Reset input (GSR cannot be used for the port name)
   .GTS(1'b0),             // 1-bit input: Global 3-state input (GTS cannot be used for the port name)
   .KEYCLEARB(1'b1), // 1-bit input: Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
   .PACK(),           // 1-bit input: PROGRAM acknowledge input
   .USRCCLKO(sclk),   // 1-bit input: User CCLK input
                          // For Zynq-7000 devices, this input must be tied to GND
   .USRCCLKTS(1'b0), // 1-bit input: User CCLK 3-state enable input
                          // For Zynq-7000 devices, this input must be tied to VCC
   .USRDONEO(1'b0),   // 1-bit input: User DONE pin output control
   .USRDONETS(1'b1)  // 1-bit input: User DONE 3-state enable output
);


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
    .DDR3_0_addr(DDR3_0_addr),
    .DDR3_0_ba(DDR3_0_ba),
    .DDR3_0_cas_n(DDR3_0_cas_n),
    .DDR3_0_ck_n(DDR3_0_ck_n),
    .DDR3_0_ck_p(DDR3_0_ck_p),
    .DDR3_0_cke(DDR3_0_cke),
    .DDR3_0_cs_n(DDR3_0_cs_n),
    .DDR3_0_dm(DDR3_0_dm),
    .DDR3_0_dq(DDR3_0_dq),
    .DDR3_0_dqs_n(DDR3_0_dqs_n),
    .DDR3_0_dqs_p(DDR3_0_dqs_p),
    .DDR3_0_odt(DDR3_0_odt),
    .DDR3_0_ras_n(DDR3_0_ras_n),
    .DDR3_0_reset_n(DDR3_0_reset_n),
    .DDR3_0_we_n(DDR3_0_we_n),

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

    .SYS_CLK_0_clk_n(clk_n),
    .SYS_CLK_0_clk_p(clk_p),

    .UART_rx_0(sin),
    .UART_tx_0(sout),

    .clk21(core_clk),
    .clkx5(clkx5),
    .ext_reset_in_0(rst),
    .init_calib_complete_0(calibComplete),
    .interrupt_0(interrupt_0),
    .mb_reset_0(rstEarly)
);
endmodule
