`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2020 16:44:24
// Design Name: 
// Module Name: full_adder
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


module full_adder(
output sum,
output cout,
input a,
input b,
input cin
    );

wire w1,w2,w3;
assign sum=a^b^cin;
assign w1=a&b;
assign w2=b&cin;
assign w3=cin&a;
assign cout=w1|w2|w3;

endmodule
