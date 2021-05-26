`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2021 04:23:16 PM
// Design Name: 
// Module Name: sumator_complet_16bit
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


module sumator_complet_16bit(input [15:0]a, [15:0]b, c_in,
    output G, P, [15:0] sum, cout);
    
    wire [3:0]g, p, c;
 
    UAT instance_uat(c_in, g, p, G, P, c);
    sumator_complet_4bit instance1(a[3:0], b[3:0], c_in, g[0], p[0], sum[3:0]);
    sumator_complet_4bit instance2(a[7:4], b[7:4], c[0], g[1], p[1], sum[7:4]);
    sumator_complet_4bit instance3(a[11:8], b[11:8], c[1], g[2], p[2], sum[11:8]);
    sumator_complet_4bit instance4(a[15:12], b[15:12], c[2], g[3], p[3], sum[15:12]);
    assign cout = c[3];
    
endmodule
