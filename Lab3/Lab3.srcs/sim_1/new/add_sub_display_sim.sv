`timescale 1ns / 1ps

////////////////////////
// This file was automatically generated by CATE
// Comments and Notes: 
////////////////////////

module add_sub_display_sim; //no ports to test module

    // declare inputs and outputs for your module
    // can be the same names as the ports of the module under test
    logic [3:0] A;
    logic [3:0] B;
    logic select;
    logic [5:0] S;
	logic [6:0] D;
	logic [3:0] an;
	logic dp;
    
    //Instantiate your module undertest
    add_sub_display my_adder_sub (.A(A), .B(B), .select(select), .S(S), .D(D), .an(an), .dp(dp));

    //list your test cases
    initial 
    
        begin
        
        //saturation test cases 
        A = 4'b1111; B = 4'b0000; select = 0; //15 + 0 - should be limited to 9
        #10
        
        A = 4'b0000; B = 4'b1111; select= 1;  //0 - 15 - should be limited to 0
        #10
        
        A = 4'b1111; B = 4'b0111; select = 1; //15 - 7 - should be 8
        #10
        
        A = 4'b0001; B = 4'b0010; select = 1; //1 + 2 - should be 3
        #10
     
        
//	// THIS MAY NOT BE CORRECT...!
//        A = 1111; B = 0001; mode = 0; Cin = 0;
//        #10

//        A = 0011; B = 0001; Cin = 0;
//        #10

       $display("Finished");  
      end                                 
    
endmodule
