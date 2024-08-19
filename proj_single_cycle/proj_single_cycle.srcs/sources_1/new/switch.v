module switch (
    input  wire clk, 
    input  wire rst, 
    input  wire [23:0]  sw, 
    output reg [31:0] rdata
);

    always @(posedge clk) begin
        if (rst) begin
            rdata <= 32'b0;
        end else begin
            rdata <= {8'b0, sw};
        end
    end

endmodule 