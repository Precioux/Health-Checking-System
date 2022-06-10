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
---  Module Name: fullAdder
-----------------------------------------------------------*/
`timescale 1ns / 1ps

module fullAdder(
	input a ,
	input b ,
	input ci ,
	output s ,
	output co
);

	/* write your code here */
	wire s1,c1,c2;
	xor sum1(s1,a,b);
	and carry1(c1,a,b);
	xor sum2(s,s1,ci);
	and carry2(c2,s1,ci);
	or carry3(co,c2,c1);
	/* write your code here */

endmodule