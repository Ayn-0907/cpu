`include "defines.vh"

module dig (
    input  wire clk, 
    input  wire rst, 
    input  wire [31:0] addr, 
    input  wire we, 
    input  wire [31:0] wdata, 

    output reg  [ 7:0]  dig_en,
    output reg          DN_A,
    output reg          DN_B,
    output reg          DN_C,
    output reg          DN_D,
    output reg          DN_E,
    output reg          DN_F,
    output reg          DN_G,
    output reg          DN_DP
);
    wire [7:0] led [15:0];
    assign    led[0] = 8'b00000011;     //0
    assign    led[1] = 8'b10011111;     //1
    assign    led[2] = 8'b00100101;     //2
    assign    led[3] = 8'b00001101;     //3
    assign    led[4] = 8'b10011001;     //4
    assign    led[5] = 8'b01001001;     //5
    assign    led[6] = 8'b01000001;     //6
    assign    led[7] = 8'b00011111;     //7
    assign    led[8] = 8'b00000001;     //8
    assign    led[9] = 8'b00001001;     //9
    assign    led[10] = 8'b00010001;    //a
    assign    led[11] = 8'b11000001;    //b
    assign    led[12] = 8'b01100011;    //c
    assign    led[13] = 8'b10000101;    //d
    assign    led[14] = 8'b01100001;    //e
    assign    led[15] = 8'b01110001;    //f

    counter u_counter(
        .clk  (clk), 
        .rst  (rst), 
        .we   (we), 
        .cnt_end  (cnt_end));

    always @ (posedge clk or posedge rst) begin
        if(rst) 
            dig_en <= 8'b1111_1110;
        else if(cnt_end)
            dig_en <= {dig_en[6:0], dig_en[7]};
        else
            dig_en <= dig_en;
    end

    always @(posedge clk) begin
        if (rst) {DN_A, DN_B, DN_C, DN_D, DN_E, DN_F, DN_G, DN_DP} <= led[0];
        else if(we && addr == `PERI_ADDR_DIG)begin
            case (dig_en)
                8'b11111110: {DN_A, DN_B, DN_C, DN_D, DN_E, DN_F, DN_G, DN_DP} <= led[wdata[3 : 0]];
                8'b11111101: {DN_A, DN_B, DN_C, DN_D, DN_E, DN_F, DN_G, DN_DP} <= led[wdata[7 : 4]];
                8'b11111011: {DN_A, DN_B, DN_C, DN_D, DN_E, DN_F, DN_G, DN_DP} <= led[wdata[11: 8]];
                8'b11110111: {DN_A, DN_B, DN_C, DN_D, DN_E, DN_F, DN_G, DN_DP} <= led[wdata[15:12]];
                8'b11101111: {DN_A, DN_B, DN_C, DN_D, DN_E, DN_F, DN_G, DN_DP} <= led[wdata[19:16]];
                8'b11011111: {DN_A, DN_B, DN_C, DN_D, DN_E, DN_F, DN_G, DN_DP} <= led[wdata[23:20]];
                8'b10111111: {DN_A, DN_B, DN_C, DN_D, DN_E, DN_F, DN_G, DN_DP} <= led[wdata[27:24]];
                8'b01111111: {DN_A, DN_B, DN_C, DN_D, DN_E, DN_F, DN_G, DN_DP} <= led[wdata[31:28]];
                default: {DN_A, DN_B, DN_C, DN_D, DN_E, DN_F, DN_G, DN_DP} <= led[0];
            endcase
        end
        else begin
            {DN_A, DN_B, DN_C, DN_D, DN_E, DN_F, DN_G, DN_DP} <= led[0];
        end
    end

endmodule 