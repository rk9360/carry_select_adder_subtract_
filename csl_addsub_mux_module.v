`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2025 13:06:52
// Design Name: 
// Module Name: csl_addsub_mux_module
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


module bitcsl(in1,in2,cin,COUT,SUM);
input in1,in2,cin;
output COUT,SUM;
wire sum0,sum1,c0,c1;
add add0(in1,in2,1'b0,c0,sum0);// calculation of sum for cin=0
add add1(in1,in2,1'b1,c1,sum1);// calculation of sum for cin=1
mux muxsum(sum0,sum1,cin,SUM);//selecting sum based on cin
mux muxcarry(c0,c1,cin,COUT);//selecting carry based on cin

endmodule
