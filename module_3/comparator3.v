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
---  Module Name: 3 Bits Comparator Gate Level
---  Description: Lab 06 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module comparator3 (
	input [2:0] A ,
	input [2:0] B ,
	input l ,
	input e ,
	input g ,
	output lt ,
	output et ,
	output gt
);
	
	/*wire nA0,nA1,nA2,nB0,nB1,nB2;
	not(nA0,A[0]);
	not(nA1,A[1]);
	not(nA2,A[2]);
	not(nB0,B[0]);
	not(nB1,B[1]);
	not(nB2,B[2]);
	
	wire p0,p1,p2;
	xnor(p0,A[0],B[0]); //Zeroth bit is equal
	xnor(p1,A[1],B[1]);
	xnor(p2,A[2],B[2]);
	
	wire l0,l1,l2,g0,g1,g2;
	and(l0,nA0,B[0]); //A's zeroth bit is smaller
	and(l1,nA1,B[2]);
	and(l2,nA2,B[2]);
	and(g0,A[0],nB0); //A's zeroth bit is greater
	and(g1,A[1],nB1);
	and(g2,A[2],nB2);
	
	and(et,p0,p1,p2,e); //the two numbers are equal*/
	
	assign et = (A[0]~^B[0])&&(A[1]~^B[1])&&(A[2]~^B[2])&&e;
	                                                           //greater if:
	assign gt = (A[2]&&(~B[2]))|                               //A's 2nd bit is bigger
	            ((A[2]~^B[2])&&A[1]&&(~B[1]))|                 //2nd bit equal bit 1st big bigger
	            ((A[1]~^B[1])&&(A[2]~^B[2])&&A[0]&&(~B[0]))|   //2nd and 1st bit equal but zeroth bit bigger
	            ((A[0]~^B[0])&&(A[1]~^B[1])&&(A[2]~^B[2])&&g); //all equal but g is set to 1
					
	assign lt = (B[2]&&(~A[2]))|                               //same as above but A and B are switched
	            ((B[2]~^A[2])&&B[1]&&(~A[1]))|
	            ((B[1]~^A[1])&&(B[2]~^A[2])&&B[0]&&(~A[0]))|
	            ((B[0]~^A[0])&&(B[1]~^A[1])&&(B[2]~^A[2])&&l);
endmodule