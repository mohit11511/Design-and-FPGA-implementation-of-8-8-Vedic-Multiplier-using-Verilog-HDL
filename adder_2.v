`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2020 18:15:22
// Design Name: 
// Module Name: adder_2
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


module adder_2(
output [7:0] s,
input [7:0] a,
input [3:0] b
    );

wire [6:0] c;
wire cout;

half_adder ha2_1(s[0],c[0],a[0],b[0]);
full_adder fa2_1(s[1],c[1],a[1],b[1],c[0]);
full_adder fa2_2(s[2],c[2],a[2],b[2],c[1]);
full_adder fa2_3(s[3],c[3],a[3],b[3],c[2]);
half_adder ha2_2(s[4],c[4],a[4],c[3]);
half_adder ha2_3(s[5],c[5],a[5],c[4]);
half_adder ha2_4(s[6],c[6],a[6],c[5]);
half_adder ha2_5(s[7],cout,a[7],c[6]);

endmodule
