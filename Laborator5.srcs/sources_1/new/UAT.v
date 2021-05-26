`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/04/2021 03:34:07 PM
// Design Name: 
// Module Name: UAT
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


module UAT(input c_in, [3:0] g, [3:0] p,
    output reg G, reg P, reg [3:0] C);
    
always @(*)
    begin
        //  g - generare transport
        //  p - generare transport
        P = p[0] & p[1] & p[2] & p[3];
        G = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);
        C[0] = g[0] | (p[0] & c_in);
        C[1] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c_in);
        C[2] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c_in);
        C[3] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) |
        (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c_in);
    end
    
endmodule
