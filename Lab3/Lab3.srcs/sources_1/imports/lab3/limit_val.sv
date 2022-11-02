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
	   if (S[5] == 1'b1)     // note: S is treated as positive!
	       L = 4'b0000;
	   else if (S[4] == 1'b1 || ((S[3] == 1'b1) && (S[2:0] !== 3'b000))) //if the 3rd bit is 1 and 0-2 are 0.
	       L = 4'b1001;
       else
           L = S[3:0];
           
    end
endmodule

