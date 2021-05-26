//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun Mar 21 00:35:45 2021
//Host        : DESKTOP-FB7FH5H running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (Op1_0,
    Op2_0,
    Res_0);
  input [7:0]Op1_0;
  input [7:0]Op2_0;
  output [7:0]Res_0;

  wire [7:0]Op1_0;
  wire [7:0]Op2_0;
  wire [7:0]Res_0;

  design_1 design_1_i
       (.Op1_0(Op1_0),
        .Op2_0(Op2_0),
        .Res_0(Res_0));
endmodule
