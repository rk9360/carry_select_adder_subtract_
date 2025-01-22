`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2025 13:25:50
// Design Name: 
// Module Name: bit8_csl_add_sub_tb
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


module csl8bit_tb();
reg [7:0]A,B;
reg cin;
wire [7:0]sum;
wire COUT;

csl8bit uut(A,B,cin,COUT,sum);
initial begin
 A=8'd5;B=8'd2;cin=1'b1;
#10 A=8'd1;B=8'd16;cin=1'b0;
#10 A=8'd9;B=8'd5;cin=1;
#10 A=8'd3;B=8'd5;cin=0;
#10 $finish;
end

endmodule
