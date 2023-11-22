module QSPIReader
(
    input logic clk,
    input logic rst,

    output logic sclk,
    output logic sen,
    inout logic[3:0] sdio,

    // write request
    output logic[2-1:0]  s_axi_awid,
    output logic[32-1:0] s_axi_awaddr,
    output logic[7:0] s_axi_awlen,
    output logic[2:0] s_axi_awsize,
    output logic[1:0] s_axi_awburst,
    output logic s_axi_awlock,
    output logic[3:0] s_axi_awcache,
    output logic s_axi_awvalid,
    input logic s_axi_awready,

    // write stream
    output logic[128-1:0] s_axi_wdata,
    output logic[(128/8)-1:0] s_axi_wstrb,
    output logic s_axi_wlast,
    output logic s_axi_wvalid,
    input logic s_axi_wready,
    
    output logic OUT_error,
    output logic OUT_done
);

//localparam END_ADDR = 32'hC5_9F80 >> 4;
localparam END_ADDR = 32'hC0_0000 >> 4;
//localparam END_ADDR = 32'h00_700 >> 4;

logic[3:0] sdo;
logic oen;
assign sdio[1:0] = oen ? sdo[1:0] : 'z;
assign sdio[3:2] = 2'b11;

typedef enum logic[2:0] 
{
    STATE_BOOT, STATE_SEND, STATE_WAIT, STATE_READ, STATE_IDLE
} State;

State state = STATE_BOOT;
State retState = STATE_BOOT;

wire[31:0] command = 32'h3B_3A607C;
logic[5:0] bitIdx;
logic[3:0] waitCnt;

logic[5:0] hbIdx;
logic[27-8:0] addr;
logic[127:0] data = 0;
logic ignore;

always_comb begin
    s_axi_awlen = 0;
    s_axi_awsize = 4;
    s_axi_awburst = 0;
    s_axi_awlock = 0;
    s_axi_awcache = 0;
    s_axi_wstrb = 16'hFFFF;
end

always_ff@(posedge clk) begin
    
    if (rst) begin
        state <= STATE_BOOT;
        sen <= 1;
        sclk <= 1;
        sdo <= 0;
        oen <= 0;
        hbIdx <= 63;
        OUT_done <= 0;
        OUT_error <= 1;
    end
    else begin

        if (s_axi_awready) s_axi_awvalid <= 0;
        if (s_axi_wready) s_axi_wvalid <= 0;

        case (state)
            STATE_BOOT: begin
                sen <= 1;
                sclk <= 1;
                sdo <= 4'b1100;
                oen <= 0;
                hbIdx <= 63;
                OUT_done <= 0;
                    
                state <= STATE_SEND;
                bitIdx <= 31;
                waitCnt <= 7;
                addr <= 20'h00_000;
            end

            STATE_SEND: begin
                // Falling Edge
                if (sclk == 1) begin
                    // done
                    if (bitIdx == 63) begin
                        state <= STATE_WAIT;
                        oen <= 0;
                    end

                    // output next bit
                    else begin
                        sdo[0] <= command[bitIdx];
                        bitIdx <= bitIdx - 1;
                        oen <= 1;
                        sen <= 0;
                    end
                end
                sclk <= !sclk;
            end

            STATE_WAIT: begin
                sclk <= !sclk;
                if (sclk == 0) begin
                    if (waitCnt == 0) begin
                        state <= STATE_READ;
                        ignore <= 1;
                        oen <= 0;
                    end
                    waitCnt <= waitCnt - 1;
                end
            end

            STATE_READ: begin
                sclk <= !sclk;
                if (sclk == 0) begin
                    data[{hbIdx, 1'b0}+:2] <= sdio[1:0];
                    hbIdx <= hbIdx - 1;
                    ignore <= 0;
                    if (!ignore && hbIdx == 63) begin
                        
                        if ((s_axi_awvalid && !s_axi_awready) && (s_axi_wvalid && !s_axi_wready))
                            OUT_error <= 1;
                        
                        s_axi_awaddr <= {8'h80, addr, 4'b0};
                        s_axi_awid <= s_axi_awid + 1;
                        
                        s_axi_awvalid <= 1;
                        
                        for (integer i = 0; i < 16; i=i+1)
                            s_axi_wdata[i*8+:8] <= data[(15-i)*8+:8];
                        s_axi_wlast <= 1;
                        s_axi_wvalid <= 1;

                        addr <= addr + 1;
                        if (addr == (END_ADDR - 1)) begin
                            state <= STATE_IDLE;
                            oen <= 1;
                            sen <= 1;
                        end
                    end
                end
            end

            STATE_IDLE: begin
                oen <= 1;
                sen <= 1;
                if (!s_axi_wvalid && !s_axi_awvalid) begin
                    OUT_done <= 1;
                end
            end
        endcase

    end
end

endmodule
