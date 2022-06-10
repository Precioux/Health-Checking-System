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
---  Module Name: mux2x1
-----------------------------------------------------------*/
`timescale 1ns / 1ps
module mux2x1(i0,i1,sel,out);
input i0;
input i1;
input sel;
output out;

wire a1,a2,notSel;
not(notSel,sel);
and(a1,i0,notSel);
and(a2,i1,sel);
or(out,a1,a2);

endmodule
