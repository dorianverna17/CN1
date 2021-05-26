`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2021 04:31:45 PM
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
    reg c_in;
    reg [15:0]a, b;
    wire G, P, cout;
    wire [15:0]sum;

    sumator_complet_16bit instance1 (a, b, c_in, G, P, sum, cout);
    
 initial
    begin
    #20 a = 16'b0000111010001101; b = 16'b1111000010110101; c_in = 0;
    #20 a = 16'b0100010010011001; b = 16'b0001000100101111; c_in = 1;
    #20 a = 16'b0000000000000001; b = 16'b0000000000000000; c_in = 1;
    #20 a = 16'b1000000000000000; b = 16'b1000000000000000; c_in = 0;
    #10 $stop;
    #10 $finish;
    end
endmodule
