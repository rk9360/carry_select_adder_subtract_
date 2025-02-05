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
reg [22:0]A,B,B2;
reg cin;
wire [22:0]sum;
wire COUT;
integer i;
//wire z;
reg [22:0]diff;
reg [22:0]sum_correct;
//wire carry;



csl23bit uut(A,B,cin,COUT,sum);
/*initial begin
 A=23'd255;B=23'd254;cin=1'b1;
#10 A=23'd1;B=23'd16;cin=1'b0;
//#10 A=8'd9;B=8'd5;cin=1;
//#10 A=8'd3;B=8'd5;cin=0;
#10 $finish;
end
*/
initial 
for(i=0;i<=7'd100;i=i+1) begin
 A=$random;
 B=$random;
 cin=$random;
 if (cin) begin
 B2=(~B)+1;
 sum_correct= A+B2;
 end
 else begin
  sum_correct= A+B;
 end
 assign diff=sum-sum_correct;
 #10;
end

  
initial
#1000 

$finish;
endmodule
