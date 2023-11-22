module RFSlice#
(
    parameter WIDTH=32,
    parameter PORTS=8,
    parameter SIZE=64
)
(
    input wire clk,
    input wire[5:0] waddr0,
    input wire[WIDTH-1:0] wdata0,
    input wire wen0,
    
    input wire[5:0] raddr[PORTS-1:0],
    output reg[WIDTH-1:0] rdata[PORTS-1:0]
);

(* ram_style = "block" *)
reg[WIDTH-1:0] mem[SIZE-1:0];

always_ff@(posedge clk) begin
    for (integer i = 0; i < PORTS; i=i+1)
        rdata[i] <= (i == 6) ? 'x : mem[raddr[i]];
    if (wen0) mem[waddr0] <= wdata0;
end


endmodule

module RF
#(
    parameter NUM_READ = 6,
    parameter NUM_WRITE = 3,
    parameter SIZE=64,
    parameter WIDTH=32
)
(
    input wire clk,
    
    input wire[5:0] waddr0,
    input wire[WIDTH-1:0] wdata0,
    input wire wen0,
    
    input wire[5:0] waddr1,
    input wire[WIDTH-1:0] wdata1,
    input wire wen1,
    
    input wire[5:0] waddr2,
    input wire[WIDTH-1:0] wdata2,
    input wire wen2,
    
    input wire[5:0] waddr3,
    input wire[WIDTH-1:0] wdata3,
    input wire wen3,
    
    input wire[5:0] raddr0,
    output reg[WIDTH-1:0] rdata0,
    
    input wire[5:0] raddr1,
    output reg[WIDTH-1:0] rdata1,
    
    input wire[5:0] raddr2,
    output reg[WIDTH-1:0] rdata2,
    
    input wire[5:0] raddr3,
    output reg[WIDTH-1:0] rdata3,
    
    input wire[5:0] raddr4,
    output reg[WIDTH-1:0] rdata4,
    
    input wire[5:0] raddr5,
    output reg[WIDTH-1:0] rdata5,
    
    input wire[5:0] raddr6,
    output reg[WIDTH-1:0] rdata6,
    
    input wire[5:0] raddr7,
    output reg[WIDTH-1:0] rdata7
);


reg[1:0] sliceSelect[63:0];
wire[31:0] sliceReads[2:0][7:0];
RFSlice slice0
(
    .clk(clk),
    .waddr0(waddr0),
    .wdata0(wdata0),
    .wen0(wen0),
    .raddr('{raddr7, raddr6, raddr5, raddr4, raddr3, raddr2, raddr1, raddr0}),
    .rdata(sliceReads[0])
);
RFSlice slice1
(
    .clk(clk),
    .waddr0(waddr1),
    .wdata0(wdata1),
    .wen0(wen1),
    .raddr('{raddr7, raddr6, raddr5, raddr4, raddr3, raddr2, raddr1, raddr0}),
    .rdata(sliceReads[1])
);
RFSlice slice2
(
    .clk(clk),
    .waddr0(waddr2),
    .wdata0(wdata2),
    .wen0(wen2),
    .raddr('{raddr7, raddr6, raddr5, raddr4, raddr3, raddr2, raddr1, raddr0}),
    .rdata(sliceReads[2])
);

// The third write port and 6th read port are currently unused in SoomRV

/*RFSlice slice3
(
    .clk(clk),
    .waddr0(waddr3),
    .wdata0(wdata3),
    .wen0(wen3),
    .raddr('{raddr7, raddr6, raddr5, raddr4, raddr3, raddr2, raddr1, raddr0}),
    .rdata(sliceReads[3])
);*/

always_ff@(posedge clk) begin
    if (wen0) sliceSelect[waddr0] <= 0;
    if (wen1) sliceSelect[waddr1] <= 1;
    if (wen2) sliceSelect[waddr2] <= 2;
end

reg[1:0] selectReg[7:0];
always_ff@(posedge clk) begin
    selectReg[0] <= sliceSelect[raddr0];
    selectReg[1] <= sliceSelect[raddr1];
    selectReg[2] <= sliceSelect[raddr2];
    selectReg[3] <= sliceSelect[raddr3];
    selectReg[4] <= sliceSelect[raddr4];
    selectReg[5] <= sliceSelect[raddr5];
    selectReg[6] <= 'x;//sliceSelect[raddr6];
    selectReg[7] <= sliceSelect[raddr7];
end

always_comb begin
    rdata0 = sliceReads[selectReg[0]][0];
    rdata1 = sliceReads[selectReg[1]][1];
    rdata2 = sliceReads[selectReg[2]][2];
    rdata3 = sliceReads[selectReg[3]][3];
    rdata4 = sliceReads[selectReg[4]][4];
    rdata5 = sliceReads[selectReg[5]][5];
    rdata6 = 'x;//sliceReads[selectReg[6]][6];
    rdata7 = sliceReads[selectReg[7]][7];
end

endmodule
