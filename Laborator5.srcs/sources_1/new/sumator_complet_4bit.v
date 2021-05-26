`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2021 03:48:15 PM
// Design Name: 
// Module Name: sumator_complet_4bit
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


module sumator_complet_4bit(input [3:0]a, [3:0]b, c_in,
    output G, P, [3:0]sum, [0:0]cout);
    wire [3:0]g, p, c;
    UAT instance_uat(c_in, g, p, G, P, c);
    sumator_complet_1bit instance1(a[0], b[0], c_in, g[0], p[0], sum[0]);
    sumator_complet_1bit instance2(a[1], b[1], c[0], g[1], p[1], sum[1]);
    sumator_complet_1bit instance3(a[2], b[2], c[1], g[2], p[2], sum[2]);
    sumator_complet_1bit instance4(a[3], b[3], c[2], g[3], p[3], sum[3]);
    assign cout = c[3];
endmodule