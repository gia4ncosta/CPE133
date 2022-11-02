`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Giancarlo Acosta
// 
// Create Date: 10/14/2022 03:23:15 PM
// Design Name: Mode Switcher
// Module Name: Mode
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


module Mode(
    input [3:0] A,
    input [3:0] B,
    input  Cin,
    input M, //switch for mode 
    output [3:0] S,
    output  Cout
    );
    
    //logic
    and(M, Cout, S[0], S[1], S[2], S[3])
    
    
    
    
endmodule
