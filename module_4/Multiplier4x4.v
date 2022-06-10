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
---  Module Name: 4x4 Multiplier
-----------------------------------------------------------*/

//Source: http://www.barrywatson.se/dd/dd_multiplier_simple.html

`timescale 1ns / 1ps
module Multiplier4x4(
P, 
A, 
B );
   output [7:0] P; 
   input [3:0] 	A; 
   input [3:0] 	B; 

   wire [3:0] 	in0; 
   wire [3:0] 	Add0;
   wire [3:0] 	Sum0;   
   wire 	Carry0;  
   wire [3:0] 	Add1;
   wire [3:0] 	in1;
   wire [3:0] 	Sum1;    
   wire Carry1; 
   wire [3:0] 	in2;
   wire [3:0] 	Add2; 

 
   and(P[0], A[0], B[0]);       
   and(in0[0], A[1], B[0]);
   and(in0[1], A[2], B[0]);
   and(in0[2], A[3], B[0]);
   assign in0[3] = 0;

  
   and(Add0[0], A[0], B[1]);
   and(Add0[1], A[1], B[1]);
   and(Add0[2], A[2], B[1]);
   and(Add0[3], A[3], B[1]);
   ripple_carry_adder r(Sum0, Carry0, in0, Add0);
   assign P[1] = Sum0[0];
   
  
   assign in1[0] = Sum0[1];
   assign in1[1] = Sum0[2];
   assign in1[2] = Sum0[3];
   assign in1[3] = Carry0;
   
  
   and(Add1[0], A[0], B[2]);
   and(Add1[1], A[1], B[2]);
   and(Add1[2], A[2], B[2]);
   and(Add1[3], A[3], B[2]);

   ripple_carry_adder rc1(Sum1, Carry1, in1, Add1); 
   assign P[2] = Sum1[0];
   
 
   assign in2[0] = Sum1[1];
   assign in2[1] = Sum1[2];
   assign in2[2] = Sum1[3];
   assign in2[3] = Carry1;
   

   and(Add2[0], A[0], B[3]);
   and(Add2[1], A[1], B[3]);
   and(Add2[2], A[2], B[3]);
   and(Add2[3], A[3], B[3]);

   ripple_carry_adder rc2(P[6:3], P[7], in2, Add2); 
endmodule
