`timescale 1ns / 1ps

module IF_ID(                           //IF与ID流水线之间的寄存器
    input  wire        clk,   
    input  wire        rst,
    input  wire [31:0] IROM_inst,        //从irom中读出的指令
    input  wire [31:0] PC_pc,
    input  wire [31:0] NPC_pc4,
    input  wire        stop,             //是否停顿流水线
    input  wire        flush,
    output reg  [31:0] ID_inst,
    output reg  [31:0] ID_pc,
    output reg  [31:0] ID_pc4
);


    always @(posedge clk)begin
        if(rst)begin
            ID_inst <= 0;
            ID_pc <= 0;
            ID_pc4 <= 0;
        end
        else if(stop)begin
            ID_inst <= ID_inst;
            ID_pc <= ID_pc;
            ID_pc4 <= ID_pc4;
        end
        else if(flush)begin
            ID_inst <= 0;
            ID_pc <= 0;
            ID_pc4 <= 0;
        end
        else begin
            ID_inst <= IROM_inst;
            ID_pc <= PC_pc;
            ID_pc4 <= NPC_pc4;
        end
    end

endmodule