`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2025 13:20:55
// Design Name: 
// Module Name: bits_8_addandsum
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


module csl8bit(A,B_xor,cin,COUT,sum);
input [7:0]A,B_xor;
input cin;
output [7:0]sum;
output COUT;//output carry
wire [6:0]cout;//store inner carry
wire [7:0]B;
assign B=B_xor^{8{cin}};

//8 bit sum
bitcsl sum0(A[0],B[0],cin,cout[0],sum[0]);
bitcsl sum1(A[1],B[1],cout[0],cout[1],sum[1]);
bitcsl sim2(A[2],B[2],cout[1],cout[2],sum[2]);
bitcsl sum3(A[3],B[3],cout[2],cout[3],sum[3]);
bitcsl sum4(A[4],B[4],cout[3],cout[4],sum[4]);
bitcsl sum5(A[5],B[5],cout[4],cout[5],sum[5]);
bitcsl sum6(A[6],B[6],cout[5],cout[6],sum[6]);
bitcsl sum7(A[7],B[7],cout[6],COUT,sum[7]);
endmodule
