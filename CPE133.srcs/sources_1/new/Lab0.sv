`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Giancarlo Acosta
// 
// Create Date: 09/23/2022 03:01:26 PM
// Design Name: 
// Module Name: Lab0
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


 module Lab0(
    input A,
    input B,
    input C,
    output Q
    );
    
    assign Q = ~(A | B) | (B & C);
endmodule
