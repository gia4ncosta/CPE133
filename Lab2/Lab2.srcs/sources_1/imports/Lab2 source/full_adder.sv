`timescale 1ns / 1ps

////////////////////////
// This file was automatically generated by CATE
////////////////////////

module Full_Adder(
	input A,
	input B,
	input  Cin,
	output S,
	output  Cout
	);

    //logic vars for S and Cout
    logic x, y, z, i, j, k;
    
    or(x, A, B, Cin); //x=A|B|Cin
    and(y, A, B, Cin); //y=A&B%Cin
    and(z, ~Cout, x); //z= ~Cout & (A | B | Cin)
    or(S, z, y);
    
	//assign S = ~Cout & (A | B | Cin) | (A & B & Cin);
	//assign Cout = (A & Cin) | (B & Cin) | (A & B);
	and(i, A, Cin);
	and(j, B, Cin);
	and(k, A, B);
	or(Cout, i, j, k);
	
endmodule

