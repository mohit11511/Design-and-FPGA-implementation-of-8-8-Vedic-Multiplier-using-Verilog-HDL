`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2020 19:31:37
// Design Name: 
// Module Name: vedic_8bit_multi_tb
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


module vedic_8bit_multi_tb();
reg [7:0] a;
reg [7:0] b;
wire [15:0] p;

vedic_8bit_multi vdm1(.p(p),.a(a),.b(b));
initial
begin
a=0; b=0;
end

always @(a or b)
begin
repeat(511)
begin
#10 a=a+1; b=b+1;
end
end

endmodule
