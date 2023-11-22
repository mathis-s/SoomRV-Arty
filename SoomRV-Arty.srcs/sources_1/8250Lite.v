

module UART8250Lite
(
    input wire clk,
    input wire aresetn,

    // write request
    input[11:0] s_axi_awaddr,
    input[2:0] s_axi_awsize,
    input s_axi_awvalid,
    output wire s_axi_awready,
    
    // write stream
    input[127:0] s_axi_wdata,
    input[15:0] s_axi_wstrb,
    input s_axi_wvalid,
    output wire s_axi_wready,
    
    // write response
    input s_axi_bready,
    output reg s_axi_bvalid,
    
    // read request
    input[11:0] s_axi_araddr,
    input[2:0] s_axi_arsize,
    input s_axi_arvalid,
    output wire s_axi_arready,
    
    // read stream
    input s_axi_rready,
    output reg[127:0] s_axi_rdata,
    output reg s_axi_rvalid,

    output wire UART_tx,
    input wire UART_rx
);

reg wAddrValid;
reg wDataValid;
reg[11:0] waddr;
reg[7:0] wdata; 

assign s_axi_awready = !s_axi_bvalid && !wAddrValid;
assign s_axi_wready = !s_axi_bvalid && !wDataValid;
assign s_axi_arready = !s_axi_rvalid;

wire uartWrBusy;
wire uartWr;
wire[7:0] uartWrData;

wire[7:0] uartRdData;
wire uartRdValid;
Uart uart
(
    .reset_i(!aresetn),
    .clock_i(clk),
    .clock_divider_i(362),
    .serial_i(UART_rx),
    .serial_o(UART_tx),
    
    .data_i(uartWrData),
    .data_o(uartRdData),

    .write_i(!uartWrBusy && uartWr),
    .write_busy_o(uartWrBusy),
    .read_ready_o(uartRdValid),
    .ack_i(1'b1),

    .two_stop_bits_i(0),
    .parity_bit_i(0),
    .parity_even_i(0)
);

wire txFIFOready;
wire[6:0] txFIFO_free;
wire txFIFOinValid = wAddrValid && wDataValid && waddr == 0;
FIFO#(8, 64, 0, 0) txFIFO
(
    .clk(clk),
    .rst(!aresetn),
    
    .free(txFIFO_free),
    .IN_valid(txFIFOinValid),
    .IN_data(wdata),
    .OUT_ready(txFIFOready),

    .OUT_valid(uartWr),
    .IN_ready(!uartWrBusy && uartWr),
    .OUT_data(uartWrData)
);

reg rxFIFOAck;
wire rxFIFOavail;
wire[7:0] rxFIFOreadData;
FIFO#(8, 64, 0, 0) rxFIFO
(
    .clk(clk),
    .rst(!aresetn),
    
    .free(),
    .IN_valid(uartRdValid),
    .IN_data(uartRdData),
    .OUT_ready(),

    .OUT_valid(rxFIFOavail),
    .IN_ready(rxFIFOAck && rxFIFOavail),
    .OUT_data(rxFIFOreadData)
);


always@(posedge clk) begin
    
    rxFIFOAck <= 0;
    if (!aresetn) begin
        s_axi_bvalid <= 0;
        s_axi_rvalid <= 0;
        wAddrValid <= 0;
        wDataValid <= 0;
    end
    else begin
        if (s_axi_rready) s_axi_rvalid <= 0;
        if (s_axi_bready) s_axi_bvalid <= 0;

        if (s_axi_wvalid && s_axi_wready) begin
            wDataValid <= 1;
            wdata <= s_axi_wdata[7:0];
        end
        if (s_axi_awvalid && s_axi_awready) begin
            wAddrValid <= 1;
            waddr <= s_axi_awaddr;
        end

        if (wAddrValid && wDataValid) begin
            s_axi_bvalid <= 1;
            wAddrValid <= 0;
            wDataValid <= 0;
        end

        if (s_axi_arvalid && s_axi_arready) begin
            
            s_axi_rdata <= 0;

            if (s_axi_araddr == 0) begin
                s_axi_rdata <= {120'b0, rxFIFOreadData};
                rxFIFOAck <= 1;
            end
            else if (s_axi_araddr == 5) begin
                s_axi_rdata <= {120'b0, 1'b0, txFIFO_free[6] && !uartWrBusy && !uartWr, txFIFO_free > 2, 1'b0, 1'b0, 1'b0, 1'b0, rxFIFOavail};
            end
            s_axi_rvalid <= 1;
        end
    end
end

endmodule
