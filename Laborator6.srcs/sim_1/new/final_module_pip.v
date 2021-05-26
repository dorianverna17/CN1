`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2021 02:17:51 PM
// Design Name: 
// Module Name: final_module_pip
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


module final_module_pip(input clk, reset,
    input x, t, y, output z2);
    wire x1, x2, x3, x4, y1, y2, y3;
    
    bloc_pip b1(x, t, x1);
    reg_pip reg1(clk, reset, x1, x2);
    reg_pip reg2(clk, reset, y, y1);
    
    bloc_pip b2(x2, y1, y2);
    reg_pip reg3(clk, reset, x2, x3);
    reg_pip reg4(clk, reset, y2, y3);
    
    bloc_pip b3(x3, y3, x4);
    reg_pip reg5(clk, reset, x4, z2);
    
endmodule
