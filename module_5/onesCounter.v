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
---  Module Name: onesCounter
-----------------------------------------------------------*/
`timescale 1ns / 1ps
module onesCounter(in,out);
input [7:0] in;
output [3:0] out;

	wire [1:0] pair1;
	wire [1:0] pair2;
	wire [1:0] pair3;
	wire [1:0] pair4;
	wire [2:0] triple1;
	wire [2:0] triple2;
	halfAdder HA1(in[7],in[6],pair1[0],pair1[1]);
	halfAdder HA2(in[5],in[4],pair2[0],pair2[1]);
	halfAdder HA3(in[3],in[2],pair3[0],pair3[1]);
	halfAdder HA4(in[1],in[0],pair4[0],pair4[1]);
	adder_2bit A1(pair1,pair2,triple1[1:0],triple1[2]);
	adder_2bit A2(pair3,pair4,triple2[1:0],triple2[2]);
	adder_3bit A3(triple1,triple2,out[2:0],out[3]);

endmodule
