`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.01.2025 00:39:49
// Design Name: 
// Module Name: csl_add_sub_23bit
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


module csl23bit(A,B_xor,cin,COUT,sum);
input [22:0]A,B_xor;
input cin;
output [22:0]sum;
output COUT;//output carry
wire [21:0]cout;//store inner carry
wire [7:0]B;
assign B=B_xor^{8{cin}};
//8 bit sum
bitcsl sum0(A[0],B[0],cin,cout[0],sum[0]);
bitcsl sum1(A[1],B[1],cout[0],cout[1],sum[1]);
bitcsl sum2(A[2],B[2],cout[1],cout[2],sum[2]);
bitcsl sum3(A[3],B[3],cout[2],cout[3],sum[3]);
bitcsl sum4(A[4],B[4],cout[3],cout[4],sum[4]);
bitcsl sum5(A[5],B[5],cout[4],cout[5],sum[5]);
bitcsl sum6(A[6],B[6],cout[5],cout[6],sum[6]);
bitcsl sum7(A[7],B[7],cout[6],cout[7],sum[7]);
bitcsl sum8(A[8],B[8],cout[7],cout[8],sum[8]);
bitcsl sum9(A[9],B[9],cout[8],cout[9],sum[9]);
bitcsl sum10(A[10],B[10],cout[9],cout[10],sum[10]);
bitcsl sum11(A[11],B[11],cout[10],cout[11],sum[11]);
bitcsl sum12(A[12],B[12],cout[11],cout[12],sum[12]);
bitcsl sum13(A[13],B[13],cout[12],cout[13],sum[13]);
bitcsl sum14(A[14],B[14],cout[13],cout[14],sum[14]);
bitcsl sum15(A[15],B[15],cout[14],cout[15],sum[15]);
bitcsl sum16(A[16],B[16],cout[15],cout[16],sum[16]);
bitcsl sum17(A[17],B[17],cout[16],cout[17],sum[17]);
bitcsl sum18(A[18],B[18],cout[17],cout[18],sum[18]);
bitcsl sum19(A[19],B[19],cout[18],cout[19],sum[19]);
bitcsl sum20(A[20],B[20],cout[19],cout[20],sum[20]);
bitcsl sum21(A[21],B[21],cout[20],cout[21],sum[21]);
bitcsl sum22(A[22],B[22],cout[21],COUT,sum[22]);

/*wire [22:0]B;
assign B=B_xor^{23{cin}};
wire [22:0]carry;
assign carry[0]=cin;
genvar j;

generate for(j=0;j<=22;j=j+1) begin: adder_sub

bitcsl sum(A[j],B[j],carry[j],carry[j+1],sum[j]);
end
endgenerate */

endmodule
