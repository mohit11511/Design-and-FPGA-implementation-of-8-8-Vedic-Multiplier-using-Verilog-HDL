`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2020 16:20:34
// Design Name: 
// Module Name: vedic_4bit_multi_tb
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


module vedic_4bit_multi_tb();
reg [3:0] a;
reg [3:0] b;
wire [7:0] p;

vedic_4bit_multi v4m(.p(p),.a(a),.b(b));
initial
begin
a=0; b=0;
end
always @(a or b)
begin
repeat(31)
begin
#10 a=a+1; b=b+1;
end
end

endmodule
