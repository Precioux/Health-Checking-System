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
---  Module Name: mux2x1_8bit
-----------------------------------------------------------*/
`timescale 1ns / 1ps
module mux2x1_8bit(i0,i1,sel,out);
input [7:0] i0;
input [7:0] i1;
input sel;
output [7:0] out;

mux2x1 mux0(i0[0],i1[0],sel,out[0]);
mux2x1 mux1(i0[1],i1[1],sel,out[1]);
mux2x1 mux2(i0[2],i1[2],sel,out[2]);
mux2x1 mux3(i0[3],i1[3],sel,out[3]);
mux2x1 mux4(i0[4],i1[4],sel,out[4]);
mux2x1 mux5(i0[5],i1[5],sel,out[5]);
mux2x1 mux6(i0[6],i1[6],sel,out[6]);
mux2x1 mux7(i0[7],i1[7],sel,out[7]);

endmodule
