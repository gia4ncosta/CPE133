`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2022 03:36:37 PM
// Design Name: 
// Module Name: Lab0Sim
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


module Lab0Sim;
//no ports to test module
//declare inputs and outputs to give to your module //can be the same names as the ports of the module under test logic A, By C;
    logic A, B, C;
    logic Q;

    //Instantiate your module undertest
    Lab0 Lab0_inst ( .A(A), .B(B), .C(C), .Q(Q) );
    //list your test cases 
    initial
        begin
        
        //0
        A = 0; B = 0; C = 0;
        #10
        if (Q !== 0) $display("Error A:% B:%b C:%b", A, B, C);
        
        //1
        A = 0; B = 0; C = 1;
        #10
        if (Q !== 1) $display("Error A:%b B:%b C:%b", A, B, C);
        
         //2
        A = 0; B = 1; C = 0;
        #10
        if (Q !== 0) $display("Error A:%b B:%b C:%b", A, B, C);
            $display("Finished");
            
         //3
        A = 0; B = 1; C = 1;
        #10
        if (Q !== 1) $display("Error A:%b B:%b C:%b", A, B, C);
        
         //4
        A = 1; B = 0; C = 0;
        #10
        if (Q !== 0) $display("Error A:%b B:%b C:%b", A, B, C);
        
         //5
        A = 1; B = 0; C = 1;
        #10
        if (Q !== 0) $display("Error A:%b B:%b C:%b", A, B, C);
        
         //6
        A = 1; B = 1; C = 0;
        #10
        if (Q !== 0) $display("Error A:%b B:%b C:%b", A, B, C);
        
         //7
        A = 1; B = 1; C = 1;
        #10
        if (Q !== 1) $display("Error A:%b B:%b C:%b", A, B, C);
        
        $display("Finished");
      end
endmodule
