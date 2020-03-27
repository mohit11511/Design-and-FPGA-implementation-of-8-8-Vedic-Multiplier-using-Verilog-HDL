`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2020 16:54:20
// Design Name: 
// Module Name: adder_1
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


module adder_1(
output [7:0] s,
output cout,
input [7:0] a,
input [7:0] b
    );

wire [6:0]c;
half_adder ha1_1(s[0],c[0],a[0],b[0]);
full_adder fa1_1(s[1],c[1],a[1],b[1],c[0]);
full_adder fa1_2(s[2],c[2],a[2],b[2],c[1]);
full_adder fa1_3(s[3],c[3],a[3],b[3],c[2]);
full_adder fa1_4(s[4],c[4],a[4],b[4],c[3]);
full_adder fa1_5(s[5],c[5],a[5],b[5],c[4]);
full_adder fa1_6(s[6],c[6],a[6],b[6],c[5]);
full_adder fa1_7(s[7],cout,a[7],b[7],c[6]);

endmodule
