`include "defines.vh"

module led (
    input  wire clk, 
    input  wire rst, 
    input  wire [31:0] addr, 
    input  wire we, 
    input  wire [31:0] wdata, 
    output reg [23:0]  led
);

    always @(posedge clk) begin
        if (rst) begin
            led <= 24'b0;
        end else if (we && addr == `PERI_ADDR_LED) begin
            led <= wdata[23:0];
        end else begin
            led <= led;
        end
    end


endmodule //led