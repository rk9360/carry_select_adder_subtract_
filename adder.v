`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.01.2025 12:21:30
// Design Name: 
// Module Name: adder
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


module add(a,b,cin,cout,sum);
input a,b,cin;
output sum,cout;

//wire w1; 
//assign w1= b^cin;

assign sum = a ^ b ^ cin;
assign cout = (a & b) | (b & cin) | (a & cin); 

endmodule
