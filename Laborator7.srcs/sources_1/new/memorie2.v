`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/26/2021 10:47:56 AM
// Design Name: 
// Module Name: memorie2
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


module memorie2 #(parameter biti = 32) (
    input clk, we1, we2,
    input [2:0] addr1, [2:0] addr2,
    input [biti - 1:0] d_in1, [biti - 1:0] d_in2,
    output [biti - 1:0] d_out1, [biti - 1:0] d_out2
    );
    
    reg [biti - 1:0] ram_vec[7:0];
    reg [biti - 1:0] aux1, aux2;
    
    always @(posedge clk)
    begin
        aux1 <= ram_vec[addr1];
        if (we1)
            ram_vec[addr1] <= d_in1;
    end
    
    always @(posedge clk)
    begin
        aux2 <= ram_vec[addr2];
        if (we2)
            ram_vec[addr2] <= d_in2;
    end

    assign d_out1 = aux1;
    assign d_out2 = aux2;
endmodule
