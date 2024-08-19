`timescale 1ns / 1ps

module EX_MEM(                           
    input  wire        clk,   
    input  wire        rst,
    input  wire        ALU_f,
    input  wire [31:0] ALU_C,
    input  wire        EX_reg_we,
    input  wire [31:0] EX_reg_rD2,
    input  wire [ 1:0] EX_reg_op,  
    input  wire [31:0] EX_pc4,   
    input  wire [31:0] EX_ext,
    input  wire        EX_rf_we,
    input  wire [ 2:0] EX_rf_wsel,
    input  wire [31:0] EX_inst,
    input  wire        have_inst_EX,
    output reg         MEM_f,
    output reg  [31:0] MEM_C,
    output reg         MEM_dram_we,
    output reg  [31:0] MEM_rD2,
    output reg  [ 1:0] MEM_op,
    output reg  [31:0] MEM_pc4,
    output reg  [31:0] MEM_ext,
    output reg         MEM_rf_we,
    output reg  [ 2:0] MEM_rf_wsel,
    output reg  [31:0] MEM_inst,
    output reg         have_inst_MEM
);
 

    always @(posedge clk)begin
        if(rst)begin
            MEM_f <= 0;
            MEM_C <= 0;
            MEM_dram_we <= 0;
            MEM_rD2 <= 0;
            MEM_op <= 0;
            MEM_pc4 <= 0;
            MEM_ext <= 0;
            MEM_rf_we <= 0;
            MEM_rf_wsel <= 0;
            MEM_inst <= 0;
            have_inst_MEM <= 0;
        end
        else begin
            MEM_f <= ALU_f;
            MEM_C <= ALU_C;
            MEM_dram_we <= EX_reg_we;
            MEM_rD2 <= EX_reg_rD2;
            MEM_op <= EX_reg_op;
            MEM_pc4 <= EX_pc4;
            MEM_ext <= EX_ext;
            MEM_rf_we <= EX_rf_we;
            MEM_rf_wsel <= EX_rf_wsel; 
            MEM_inst <= EX_inst;
            have_inst_MEM <= have_inst_EX;
        end
    end

endmodule