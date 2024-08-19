`include "defines.vh"

module DATA_RISK(
    input wire [ 4:0] ID_RS1,
    input wire [ 4:0] ID_RS2,
    input wire [ 4:0] ID_EX_RD,
    input wire [ 4:0] EX_MEM_RD,
    input wire [ 4:0] MEM_WB_RD,
    input wire        RS1_SEL,
    input wire        RS2_SEL,

    input wire [31:0] ALU_C,
    input wire [31:0] EX_SEXT_ext,
    input wire [31:0] EX_pc4,
    input wire [ 2:0] EX_rf_wsel,

    input wire [31:0] MEM_C,
    input wire [31:0] MEM_ext,
    input wire [31:0] MEM_pc4,
    input wire [31:0] MEM_rdo,
    input wire [ 2:0] MEM_rf_wsel,

    input wire [31:0] RF_wD,
    input wire        ID_dram_we,

    input wire        rf_we_EX,
    input wire        rf_we_MEM,
    input wire        rf_we_WB,
    output wire       forward_op1,
    output wire       forward_op2,
    output reg [31:0] rD1_forward,
    output reg [31:0] rD2_forward,
    output reg        stop
);

    wire RISK_A1 = (ID_EX_RD == ID_RS1) & rf_we_EX & RS1_SEL & (ID_EX_RD != 5'b0);
    wire RISK_A2 = (ID_EX_RD == ID_RS2) & rf_we_EX & (~RS2_SEL|ID_dram_we) & (ID_EX_RD != 5'b0);

    wire RISK_B1 = (EX_MEM_RD == ID_RS1) & rf_we_MEM & RS1_SEL & (EX_MEM_RD != 5'b0);
    wire RISK_B2 = (EX_MEM_RD == ID_RS2) & rf_we_MEM & (~RS2_SEL|ID_dram_we) & (EX_MEM_RD != 5'b0);

    wire RISK_C1 = (MEM_WB_RD == ID_RS1) & rf_we_WB & RS1_SEL & (MEM_WB_RD != 5'b0);
    wire RISK_C2 = (MEM_WB_RD == ID_RS2) & rf_we_WB & (~RS2_SEL|ID_dram_we) & (MEM_WB_RD != 5'b0);

    
    assign forward_op1 = RISK_A1 | RISK_B1 | RISK_C1;     //是否需要前递
    assign forward_op2 = RISK_A2 | RISK_B2 | RISK_C2;

    //计算前递数据
    always @ (*) begin
        if (RISK_A1)begin
            case(EX_rf_wsel)
                3'b000 : rD1_forward = EX_pc4;
                3'b001 : rD1_forward = EX_SEXT_ext;
                3'b011 : rD1_forward = ALU_C;
                default : rD1_forward = 0;
            endcase
        end
        else if (RISK_B1)begin
            case(MEM_rf_wsel)
            3'b000 : rD1_forward = MEM_pc4;
            3'b001 : rD1_forward = MEM_ext;
            3'b010 : rD1_forward = MEM_rdo;
            3'b011 : rD1_forward = MEM_C;
            3'b100 : begin
                case (MEM_C[1:0])
                2'b00 : rD1_forward = {{24{MEM_rdo[7]}},MEM_rdo[7:0]};          //lb指令
                2'b01 : rD1_forward = {{24{MEM_rdo[15]}},MEM_rdo[15:8]};          //lb指令
                2'b10 : rD1_forward = {{24{MEM_rdo[23]}},MEM_rdo[23:16]};          //lb指令
                2'b11 : rD1_forward = {{24{MEM_rdo[31]}},MEM_rdo[31:24]};          //lb指令
                default : rD1_forward = {{24{MEM_rdo[7]}},MEM_rdo[7:0]};          
                endcase 
            end
            3'b101 : begin
                case (MEM_C[1:0])
                2'b00 : rD1_forward = {24'b0,MEM_rdo[7:0]};          //lbu指令
                2'b01 : rD1_forward = {24'b0,MEM_rdo[15:8]};          //lbu指令
                2'b10 : rD1_forward = {24'b0,MEM_rdo[23:16]};          //lbu指令
                2'b11 : rD1_forward = {24'b0,MEM_rdo[31:24]};          //lbu指令
                default : rD1_forward = {24'b0,MEM_rdo[7:0]};          
                endcase 
            end
            3'b110 : begin
                case (MEM_C[1])
                1'b0 : rD1_forward = {{16{MEM_rdo[15]}},MEM_rdo[15:0]};          //lh指令
                1'b1 : rD1_forward = {{16{MEM_rdo[31]}},MEM_rdo[31:16]};          //lh指令
                default : rD1_forward = {{16{MEM_rdo[15]}},MEM_rdo[15:0]};        
                endcase 
            end
            3'b111 : begin
                case (MEM_C[1])
                1'b0 : rD1_forward = {16'b0,MEM_rdo[15:0]};          //lhu指令
                1'b1 : rD1_forward = {16'b0,MEM_rdo[31:16]};          //lhu指令
                default : rD1_forward = {16'b0,MEM_rdo[15:0]};        
                endcase 
            end
            endcase
        end
        else if (RISK_C1) rD1_forward = RF_wD;
        else   rD1_forward = 0;
    end

    always @ (*) begin
        if (RISK_A2)begin
            case(EX_rf_wsel)
                3'b000 : rD2_forward = EX_pc4;
                3'b001 : rD2_forward = EX_SEXT_ext;
                3'b011 : rD2_forward = ALU_C;
                default : rD2_forward = 0;
            endcase
        end
        else if (RISK_B2)begin
            case(MEM_rf_wsel)
            3'b000 : rD2_forward = MEM_pc4;
            3'b001 : rD2_forward = MEM_ext;
            3'b010 : rD2_forward = MEM_rdo;
            3'b011 : rD2_forward = MEM_C;
            3'b100 : begin
                case (MEM_C[1:0])
                2'b00 : rD2_forward = {{24{MEM_rdo[7]}},MEM_rdo[7:0]};          //lb指令
                2'b01 : rD2_forward = {{24{MEM_rdo[15]}},MEM_rdo[15:8]};          //lb指令
                2'b10 : rD2_forward = {{24{MEM_rdo[23]}},MEM_rdo[23:16]};          //lb指令
                2'b11 : rD2_forward = {{24{MEM_rdo[31]}},MEM_rdo[31:24]};          //lb指令
                default : rD2_forward = {{24{MEM_rdo[7]}},MEM_rdo[7:0]};          
                endcase 
            end
            3'b101 : begin
                case (MEM_C[1:0])
                2'b00 : rD2_forward = {24'b0,MEM_rdo[7:0]};          //lbu指令
                2'b01 : rD2_forward = {24'b0,MEM_rdo[15:8]};          //lbu指令
                2'b10 : rD2_forward = {24'b0,MEM_rdo[23:16]};          //lbu指令
                2'b11 : rD2_forward = {24'b0,MEM_rdo[31:24]};          //lbu指令
                default : rD2_forward = {24'b0,MEM_rdo[7:0]};          
                endcase 
            end
            3'b110 : begin
                case (MEM_C[1])
                1'b0 : rD2_forward = {{16{MEM_rdo[15]}},MEM_rdo[15:0]};          //lh指令
                1'b1 : rD2_forward = {{16{MEM_rdo[31]}},MEM_rdo[31:16]};          //lh指令
                default : rD2_forward = {{16{MEM_rdo[15]}},MEM_rdo[15:0]};        
                endcase 
            end
            3'b111 : begin
                case (MEM_C[1])
                1'b0 : rD2_forward = {16'b0,MEM_rdo[15:0]};          //lhu指令
                1'b1 : rD2_forward = {16'b0,MEM_rdo[31:16]};          //lhu指令
                default : rD2_forward = {16'b0,MEM_rdo[15:0]};        
                endcase 
            end
            endcase
        end
        else if (RISK_C2) rD2_forward = RF_wD;
        else   rD2_forward = 0;
    end

    //是否停顿

    wire load_risk = (RISK_A1 | RISK_A2) & (EX_rf_wsel == 3'b010);

    always @ (*) begin
        if(load_risk)  begin
            stop = 1;
        end
        else begin
            stop = 0;
        end
    end


endmodule