`timescale 1ns / 1ps
module Top_tb();

reg in_ext_clk = 0;

reg rst = 0;
reg en = 0;
wire OUT_uartTx;
reg IN_uartRx = 0;


wire sen;
wire sclk = top.STARTUPE2_inst.USRCCLKO;
wire[3:0] sdio;
Top top
(
    .clk_p(in_ext_clk),
    .clk_n(~in_ext_clk),

    .rst(rst),
    .IN_button(0),
    .IN_switch(0),
    .OUT_led(),

    // Inouts
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

    .sen(sen),
    .sdio(sdio),

    .sin(0),
    .sout()
);

s25fl128s mem
(
    .SI(sdio[0]),
    .SO(sdio[1]),
    .SCK(sclk),
    .CSNeg(sen),
    .RSTNeg(rst),
    .WPNeg(sdio[2]),
    .HOLDNeg(sdio[3])
);

  wire [14:0]DDR3_0_addr;
  wire [2:0]DDR3_0_ba;
  wire DDR3_0_cas_n;
  wire [0:0]DDR3_0_ck_n;
  wire [0:0]DDR3_0_ck_p;
  wire [0:0]DDR3_0_cke;
  wire [0:0]DDR3_0_cs_n;
  wire [3:0]DDR3_0_dm;
  wire [31:0]DDR3_0_dq;
  wire [3:0]DDR3_0_dqs_n;
  wire [3:0]DDR3_0_dqs_p;
  wire [0:0]DDR3_0_odt;
  wire DDR3_0_ras_n;
  wire DDR3_0_reset_n;
  wire DDR3_0_we_n;
generate for (genvar i = 0; i < 2; i=i+1)
    ddr3 ddr
    (
        .rst_n(DDR3_0_reset_n),
        .ck(DDR3_0_ck_p),
        .ck_n(DDR3_0_ck_n),
        .cke(DDR3_0_cke),
        .cs_n(DDR3_0_cs_n),
        .ras_n(DDR3_0_ras_n),
        .cas_n(DDR3_0_cas_n),
        .we_n(DDR3_0_we_n),
        .dm_tdqs(DDR3_0_dm[i*2+:2]),
        .ba(DDR3_0_ba),
        .addr(DDR3_0_addr),
        .dq(DDR3_0_dq[i*16+:16]),
        .dqs(DDR3_0_dqs_p[i*2+:2]),
        .dqs_n(DDR3_0_dqs_n[i*2+:2]),
        .tdqs_n(),
        .odt(DDR3_0_odt)
    );
endgenerate

integer i;
initial begin
    for (i = 0; i < 5000; i=i+1) begin
        in_ext_clk = !in_ext_clk;
        #2.5;
    end

    rst = 1;
    en = 1;

    while (1) begin
        in_ext_clk = !in_ext_clk;
        #2.5;
    end
end


endmodule
