//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun Mar 21 00:35:45 2021
//Host        : DESKTOP-FB7FH5H running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (Op1_0,
    Op2_0,
    Res_0);
  input [7:0]Op1_0;
  input [7:0]Op2_0;
  output [7:0]Res_0;

  wire [7:0]Op1_0_1;
  wire [7:0]Op2_0_1;
  wire [7:0]util_vector_logic_0_Res;

  assign Op1_0_1 = Op1_0[7:0];
  assign Op2_0_1 = Op2_0[7:0];
  assign Res_0[7:0] = util_vector_logic_0_Res;
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(Op1_0_1),
        .Op2(Op2_0_1),
        .Res(util_vector_logic_0_Res));
endmodule
