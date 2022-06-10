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
---  Module Name: complementor 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module complementor(in,fin,out,fout);
	input in;
	input fin;
	output out;
	output fout;
	//moshabeh soal 10 tamrin 4om amal mikonim
	xor x(out,in,fin);
	or o(fout,in,fin);
endmodule
