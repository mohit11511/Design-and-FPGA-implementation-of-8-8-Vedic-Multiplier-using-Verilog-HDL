`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2020 19:12:19
// Design Name: 
// Module Name: vedic_8bit_multi
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


module vedic_8bit_multi(
output [15:0] p,
input [7:0] a,
input [7:0] b
    );

// wire for vedic_4bit_multi
wire [7:0] m1;
wire [7:0] m2;
wire [7:0] m3;
wire [7:0] m4;
// wire for adders
wire c;
wire [3:0] x;
wire [7:0] m5;
wire [7:0] m6;
wire [4:0] m7;
wire [7:0] m8;

vedic_4bit_multi vdm4_1(m1[7:0],a[3:0],b[3:0]);
vedic_4bit_multi vdm4_2(m2[7:0],a[7:4],b[3:0]);
vedic_4bit_multi vdm4_3(m3[7:0],a[3:0],b[7:4]);
vedic_4bit_multi vdm4_4(m4[7:0],a[7:4],b[7:4]);
adder_1 ad1(m5[7:0],c,m2[7:0],m3[7:0]);
assign x=m1[7:4];
adder_2 ad2(m6[7:0],m5[7:0],x);
assign m7={c,m6[7:4]};
adder_3 ad3(m8[7:0],m4[7:0],m7);

// Declaration of outputs
assign p[3:0]=m1[3:0];
assign p[7:4]=m6[3:0];
assign p[15:8]=m8[7:0];
//assign p={m8[7:0],m6[3:0],m1[3:0]};

endmodule
