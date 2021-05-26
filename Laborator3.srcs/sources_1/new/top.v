`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2021 05:20:50 PM
// Design Name: 
// Module Name: top
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


module top(input clk, reset, input sel, input [5:0] A, B, output [7:0] BCD_A, BCD_B, BCD_Z);
    wire [3:0] BCD_A_0, BCD_A_1;
    wire [3:0] BCD_B_0, BCD_B_1;
    reg [7:0] aux1, aux2;
    wire [7:0] BCD_suma, BCD_scadere, BCD_B_compl;
    wire [7:0] auxiliary;

    bin2bcd bba1(A,BCD_A_1,BCD_A_0);
    bin2bcd bba2(B,BCD_B_1,BCD_B_0);

    assign BCD_A = {BCD_A_1, BCD_A_0};
    assign BCD_B = {BCD_B_1, BCD_B_0};

    sumatorBCD sbcd1(aux1, aux2, BCD_suma); //suma in BCD
    complBCD cmbcd(aux2, BCD_B_compl); //complementul fata de 9
    sumatorBCD sbcd2(aux1, BCD_B_compl, BCD_scadere); //scadere in BCD
 
    always @(posedge clk) begin
    //logica output 
    //logica reset sincron
        if (reset)
            begin
                aux1 = 0;
                aux2 = 0;
            end
        else
            begin
                aux1 <= BCD_A;
                aux2 <= BCD_B;
            end
    end

    //logica selectie suma/scadere
    assign auxiliary = sel == 0 ? BCD_suma : (A == B ? 0 : BCD_scadere);
    assign BCD_Z = reset == 1 ? 0 : auxiliary;
endmodule
