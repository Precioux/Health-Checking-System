/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2020-2021
--  *******************************************************
--  Student ID  : 9833016              9839039
--  Student Name: Amirhossein Poolad & Samin Mahdipour
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: absoluteCalculator
-----------------------------------------------------------*/
`timescale 1ns / 1ps
module absoluteCalculator(in,out);
input [7:0] in;
output [7:0] out;
wire [7:0] complemented;
wire [7:0] fin;

complementor cmp0(in[0],1'b0,complemented[0],fin[0]); //complement all the bits
complementor cmp1(in[1],fin[0],complemented[1],fin[1]);
complementor cmp2(in[2],fin[1],complemented[2],fin[2]);
complementor cmp3(in[3],fin[2],complemented[3],fin[3]);
complementor cmp4(in[4],fin[3],complemented[4],fin[4]);
complementor cmp5(in[5],fin[4],complemented[5],fin[5]);
complementor cmp6(in[6],fin[5],complemented[6],fin[6]);
complementor cmp7(in[7],fin[6],complemented[7],fin[7]);

mux2x1_8bit m(in,complemented,in[7],out); //select the complemented number if the most significant digit is 1

endmodule
