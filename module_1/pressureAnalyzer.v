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
---  Module Name: Pressure Analyzer
-----------------------------------------------------------*/
`timescale 1ns / 1ps
 module tb_pressureAnalyzer();
 
reg [4:0] a;
wire w;
pressureAnalyzer tb(a,w);
initial 
    begin 
	  a=5'b00000;
	  #10;
	  a=5'b00001;
	  #10;
	  a=5'b00010;
	  #10
	  a=5'b00011;
	  #10;
	  a=5'b00100;
	  #10;
	  a=5'b00101;
	  #10;
	  a=5'b00110;
	  #10;
	  a=5'b00111;
	  #10;
	  a=5'b01000;
	  #10;
	  a=5'b01001;
	  #10;
	  a=5'b01010;
	  #10;
	  a=5'b01011;
	  #10;
	  a=5'b01100;
	  #10;
	  a=5'b01101;
	  #10;
	  a=5'b01110;
	  #10;
	  a=5'b01111;
	  #10;
	  a=5'b10000;
	  #10;
	  a=5'b10001;
	  #10;
	  a=5'b10010;
	  #10;
	  a=5'b10011;
	  #10;
	  a=5'b10100;
	  #10;
	  a=5'b10101;
	  #10;
	  a=5'b10110;
	  #10;
	  a=5'b10111;
	  #10;
	  a=5'b11000;
	  #10;
	  a=5'b11001;
	  #10;
	  a=5'b11010;
	  #10;
	  a=5'b11011;
	  #10;
	  a=5'b11100;
	  #10;
	  a=5'b11101;
	  #10;
	  a=5'b11110;
	  #10;
	  a=5'b11111;
	  #10;
	  $finish;
	 end
	endmodule
////////////////////////////////////////////////////////////////////////////
module pressureAnalyzer(
  pData,
 pWarning);
input [4:0] pData;
output pWarning;
wire [4:0] notg;
wire [3:0] andg;
not 
    n0(notg[4],pData[4]), //P'
    n1(notg[3],pData[3]), //Q'
	 n2(notg[2],pData[2]), //R'
	 n3(notg[1],pData[1]), //S'
	 n4(notg[0],pData[0]); //T'
and 
    a1(andg[0],notg[3],notg[2],pData[4]), //PQ'R'
	 a2(andg[1],notg[3],notg[1],pData[4]), //PQ'S'
	 a3(andg[2],notg[3],notg[0],pData[4]), //PQ'T'
	 a4(andg[3],notg[4],pData[3]); //P'Q
or   o(pWarning,andg[0],andg[1],andg[2],andg[3]); //PQ'R' + PQ'S' + PQ'T' + P'Q
	 
endmodule
