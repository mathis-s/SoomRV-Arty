`timescale 1ns / 1ps
module Top_tb();

reg in_ext_clk = 0;

reg rst = 0;
reg en = 0;
wire OUT_uartTx;
reg IN_uartRx = 0;


wire sen;
wire sclk;
wire[3:0] sdio;
Top top
(
    .clk(in_ext_clk),
    .rst(rst),
    .IN_button(0),
    .IN_switch(0),
    .OUT_led(),

    //.OUT_uartTx(OUT_uartTx),
    //.IN_uartRx(IN_uartRx),

        // Inouts
    .ddr3_dq(ddr3_dq),
    .ddr3_dqs_n(ddr3_dqs_n),
    .ddr3_dqs_p(ddr3_dqs_p),
    .ddr3_addr(ddr3_addr),
    .ddr3_ba(ddr3_ba),
    .ddr3_ras_n(ddr3_ras_n),
    .ddr3_cas_n(ddr3_cas_n),
    .ddr3_we_n(ddr3_we_n),
    .ddr3_reset_n(ddr3_reset_n),
    .ddr3_ck_p(ddr3_ck_p),
    .ddr3_ck_n(ddr3_ck_n),
    .ddr3_cke(ddr3_cke),
    .ddr3_cs_n(ddr3_cs_n),
    .ddr3_dm(ddr3_dm),
    .ddr3_odt(ddr3_odt),
    
    .sen(sen),
    .sclk(sclk),
    .sdio(sdio),

    .sin(0),
    .sout()
);

/*wire[7:0] uartByte;
wire uartRdy;
UartRx uart
(
    .reset_i(rst),
    .clock_i(clk),
    .clock_divider_i(87),
    .serial_i(OUT_uartTx),
    .data_o(uartByte),
    .ready_o(uartRdy),
    .ack_i(uartRdy),
    .parity_bit_i(0),
    .parity_even_i(0)
);

always@(posedge uartRdy) begin
    $write("%c", uartByte);
end*/

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

wire[15:0]       ddr3_dq;
wire[1:0]        ddr3_dqs_n;
wire[1:0]        ddr3_dqs_p;
wire[13:0]     ddr3_addr;
wire[2:0]        ddr3_ba;
wire           ddr3_ras_n;
wire           ddr3_cas_n;
wire           ddr3_we_n;
wire           ddr3_reset_n;
wire[0:0]       ddr3_ck_p;
wire[0:0]       ddr3_ck_n;
wire[0:0]       ddr3_cke;
wire[0:0]        ddr3_cs_n;
wire[1:0]     ddr3_dm;
wire[0:0]       ddr3_odt;

ddr3 ddr
(
    .rst_n(ddr3_reset_n),
    .ck(ddr3_ck_p),
    .ck_n(ddr3_ck_n),
    .cke(ddr3_cke),
    .cs_n(ddr3_cs_n),
    .ras_n(ddr3_ras_n),
    .cas_n(ddr3_cas_n),
    .we_n(ddr3_we_n),
    .dm_tdqs(ddr3_dm),
    .ba(ddr3_ba),
    .addr(ddr3_addr),
    .dq(ddr3_dq),
    .dqs(ddr3_dqs_p),
    .dqs_n(ddr3_dqs_n),
    .tdqs_n(),
    .odt(ddr3_odt)
);

integer i;
initial begin
    for (i = 0; i < 5000; i=i+1) begin
        in_ext_clk = !in_ext_clk;
        #5;
    end

    rst = 1;
    en = 1;
    
    while (1) begin
        in_ext_clk = !in_ext_clk;
        #5;
    end
end


endmodule
