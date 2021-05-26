`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2021 02:50:05 PM
// Design Name: 
// Module Name: MUX_2_1_sim
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


module MUX_2_1_sim();
    reg A, B, SEL;
    wire Z;
    
    MUX_2_1 instance2(A, B, SEL, Z);
    
    initial begin
        A=1'bx; B=1'bx; SEL=1'bx;
        #50 A=0; B=0; SEL=0;
        #55 $display("Pentru valorile A=%d B=%d SEL=%d iesirea este Z=%d", A, B, SEL, Z);
        #50 A=0; B=1; SEL=0;
        #55 $display("Pentru valorile A=%d B=%d SEL=%d iesirea este Z=%d", A, B, SEL, Z);
        #50 A=1; B=0; SEL=0;
        #55 $display("Pentru valorile A=%d B=%d SEL=%d iesirea este Z=%d", A, B, SEL, Z);
        #50 A=1; B=1; SEL=0;
        #55 $display("Pentru valorile A=%d B=%d SEL=%d iesirea este Z=%d", A, B, SEL, Z);
        #50 A=0; B=0; SEL=1;
        #55 $display("Pentru valorile A=%d B=%d SEL=%d iesirea este Z=%d", A, B, SEL, Z);
        #50 A=0; B=1; SEL=1;
        #55 $display("Pentru valorile A=%d B=%d SEL=%d iesirea este Z=%d", A, B, SEL, Z);
        #50 A=1; B=0; SEL=1;
        #55 $display("Pentru valorile A=%d B=%d SEL=%d iesirea este Z=%d", A, B, SEL, Z);
        #50 A=1; B=1; SEL=1;
        #55 $display("Pentru valorile A=%d B=%d SEL=%d iesirea este Z=%d", A, B, SEL, Z);
        #50 $stop;
        #50 $finish;
    end
endmodule
