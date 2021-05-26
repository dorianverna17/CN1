`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/05/2021 05:28:25 PM
// Design Name: 
// Module Name: sumatorBCD
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


module sumatorBCD(input [7:0] nr1, input [7:0] nr2, output [7:0] out_var);
    wire [3:0] nr1_0, nr1_1, nr2_0, nr2_1;
    reg [3:0] out_var_0, out_var_1, carry_bit;
    
    assign nr1_1 = nr1[7:4];
    assign nr1_0 = nr1[3:0];
    assign nr2_1 = nr2[7:4];
    assign nr2_0 = nr2[3:0];
    
    always @(*)
    begin
        out_var_1 = 0;
        carry_bit = 0;
        out_var_0 = nr1_0 + nr2_0;
        if (out_var_0 >= 10)
            begin
                out_var_0 = out_var_0 + 6;
                carry_bit = 1;
            end
        out_var_1 = carry_bit + nr1_1 + nr2_1;
        if (out_var_1 >= 10)
            begin
                out_var_1 = out_var_1 + 6;
                out_var_0 = out_var_0 + 1;
                if (out_var_0 > 9)
                    begin
                        out_var_0 = out_var_0 + 6;
                        out_var_1 = out_var_1 + 1;
                    end
            end
    end
    
    assign out_var = {out_var_1, out_var_0};
endmodule
