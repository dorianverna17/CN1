`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2021 02:54:55 PM
// Design Name: 
// Module Name: fsm
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fsm(input clk, reset, d_in1, d_in5, d_in10,
output reg d_out_suc, d_out1, d_out5);
reg [3:0] starea_curenta, starea_urmatoare;
// Logica secventiala
always @(posedge clk) begin
    if (reset)
        starea_urmatoare <= 0;
    else
        starea_curenta <= starea_urmatoare;
end
// Logica starii urmatoare
always @(d_in1, d_in5, d_in10, starea_curenta) begin
    case ({starea_curenta, d_in1, d_in5, d_in10})
        6'b000_100: starea_urmatoare <= 1; // S0->S1
        6'b001_100: starea_urmatoare <= 2; // S1->S2
        6'b010_100: starea_urmatoare <= 3; // S2->S3
        6'b011_000: starea_urmatoare <= 0; // S2->S3
        6'b000_010: starea_urmatoare <= 4; // S0->S4
        6'b100_000: starea_urmatoare <= 5; // S4->S5
        6'b101_000: starea_urmatoare <= 6; // S5->S6
        6'b000_001: starea_urmatoare <= 7; // S0->S7
        6'b111_000: starea_urmatoare <= 4; // S7->S4
        6'b110_000: starea_urmatoare <= 0; // S6->S0
        default: starea_urmatoare <= starea_urmatoare;
    endcase
end
// Logica output
always @(starea_curenta) begin
    case (starea_curenta)
        // starea S0
        4'b000:
            begin
                d_out1 <= 0;
                d_out5 <= 0;
                d_out_suc <= 0;
            end
        // starea S1
        4'b001:
            begin
                d_out1 <= 0;
                d_out5 <= 0;
                d_out_suc <= 0;
            end
        // starea S2
        4'b010:
            begin
                d_out1 <= 0;
                d_out5 <= 0;
                d_out_suc <= 0;
            end
        // starea S3
        4'b011:
            begin
                d_out1 <= 0;
                d_out5 <= 0;
                d_out_suc <= 1;
            end
        // starea S4
        4'b100:
            begin
                d_out1 <= 1;
                d_out5 <= 0;
                d_out_suc <= 0;
            end
        // starea S5
        4'b101:
            begin
                d_out1 <= 1;
                d_out5 <= 0;
                d_out_suc <= 0;
            end
        // starea S6
        4'b110:
            begin
                d_out1 <= 0;
                d_out5 <= 0;
                d_out_suc <= 1;
            end
        // starea S7
        4'b111:
            begin
                d_out1 <= 0;
                d_out5 <= 1;
                d_out_suc <= 0;
            end
    endcase
end
endmodule
