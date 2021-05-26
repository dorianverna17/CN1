`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2021 02:30:19 PM
// Design Name: 
// Module Name: bloc_pip
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


module bloc_pip(a, b, c);
    input a, b;
    output c;
    
    assign #20 c = a^b;
    
endmodule