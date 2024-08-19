module button (
    input  wire clk, 
    input  wire rst, 
    input  wire [ 4:0]  button,
    output reg [31:0] rdata
);

    always @(posedge clk) begin
        if (rst) begin
            rdata <= 32'b0;
        end else begin
            rdata <= {27'b0, button};
        end
    end

endmodule 