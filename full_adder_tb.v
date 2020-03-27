`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2020 16:47:07
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb();
reg a;
reg b;
reg cin;
wire sum;
wire cout;

full_adder fa(.sum(sum),.cout(cout),.a(a),.b(b),.cin(cin));
initial
begin
a=1'b0; b=1'b0; cin=1'b0;
#10 a=1'b1; b=1'b0; cin=1'b0;
#10 a=1'b0; b=1'b1; cin=1'b0;
#10 a=1'b1; b=1'b1; cin=1'b0;
#10 a=1'b0; b=1'b0; cin=1'b1;
#10 a=1'b1; b=1'b0; cin=1'b1;
#10 a=1'b0; b=1'b1; cin=1'b1;
#10 a=1'b1; b=1'b1; cin=1'b1;
#10 $stop;
end

endmodule
