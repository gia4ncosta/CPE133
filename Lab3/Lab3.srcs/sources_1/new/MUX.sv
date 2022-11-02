`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2022 03:40:08 PM
// Design Name: 
// Module Name: MUX
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


module MUX(
    input [5:0]B, //non negated B input
    input [5:0]Bbar, //negated B input
    input S, //select for mux
    output logic [5:0]Bout
  
    );
    
    always_comb
    begin
    if(S)
        Bout = Bbar;
    else
        Bout = B;
    end           
endmodule
