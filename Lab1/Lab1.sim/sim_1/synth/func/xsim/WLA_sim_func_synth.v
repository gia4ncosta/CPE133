// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sun Oct  9 23:46:42 2022
// Host        : GIANCARLOAC78F9 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/duggie/CPE133/Lab1/Lab1.sim/sim_1/synth/func/xsim/WLA_sim_func_synth.v
// Design      : WLA_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module WLA1
   (wLOW_OBUF,
    w2_IBUF,
    w1_IBUF,
    w0_IBUF);
  output wLOW_OBUF;
  input w2_IBUF;
  input w1_IBUF;
  input w0_IBUF;

  wire w0_IBUF;
  wire w1_IBUF;
  wire w2_IBUF;
  wire wLOW_OBUF;

  LUT3 #(
    .INIT(8'h15)) 
    wLOW
       (.I0(w2_IBUF),
        .I1(w1_IBUF),
        .I2(w0_IBUF),
        .O(wLOW_OBUF));
endmodule

(* NotValidForBitStream *)
module WLA_top
   (w2,
    w1,
    w0,
    wHIGH,
    wLOW);
  input w2;
  input w1;
  input w0;
  output wHIGH;
  output wLOW;

  wire w0;
  wire w0_IBUF;
  wire w1;
  wire w1_IBUF;
  wire w2;
  wire w2_IBUF;
  wire wHIGH;
  wire wHIGH_OBUF;
  wire wLOW;
  wire wLOW_OBUF;

  WLA1 m1
       (.w0_IBUF(w0_IBUF),
        .w1_IBUF(w1_IBUF),
        .w2_IBUF(w2_IBUF),
        .wLOW_OBUF(wLOW_OBUF));
  IBUF w0_IBUF_inst
       (.I(w0),
        .O(w0_IBUF));
  IBUF w1_IBUF_inst
       (.I(w1),
        .O(w1_IBUF));
  IBUF w2_IBUF_inst
       (.I(w2),
        .O(w2_IBUF));
  OBUF wHIGH_OBUF_inst
       (.I(wHIGH_OBUF),
        .O(wHIGH));
  LUT2 #(
    .INIT(4'h8)) 
    wHIGH_OBUF_inst_i_1
       (.I0(w2_IBUF),
        .I1(w1_IBUF),
        .O(wHIGH_OBUF));
  OBUF wLOW_OBUF_inst
       (.I(wLOW_OBUF),
        .O(wLOW));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
