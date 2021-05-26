`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/20/2021 03:31:58 PM
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
reg clk, reset, d_in1, d_in5, d_in10;
wire d_out_suc, d_out1, d_out5;

fsm automat(clk, reset, d_in1, d_in5, d_in10, d_out_suc, d_out1, d_out5);

localparam CLK_PERIOD = 10;
always #(CLK_PERIOD) clk=~clk; 

initial begin
    #20 clk = 0; reset = 1;
    #20 reset = 0;
    // acum pun cate 1 leu
    #20 d_in1 = 1; d_in5 = 0; d_in10 = 0;
    #20 d_in1 = 1; d_in5 = 0; d_in10 = 0;
    #20 d_in1 = 1; d_in5 = 0; d_in10 = 0;
    #20 d_in1 = 0; d_in5 = 0; d_in10 = 0;
    // aici am revenit in S0
    // acum pun 5 lei
    #20 d_in1 = 0; d_in5 = 1; d_in10 = 0;
    #20 d_in1 = 0; d_in5 = 0; d_in10 = 0;
    #20 d_in1 = 0; d_in5 = 0; d_in10 = 0;
    #20 d_in1 = 0; d_in5 = 0; d_in10 = 0;
    // aici am revenit in S0
    // acum pun 10 lei
    #20 d_in1 = 0; d_in5 = 0; d_in10 = 1;
    #20 d_in1 = 0; d_in5 = 0; d_in10 = 0;
    #20 d_in1 = 0; d_in5 = 0; d_in10 = 0;
    #20 d_in1 = 0; d_in5 = 0; d_in10 = 0;
    #20 d_in1 = 0; d_in5 = 0; d_in10 = 0;
    #10 $finish;
end

endmodule
