`timescale 1ns / 1ps
`include "defines.vh"

module STOP(
    input  wire [ 4:0] ID_RS1,
    input  wire [ 4:0] ID_RS2,
    input  wire [ 4:0] ID_EX_RD,         
    input  wire [ 4:0] EX_MEM_RD,
    input  wire [ 4:0] MEM_WB_RD,
    input  wire        RS1_SEL,
    input  wire        RS2_SEL,
    input  wire        have_inst_EX,
    input  wire        have_inst_MEM,
    input  wire        have_inst_WB,
    output reg         stop
);
    always @(*)begin
        if((ID_RS1 == ID_EX_RD) & RS1_SEL & have_inst_EX)begin
            stop = 1;
        end
        else if((ID_RS1 == EX_MEM_RD) & RS1_SEL & have_inst_MEM)begin
            stop = 1;
        end
        else if((ID_RS1 == MEM_WB_RD) & RS1_SEL & have_inst_WB)begin
            stop = 1;
        end
        else if((ID_RS2 == ID_EX_RD) & ~RS2_SEL & have_inst_EX)begin
            stop = 1;
        end
        else if((ID_RS2 == EX_MEM_RD) & ~RS2_SEL & have_inst_MEM)begin
            stop = 1;
        end
        else if((ID_RS2 == MEM_WB_RD) & ~RS2_SEL & have_inst_WB)begin
            stop = 1;
        end
        else stop = 0;
    end

    
endmodule