`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2020 13:04:34
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb();
reg a;
reg b;
wire sum;
wire carry;

half_adder ha1(.sum(sum),.carry(carry),.a(a),.b(b));
initial
begin
a=0; b=0;
#100 a=1; b=0;
#100 a=0; b=1;
#100 a=1; b=1;
#100 $stop;
end

endmodule
