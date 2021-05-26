`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2021 01:46:35 PM
// Design Name: 
// Module Name: MUX_2_1
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


module MUX_2_1(A, B, SEL, Z);
    input A, B, SEL;
    output Z;
    reg Z_reg;
    always @(*)
    begin
    if (SEL == 0)
        begin
            Z_reg<=A;
        end
    else
        begin
            Z_reg<=B;
        end
    end
    assign Z=Z_reg;
   // assign Z = SEL ? B:A;
endmodule
