`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2021 05:28:42 PM
// Design Name: 
// Module Name: complBCD
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


module complBCD(input [7:0] number, output [7:0] complement);
    wire [3:0] number_0, number_1;
    wire [3:0] complement_1, complement_0;
    
    
    assign number_1 = number[7:4];
    assign number_0 = number[3:0];
    
    assign complement_0 = 9 - number_0;
    assign complement_1 = 9 - number_1;

    assign complement = {complement_1, complement_0};
endmodule
