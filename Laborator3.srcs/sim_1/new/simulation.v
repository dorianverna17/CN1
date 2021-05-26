`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2021 05:29:05 PM
// Design Name: 
// Module Name: simulation
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


module simulation();
    reg clk, reset, sel;
    reg [5:0] A, B; 
    wire [7:0] BCD_A, BCD_B, BCD_Z;
    
    top instance1(clk, reset, sel, A, B, BCD_A, BCD_B, BCD_Z);
    
    always #5 clk =~ clk;
    
    initial begin
        #0 clk = 0; reset = 0; sel=0; 
        #0 A = 14; B = 6;
        #10 sel=1;       
        #10 $stop;
        #10 $finish;
    end
endmodule
