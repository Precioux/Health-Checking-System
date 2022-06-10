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
---  Module Name: Pressure Abnormality Detector
-----------------------------------------------------------*/
`timescale 1ns / 1ps
module tb_pressureAbnormalityDetector();
reg [5:0]a;
wire result;
pressureAbnormalityDetector r3(a,result);
initial
  begin
     a=6'b000000;
	  #10;
	  a=6'b000001;
	  #10;
	  a=6'b000010;
	  #10;
	  a=6'b000011;
	  #10;
	  a=6'b000100;
	  #10;
	  a=6'b000101;
	  #10;
	  a=6'b000110;
	  #10;
	  a=6'b000111;
	  #10;
	  a=6'b001000;
	  #10;
	  a=6'b001001;
	  #10;
	  a=6'b001010;
	  #10;
	  a=6'b001011;
	  #10;
	  a=6'b001100;
	  #10;
	  a=6'b001101;
	  #10;
	  a=6'b001110;
	  #10;
	  a=6'b001111;
	  #10;
	  a=6'b010000;
	  #10;
	  a=6'b010001;
	  #10;
	  a=6'b010010;
	  #10;
	  a=6'b010011;
	  #10;
	  a=6'b010100;
	  #10;
	  a=6'b010101;
	  #10;
	  a=6'b010110;
	  #10;
	  a=6'b010111;
	  #10;
	  a=6'b011000;
	  #10;
	  a=6'b011001;
	  #10;
	  a=6'b011010;
	  #10;
	  a=6'b011011;
	  #10;
	  a=6'b011100;
	  #10;
	  a=6'b011101;
	  #10;
	  a=6'b011110;
	  #10;
	  a=6'b011111;
	  #10;
	  a=6'b100000;
	  #10;
	  a=6'b100001;
	  #10;
	  a=6'b100010;
	  #10;
	  a=6'b100011;
	  #10;
	  a=6'b100100;
	  #10;
	  a=6'b100101;
	  #10;
	  a=6'b100110;
	  #10;
	  a=6'b100111;
	  #10;
	  a=6'b101000;
	  #10;
	  a=6'b101001;
	  #10;
	  a=6'b101010;
	  #10;
	  a=6'b101011;
	  #10;
	  a=6'b101100;
	  #10;
	  a=6'b101101;
	  #10;
	  a=6'b101110;
	  #10;
	  a=6'b101111;
	  #10;
	  a=6'b110000;
	  #10;
	  a=6'b110001;
	  #10;
	  a=6'b110010;
	  #10;
	  a=6'b110011;
	  #10;
	  a=6'b110100;
	  #10;
	  a=6'b110101;
	  #10;
	  a=6'b110110;
	  #10;
	  a=6'b110111;
	  #10;
	  a=6'b111000;
	  #10;
	  a=6'b111001;
	  #10;
	  a=6'b111010;
	  #10;
	  a=6'b111011;
	  #10;
	  a=6'b111100;
	  #10;
	  a=6'b111101;
	  #10;
	  a=6'b111110;
	  #10;
	  a=6'b111111;
	  #10
	  $finish;
	end
endmodule
	   
module pressureAbnormalityDetector(
    pressureData,
    pressureAbnormality
 );
input [5:0] pressureData;
output pressureAbnormality;
wire [1:0] result;
parityErrorChecker  r1(pressureData,result[0]);
pressureAnalyzer    r2(pressureData[4:0],result[1]);
wire notError,notPressure;
not(notError,result[0]);
not(notPressure,result[1]);
and out(pressureAbnormality,notPressure,notError);

endmodule
