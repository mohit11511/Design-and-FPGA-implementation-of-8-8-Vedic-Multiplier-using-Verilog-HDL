`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2020 13:14:01
// Design Name: 
// Module Name: vedic_4bit_multi
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


module vedic_4bit_multi(
output [7:0] p,
input [3:0] a,
input [3:0] b
    );
    
// common wire for all inputs
wire [17:0] y;    
// wire for p[1]
wire [1:0]x;
// wire for p[2]
wire s1,s2,s3,s4;
wire c1,c2,c3;
wire [1:0] w;
// wire for p[3]
//wire [3:0]y;
wire c4,c5,c6,c7;
wire s5,s6,s7;
wire x1;
// wire for p[4]
//wire [7:4]y;
wire c8,c9,c10,c11;
wire s8,s9,s10;
wire x2;
// wire for p[5]
//wire [12:8]y;
wire c12,c13;
wire s11;
wire z1,z2;
wire x3;
// wire for p[6]
//wire [17:13]y;
wire c14,c15,c16,c17;
wire s12;
wire x4,x5,x6;
// wire for p[7]
wire z3,z4;

// Declaration of p[0]
assign p[0]=a[0]&b[0];
// Declaration of p[1]
assign x[0]=a[1]&b[0];
assign x[1]=a[0]&b[1];
assign p[1]=x[0]^x[1];
// Declaration of p[2]
assign s1=a[1]&a[0]&b[1]&b[0];
assign s2=a[2]&b[0];
assign s3=a[1]&b[1];
assign s4=a[0]&b[2];
half_adder ha0(w[0],c1,s3,s4);
half_adder ha1(w[1],c2,s1,s2);
half_adder ha2(p[2],c3,w[0],w[1]);
// Declaration of p[3]
assign y[0]=a[3]&b[0];
assign y[1]=a[2]&b[1];
assign y[2]=a[1]&b[2];
assign y[3]=a[0]&b[3];
half_adder ha3(s5,c4,y[0],y[1]);
half_adder ha4(s6,c5,y[2],y[3]);
half_adder ha5(x1,c6,s5,s6);
assign s7=c1^c2^c3;
half_adder ha6(p[3],c7,x1,s7);
// Declaration of p[4]
assign y[4]=s1&s2&s3&s4;
assign y[5]=a[1]&b[3];
assign y[6]=a[2]&b[2];
assign y[7]=a[3]&b[1];
half_adder ha7(s8,c8,y[4],y[5]);
half_adder ha8(s9,c9,y[6],y[7]);
half_adder ha9(x2,c10,s8,s9);
assign s10=c4^c5^c6^c7;
half_adder ha10(p[4],c11,x2,s10);
// Declaration of p[5]
assign y[8]=a[3]&b[2];
assign y[9]=a[2]&b[3];
assign y[10]=c4&c5;
assign y[11]=c4&s6&s7;
assign y[12]=c5&s5&s7;
assign z1=y[8]^y[9];
assign z2=y[10]^y[11]^y[12];
half_adder ha11(x3,c12,z1,z2);
assign s11=c8^c9^c10^c11;
half_adder ha12(p[5],c13,x3,s11);
// Declaration of p[6]
assign y[13]=a[3]&b[3];
assign y[14]=a[2]&b[2]&a[3]&b[3];
half_adder ha13(x4,c14,y[13],y[14]);
half_adder ha14(x5,c15,c12,x4);
assign y[15]=c8&c9;
assign y[16]=c8&s9&s10;
assign y[17]=s10&c9&s8;
assign s12=y[15]|y[16]|y[17];
half_adder ha15(x6,c16,x5,s12);
half_adder ha16(p[6],c17,x6,c13);
// Declaration of p[7]
assign z3=c14|c15;
assign z4=z3|c16;
assign p[7]=z4|c17;

endmodule
