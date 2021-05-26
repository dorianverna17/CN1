`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2021 02:53:35 PM
// Design Name: 
// Module Name: full_adder_1_bit
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


module sumator_complet_1bit(input [0:0]a, [0:0]b, [0:0]c_in,
        output reg [0:0]g, reg [0:0]p, reg [0:0]sum);
    always @(*)
        begin
            g = a & b;
            p = a | b;
            sum = a + b + c_in;
        end
endmodule