/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9833016              9839039
--  Student Name: Amirhossein Poolad & Samin Mahdipour
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: 8 Bits Comparator
---  Description: Lab 06 Part 3
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module comparator8 (
	input [7:0] A ,
	input [7:0] B ,
	input l ,
	input e ,
	input g ,
	output lt ,
	output et ,
	output gt
);

	/* write your code here */
	wire [2:0] lt_;
	wire [2:0] et_;
	wire [2:0] gt_;
	comparator3 cmp1(A[2:0],B[2:0],l,e,g,lt_[0],et_[0],gt_[0]); //we cascade 3 3bit comparators to make an 8bit one
	comparator3 cmp2(A[5:3],B[5:3],lt_[0],et_[0],gt_[0],lt_[1],et_[1],gt_[1]);
	comparator3 cmp3({1'b1,A[7:6]},{1'b1,B[7:6]},lt_[1],et_[1],gt_[1],lt,et,gt);
	/* write your code here */

endmodule