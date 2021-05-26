`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2021 10:17:27 AM
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
    reg x, t, y;
    wire z1;
    
    final_module f1(x, t, y, z1);
    
    initial begin
//        hazard
        x = 1; y = 1; t = 1;
        #10 x = 1; y = 0; t = 1;
        #10 x = 1; y = 1; t = 1;
        #10 x = 1; y = 0; t = 1;
        #10 x = 1; y = 1; t = 1;
        #10 x = 1; y = 0; t = 1;
        #10 x = 1; y = 1; t = 1;
        #10 x = 1; y = 0; t = 1;
        #10 x = 1; y = 1; t = 1;
        #100 $finish;
        #100 $stop;
    end
endmodule
