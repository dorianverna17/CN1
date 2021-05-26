`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2021 02:47:35 PM
// Design Name: 
// Module Name: reg_pip
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


module reg_pip(input clk, input reset, input a, output reg b);
    always@(posedge clk or reset) begin
        if(reset)
            b <= 0;
        else
            b <= a;
    end
endmodule
