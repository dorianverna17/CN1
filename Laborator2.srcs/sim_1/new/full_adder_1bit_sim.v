`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2021 12:24:53 AM
// Design Name: 
// Module Name: full_adder_1bit_sim
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


module full_adder_1bit_sim( );
    reg A, B, C_IN;
    wire D;
    reg [8*100:1] line;
    integer fd, status, i_A, i_B, i_C_IN, i_Z, i_C_OUT, count;
    
    full_adder_1bit_wrapper instance1(A, B, C_IN, C_OUT, Z);
    
    initial begin
        A = 1'bx;
        B = 1'bx;
        C_IN = 1'bx;
        fd = $fopen("../../../../input.txt", "r");
        count = 1;
        #100
        
        while ($fgets(line, fd))
        begin
            status = $sscanf(line, "%d %d %d %d %d", i_A, i_B, i_C_IN, i_Z, i_C_OUT);
            A=i_A; B=i_B; C_IN=i_C_IN;
            #50
            if (i_Z == Z && i_C_OUT == C_OUT)
                $display("%d(%t) ok, A=%d, B=%d, C_IN=%d, Z=%d, C_OUT=%d\n", count, $time, A, B, C_IN, Z, C_OUT);
            else begin
                $display("%d(%t) EROARE, A=%d, B=%d, C_IN=%d, Z(actual)=%d, Z(corect)=%d, C_OUT(actual)=%d, C_OUT(corect)=%d\n", count, $time,
                A, B, C_IN, Z, i_Z, C_OUT, i_C_OUT);
            end
            count = count + 1;
        end
        #50 A=1'bx; B=1'bx; C_IN=1'bx;
        #50 $stop;
        #50 $finish;
    end
endmodule
