`timescale 1ns / 1ps

////////////////////////
// 
////////////////////////

module limit_val(
	input logic [5:0] S,
	output logic [3:0] L    // keyword "logic" must be here!
	);

	// if/else statement
	always_comb
	begin
	//Checks if 6-bit adder signed bit is 1. If its 1, the output is negative and must be limited to 0
	   if (S[5] == 1'b1)     // note: S is treated as positive!
	       L = 4'b0000;
	       
    //Checks if 6-bit adder output is equal to or more than 9. If greater, output is limited to 9. 
	   else if (S[4] == 1'b1 || ((S[3] == 1'b1) && (S[2:0] !== 3'b000)))
	       L = 4'b1001;
       else
       //Output does not need to be limited
           L = S[3:0];
           
    end
endmodule

