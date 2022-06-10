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
---  Module Name: 2 Bit Adder
---  Description:
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module adder_2bit(A,B,S,cout);

input [1:0] A;
input [1:0] B;
output [1:0] S;
output cout;

	wire cin;
	fullAdder FA0(A[0],B[0],1'b0,S[0],cin);
	fullAdder FA1(A[1],B[1],cin,S[1],cout);

endmodule