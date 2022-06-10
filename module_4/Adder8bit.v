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
--  Source: https://www.programmersought.com/article/61824874338/
--*/

/*-----------------------------------------------------------
---  Module Name: 8 Bit Adder
---  Description: 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
`timescale 1ns/1ns
module tb_Adder8bit();
	reg [7:0]A,B;
	reg Ci;
	wire [7:0]Sum,Co;
	Adder8bit b(Sum,Co,A,B,Ci);
initial
	begin
	
	end
endmodule

module Adder8bit(S,Cout,A,B,Cin);
	input [7:0] A,B;
	input Cin;
	output [7:0]S,Cout;
		full_adder	UO(S[0],Cout[0],A[0],B[0],Cin);
		full_adder	U1(S[1],Cout[1],A[1],B[1],Cout[0]);
		full_adder 	U2(S[2],Cout[2],A[2],B[2],Cout[1]);
		full_adder	U3(S[3],Cout[3],A[3],B[3],Cout[2]);
		full_adder	U4(S[4],Cout[4],A[4],B[4],Cout[3]);
		full_adder	U5(S[5],Cout[5],A[5],B[5],Cout[4]);
		full_adder	U6(S[6],Cout[6],A[6],B[6],Cout[5]);
		full_adder	U7(S[7],Cout[7],A[7],B[7],Cout[6]);
endmodule 