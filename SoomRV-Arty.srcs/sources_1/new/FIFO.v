module FIFO#(parameter WIDTH=32, parameter NUM=4, parameter FORWARD1 = 1, parameter FORWARD0 = 1)
(
    input wire clk,
    input wire rst,

    output reg[$clog2(NUM):0] free,

    input wire IN_valid,
    input wire[WIDTH-1:0] IN_data,
    output wire OUT_ready,

    output reg OUT_valid,
    input wire IN_ready,
    output reg[WIDTH-1:0] OUT_data
);

reg[WIDTH-1:0] mem[NUM-1:0];

reg[$clog2(NUM)-1:0] indexIn;
reg[$clog2(NUM)-1:0] indexOut;
reg fullCond;

wire equal = (indexIn == indexOut);
wire empty = !fullCond && equal;
wire full = fullCond && equal;

wire outputReady = !outValidReg || IN_ready;
wire doExtract = !empty && outputReady;
wire doInsert = IN_valid && OUT_ready;
assign OUT_ready = !full || doExtract;

always@(*) begin
    if (empty) free = NUM;
    else free = (indexOut - indexIn) % NUM;
end

reg[WIDTH-1:0] outDataReg;
reg outValidReg;
reg combPassthru;
always@(*) begin
    OUT_valid = outValidReg;
    OUT_data = outDataReg;
    combPassthru = 0;
    
    if (!OUT_valid && empty && FORWARD0) begin
        OUT_valid = IN_valid;
        OUT_data = IN_data;
        combPassthru = 1;
    end
end

always@(posedge clk) begin
    if (rst) begin
        fullCond <= 0;
        indexIn <= 0;
        indexOut <= 0;
        outDataReg <= 0;
        outValidReg <= 0;
    end
    else begin

        if (outputReady)
            outDataReg <= 0;
        if (IN_ready)
            outValidReg <= 0;
        
        if (combPassthru && IN_ready) begin
            // Nothing to do, purely comb
        end
        else if (empty && doInsert && outputReady && FORWARD1) begin
            outDataReg <= IN_data;
            outValidReg <= 1;
        end
        else begin
            // Insert
            if (doInsert) begin
                mem[indexIn] <= IN_data;
                // verilator lint_off WIDTHEXPAND
                // verilator lint_off WIDTHTRUNC
                indexIn <= (indexIn + 1) % NUM;
                // verilator lint_on WIDTHTRUNC
                // verilator lint_on WIDTHEXPAND
            end

            // Extract
            if (doExtract) begin
                // verilator lint_off WIDTHEXPAND
                // verilator lint_off WIDTHTRUNC
                indexOut <= (indexOut + 1) % NUM;
                // verilator lint_on WIDTHTRUNC
                // verilator lint_on WIDTHEXPAND
                outDataReg <= mem[indexOut];
                outValidReg <= 1;
            end
            
            // When pointers equal: full if last action was insert,
            // empty if last action was extract
            if (doInsert != doExtract)
                fullCond <= doInsert;
        end
    end
end
endmodule
