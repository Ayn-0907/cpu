`timescale 1ns / 1ps

module MEM_WB(                           
    input  wire        clk,   
    input  wire        rst,
    input  wire [31:0] MEM_pc4,
    input  wire [31:0] MEM_ext,
    input  wire [31:0] MEM_rdo,
    input  wire [31:0] MEM_C,
    input  wire        MEM_rf_we,
    input  wire [ 1:0] MEM_wsel,
    input  wire [ 4:0] MEM_wR,
    input  wire        have_inst_MEM,
    output reg  [31:0] WB_pc4,
    output reg  [31:0] WB_ext,
    output reg  [31:0] WB_rdo,
    output reg  [31:0] WB_C,
    output reg         WB_we,
    output reg  [ 1:0] WB_wsel,
    output reg  [ 4:0] WB_wR,
    output reg         have_inst_WB
);

    reg [31:0] regs[6:0];    

    always @(posedge clk)begin
        if(rst)begin
            WB_pc4  <= 0;
            WB_ext  <= 0;
            WB_rdo  <= 0;
            WB_C    <= 0;
            WB_we   <= 0;
            WB_wsel <= 0;
            WB_wR   <= 0;
            have_inst_WB <= 0;
        end
        else begin
            WB_pc4  <= MEM_pc4;
            WB_ext  <= MEM_ext;
            WB_rdo  <= MEM_rdo;
            WB_C    <= MEM_C;
            WB_we   <= MEM_rf_we;
            WB_wsel <= MEM_wsel;
            WB_wR   <= MEM_wR;
            have_inst_WB <= have_inst_MEM;
        end
    end

endmodule