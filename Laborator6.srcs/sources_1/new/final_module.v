`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2021 10:28:26 AM
// Design Name: 
// Module Name: final_module
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



module final_module(x, t, y, z1);
    input x, y, t;
    output z1;
    
    wire x1, y1;
    
    bloc b1(x, t, x1);
    bloc b2(x1, y, y1);
    bloc b3(x1, y1, z1);
endmodule
