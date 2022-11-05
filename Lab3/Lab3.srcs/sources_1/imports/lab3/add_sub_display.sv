`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// 
//////////////////////////////////////////////////////////////////////////////////


module add_sub_display(
	input [3:0] A,
	input [3:0] B,
	input select,
	output [5:0] S,
	output [6:0] D,
	output [3:0] an,
	output dp
	);

	// local signals
	logic  Cout;
    logic [3:0] L;
	// instantiate lower-level modules
	//is actually a 6 bit adder
	Adder_4bit A4(
	.A(A),
	.B(B),
	.Cin(select), //if select is high, it is also the Cin which completes
	               //the two's compliment conversion process
	.S(S),
	.Cout(Cout)
	);
	
	
	// instantiate module to limit values
	limit_val my_limit( .S(S), .L(L) );


	// instantiate module to drive 7-segment display
	//   (L) is a local signal
	//   .S  is a signal in the called module
	seg7 my_seg7( .val(L), .D(D) );
	
	// use digit 0 only. active low
	assign an = 4'b1110;
	
	// decimal point off
	assign dp = 1'b1;

endmodule

