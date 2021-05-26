`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2021 02:02:37 PM
// Design Name: 
// Module Name: simulation2
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


module simulation2();
    reg clk, reset;
    reg x, t, y;
    wire z2;
    
    final_module_pip f2(clk, reset, x, t, y, z2);
    
    initial clk =0;
    always #10 clk=~clk;
    
    initial begin
        clk = 1; reset = 0;
        x = 1; y = 1; t = 1;
        #40 x = 1; y = 0; t = 1;
        #20 x = 1; y = 1; t = 1;
        #20 x = 1; y = 0; t = 1;
        #20 x = 1; y = 1; t = 1;
        #20 x = 1; y = 0; t = 1;
        #20 x = 1; y = 1; t = 1;
        #20 x = 1; y = 0; t = 1;
        #20 x = 1; y = 1; t = 1;
        #100 $finish;
        #100 $stop;
    end
endmodule
