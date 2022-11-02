`timescale 1ns / 1ps

////////////////////////
// 
////////////////////////

module Adder_4bit(
	input [3:0] A,
	input [3:0] B,
	//input logic Cin,
	input logic Cin, //high is subtraction, low is addition, select for mux
	output logic [5:0] S, //output is 6 bit number
	output Cout
	
	);

	// local signals
	logic  C1;
	logic  C2;
	logic  C3;
	logic  C4;
	logic  C5;
	
	
	logic [5:0]A6;
	logic [5:0]B6;
	logic [5:0]B6bar;
	logic [5:0]Bout; //mux output
	
	assign B6bar = {1'b1, 1'b1, ~B[3:0]};
	assign B6 = {1'b0, 1'b0, B[3:0]};
	
	MUX mux(
	.B(B6),
	.Bbar(B6bar),
	.S(Cin),
	.Bout(Bout)
	);
  

	// instantiate lower-level modules
	Full_Adder FA0(
	.A(A[0]),
	.B(Bout[0]),
	.Cin(Cin),
	.S(S[0]),
	.Cout(C1)
	);

	Full_Adder FA1(
	.A(A[1]),
	.B(Bout[1]),
	.Cin(C1),
	.S(S[1]),
	.Cout(C2)
	);

	Full_Adder FA2(
	.A(A[2]),
	.B(Bout[2]),
	.Cin(C2),
	.S(S[2]),
	.Cout(C3)
	);

	Full_Adder FA3(
	.A(A[3]),
	.B(Bout[3]),
	.Cin(C3),
	.S(S[3]),
	.Cout(C4)
	);
	
	Full_Adder FA4(
	.A(A[4]),
	.B(Bout[4]),
	.Cin(C4),
	.S(S[4]),
	.Cout(C5)
	);
	
	Full_Adder FA5(
	.A(A[5]),
	.B(Bout[5]),
	.Cin(C5),
	.S(S[5]),
	.Cout(Cout)
	);
	
	
	
	
	
	
	

	       

    

endmodule

