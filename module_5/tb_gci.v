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
---  Module Name: Glycemic Index Calculator - Test Bench
-----------------------------------------------------------*/
`timescale 1ns / 1ps
module tb_gic();

reg [7:0] bloodSensor;
wire [3:0] glycemicIndex;

glycemicIndexCalculator testGIC(bloodSensor,glycemicIndex);

initial
	begin
		bloodSensor = 8'b00000000;
		#5;
		bloodSensor = 8'b00000001;
		#5;
		bloodSensor = 8'b00000010;
		#5;
		bloodSensor = 8'b00000011;
		#5;
		bloodSensor = 8'b00000100;
		#5;
		bloodSensor = 8'b00000101;
		#5;
		bloodSensor = 8'b00000110;
		#5;
		bloodSensor = 8'b00000111;
		#5;
		bloodSensor = 8'b00001000;
		#5;
		bloodSensor = 8'b00001001;
		#5;
		bloodSensor = 8'b00001010;
		#5;
		bloodSensor = 8'b00001011;
		#5;
		bloodSensor = 8'b00001100;
		#5;
		bloodSensor = 8'b00001101;
		#5;
		bloodSensor = 8'b00001110;
		#5;
		bloodSensor = 8'b00001111;
		#5;
		bloodSensor = 8'b00010000;
		#5;
		bloodSensor = 8'b00010001;
		#5;
		bloodSensor = 8'b00010010;
		#5;
		bloodSensor = 8'b00010011;
		#5;
		bloodSensor = 8'b00010100;
		#5;
		bloodSensor = 8'b00010101;
		#5;
		bloodSensor = 8'b00010110;
		#5;
		bloodSensor = 8'b00010111;
		#5;
		bloodSensor = 8'b00011000;
		#5;
		bloodSensor = 8'b00011001;
		#5;
		bloodSensor = 8'b00011010;
		#5;
		bloodSensor = 8'b00011011;
		#5;
		bloodSensor = 8'b00011100;
		#5;
		bloodSensor = 8'b00011101;
		#5;
		bloodSensor = 8'b00011110;
		#5;
		bloodSensor = 8'b00011111;
		#5;
		bloodSensor = 8'b00100000;
		#5;
		bloodSensor = 8'b00100001;
		#5;
		bloodSensor = 8'b00100010;
		#5;
		bloodSensor = 8'b00100011;
		#5;
		bloodSensor = 8'b00100100;
		#5;
		bloodSensor = 8'b00100101;
		#5;
		bloodSensor = 8'b00100110;
		#5;
		bloodSensor = 8'b00100111;
		#5;
		bloodSensor = 8'b00101000;
		#5;
		bloodSensor = 8'b00101001;
		#5;
		bloodSensor = 8'b00101010;
		#5;
		bloodSensor = 8'b00101011;
		#5;
		bloodSensor = 8'b00101100;
		#5;
		bloodSensor = 8'b00101101;
		#5;
		bloodSensor = 8'b00101110;
		#5;
		bloodSensor = 8'b00101111;
		#5;
		bloodSensor = 8'b00110000;
		#5;
		bloodSensor = 8'b00110001;
		#5;
		bloodSensor = 8'b00110010;
		#5;
		bloodSensor = 8'b00110011;
		#5;
		bloodSensor = 8'b00110100;
		#5;
		bloodSensor = 8'b00110101;
		#5;
		bloodSensor = 8'b00110110;
		#5;
		bloodSensor = 8'b00110111;
		#5;
		bloodSensor = 8'b00111000;
		#5;
		bloodSensor = 8'b00111001;
		#5;
		bloodSensor = 8'b00111010;
		#5;
		bloodSensor = 8'b00111011;
		#5;
		bloodSensor = 8'b00111100;
		#5;
		bloodSensor = 8'b00111101;
		#5;
		bloodSensor = 8'b00111110;
		#5;
		bloodSensor = 8'b00111111;
		#5;
		bloodSensor = 8'b01000000;
		#5;
		bloodSensor = 8'b01000001;
		#5;
		bloodSensor = 8'b01000010;
		#5;
		bloodSensor = 8'b01000011;
		#5;
		bloodSensor = 8'b01000100;
		#5;
		bloodSensor = 8'b01000101;
		#5;
		bloodSensor = 8'b01000110;
		#5;
		bloodSensor = 8'b01000111;
		#5;
		bloodSensor = 8'b01001000;
		#5;
		bloodSensor = 8'b01001001;
		#5;
		bloodSensor = 8'b01001010;
		#5;
		bloodSensor = 8'b01001011;
		#5;
		bloodSensor = 8'b01001100;
		#5;
		bloodSensor = 8'b01001101;
		#5;
		bloodSensor = 8'b01001110;
		#5;
		bloodSensor = 8'b01001111;
		#5;
		bloodSensor = 8'b01010000;
		#5;
		bloodSensor = 8'b01010001;
		#5;
		bloodSensor = 8'b01010010;
		#5;
		bloodSensor = 8'b01010011;
		#5;
		bloodSensor = 8'b01010100;
		#5;
		bloodSensor = 8'b01010101;
		#5;
		bloodSensor = 8'b01010110;
		#5;
		bloodSensor = 8'b01010111;
		#5;
		bloodSensor = 8'b01011000;
		#5;
		bloodSensor = 8'b01011001;
		#5;
		bloodSensor = 8'b01011010;
		#5;
		bloodSensor = 8'b01011011;
		#5;
		bloodSensor = 8'b01011100;
		#5;
		bloodSensor = 8'b01011101;
		#5;
		bloodSensor = 8'b01011110;
		#5;
		bloodSensor = 8'b01011111;
		#5;
		bloodSensor = 8'b01100000;
		#5;
		bloodSensor = 8'b01100001;
		#5;
		bloodSensor = 8'b01100010;
		#5;
		bloodSensor = 8'b01100011;
		#5;
		bloodSensor = 8'b01100100;
		#5;
		bloodSensor = 8'b01100101;
		#5;
		bloodSensor = 8'b01100110;
		#5;
		bloodSensor = 8'b01100111;
		#5;
		bloodSensor = 8'b01101000;
		#5;
		bloodSensor = 8'b01101001;
		#5;
		bloodSensor = 8'b01101010;
		#5;
		bloodSensor = 8'b01101011;
		#5;
		bloodSensor = 8'b01101100;
		#5;
		bloodSensor = 8'b01101101;
		#5;
		bloodSensor = 8'b01101110;
		#5;
		bloodSensor = 8'b01101111;
		#5;
		bloodSensor = 8'b01110000;
		#5;
		bloodSensor = 8'b01110001;
		#5;
		bloodSensor = 8'b01110010;
		#5;
		bloodSensor = 8'b01110011;
		#5;
		bloodSensor = 8'b01110100;
		#5;
		bloodSensor = 8'b01110101;
		#5;
		bloodSensor = 8'b01110110;
		#5;
		bloodSensor = 8'b01110111;
		#5;
		bloodSensor = 8'b01111000;
		#5;
		bloodSensor = 8'b01111001;
		#5;
		bloodSensor = 8'b01111010;
		#5;
		bloodSensor = 8'b01111011;
		#5;
		bloodSensor = 8'b01111100;
		#5;
		bloodSensor = 8'b01111101;
		#5;
		bloodSensor = 8'b01111110;
		#5;
		bloodSensor = 8'b01111111;
		#5;
		bloodSensor = 8'b10000000;
		#5;
		bloodSensor = 8'b10000001;
		#5;
		bloodSensor = 8'b10000010;
		#5;
		bloodSensor = 8'b10000011;
		#5;
		bloodSensor = 8'b10000100;
		#5;
		bloodSensor = 8'b10000101;
		#5;
		bloodSensor = 8'b10000110;
		#5;
		bloodSensor = 8'b10000111;
		#5;
		bloodSensor = 8'b10001000;
		#5;
		bloodSensor = 8'b10001001;
		#5;
		bloodSensor = 8'b10001010;
		#5;
		bloodSensor = 8'b10001011;
		#5;
		bloodSensor = 8'b10001100;
		#5;
		bloodSensor = 8'b10001101;
		#5;
		bloodSensor = 8'b10001110;
		#5;
		bloodSensor = 8'b10001111;
		#5;
		bloodSensor = 8'b10010000;
		#5;
		bloodSensor = 8'b10010001;
		#5;
		bloodSensor = 8'b10010010;
		#5;
		bloodSensor = 8'b10010011;
		#5;
		bloodSensor = 8'b10010100;
		#5;
		bloodSensor = 8'b10010101;
		#5;
		bloodSensor = 8'b10010110;
		#5;
		bloodSensor = 8'b10010111;
		#5;
		bloodSensor = 8'b10011000;
		#5;
		bloodSensor = 8'b10011001;
		#5;
		bloodSensor = 8'b10011010;
		#5;
		bloodSensor = 8'b10011011;
		#5;
		bloodSensor = 8'b10011100;
		#5;
		bloodSensor = 8'b10011101;
		#5;
		bloodSensor = 8'b10011110;
		#5;
		bloodSensor = 8'b10011111;
		#5;
		bloodSensor = 8'b10100000;
		#5;
		bloodSensor = 8'b10100001;
		#5;
		bloodSensor = 8'b10100010;
		#5;
		bloodSensor = 8'b10100011;
		#5;
		bloodSensor = 8'b10100100;
		#5;
		bloodSensor = 8'b10100101;
		#5;
		bloodSensor = 8'b10100110;
		#5;
		bloodSensor = 8'b10100111;
		#5;
		bloodSensor = 8'b10101000;
		#5;
		bloodSensor = 8'b10101001;
		#5;
		bloodSensor = 8'b10101010;
		#5;
		bloodSensor = 8'b10101011;
		#5;
		bloodSensor = 8'b10101100;
		#5;
		bloodSensor = 8'b10101101;
		#5;
		bloodSensor = 8'b10101110;
		#5;
		bloodSensor = 8'b10101111;
		#5;
		bloodSensor = 8'b10110000;
		#5;
		bloodSensor = 8'b10110001;
		#5;
		bloodSensor = 8'b10110010;
		#5;
		bloodSensor = 8'b10110011;
		#5;
		bloodSensor = 8'b10110100;
		#5;
		bloodSensor = 8'b10110101;
		#5;
		bloodSensor = 8'b10110110;
		#5;
		bloodSensor = 8'b10110111;
		#5;
		bloodSensor = 8'b10111000;
		#5;
		bloodSensor = 8'b10111001;
		#5;
		bloodSensor = 8'b10111010;
		#5;
		bloodSensor = 8'b10111011;
		#5;
		bloodSensor = 8'b10111100;
		#5;
		bloodSensor = 8'b10111101;
		#5;
		bloodSensor = 8'b10111110;
		#5;
		bloodSensor = 8'b10111111;
		#5;
		bloodSensor = 8'b11000000;
		#5;
		bloodSensor = 8'b11000001;
		#5;
		bloodSensor = 8'b11000010;
		#5;
		bloodSensor = 8'b11000011;
		#5;
		bloodSensor = 8'b11000100;
		#5;
		bloodSensor = 8'b11000101;
		#5;
		bloodSensor = 8'b11000110;
		#5;
		bloodSensor = 8'b11000111;
		#5;
		bloodSensor = 8'b11001000;
		#5;
		bloodSensor = 8'b11001001;
		#5;
		bloodSensor = 8'b11001010;
		#5;
		bloodSensor = 8'b11001011;
		#5;
		bloodSensor = 8'b11001100;
		#5;
		bloodSensor = 8'b11001101;
		#5;
		bloodSensor = 8'b11001110;
		#5;
		bloodSensor = 8'b11001111;
		#5;
		bloodSensor = 8'b11010000;
		#5;
		bloodSensor = 8'b11010001;
		#5;
		bloodSensor = 8'b11010010;
		#5;
		bloodSensor = 8'b11010011;
		#5;
		bloodSensor = 8'b11010100;
		#5;
		bloodSensor = 8'b11010101;
		#5;
		bloodSensor = 8'b11010110;
		#5;
		bloodSensor = 8'b11010111;
		#5;
		bloodSensor = 8'b11011000;
		#5;
		bloodSensor = 8'b11011001;
		#5;
		bloodSensor = 8'b11011010;
		#5;
		bloodSensor = 8'b11011011;
		#5;
		bloodSensor = 8'b11011100;
		#5;
		bloodSensor = 8'b11011101;
		#5;
		bloodSensor = 8'b11011110;
		#5;
		bloodSensor = 8'b11011111;
		#5;
		bloodSensor = 8'b11100000;
		#5;
		bloodSensor = 8'b11100001;
		#5;
		bloodSensor = 8'b11100010;
		#5;
		bloodSensor = 8'b11100011;
		#5;
		bloodSensor = 8'b11100100;
		#5;
		bloodSensor = 8'b11100101;
		#5;
		bloodSensor = 8'b11100110;
		#5;
		bloodSensor = 8'b11100111;
		#5;
		bloodSensor = 8'b11101000;
		#5;
		bloodSensor = 8'b11101001;
		#5;
		bloodSensor = 8'b11101010;
		#5;
		bloodSensor = 8'b11101011;
		#5;
		bloodSensor = 8'b11101100;
		#5;
		bloodSensor = 8'b11101101;
		#5;
		bloodSensor = 8'b11101110;
		#5;
		bloodSensor = 8'b11101111;
		#5;
		bloodSensor = 8'b11110000;
		#5;
		bloodSensor = 8'b11110001;
		#5;
		bloodSensor = 8'b11110010;
		#5;
		bloodSensor = 8'b11110011;
		#5;
		bloodSensor = 8'b11110100;
		#5;
		bloodSensor = 8'b11110101;
		#5;
		bloodSensor = 8'b11110110;
		#5;
		bloodSensor = 8'b11110111;
		#5;
		bloodSensor = 8'b11111000;
		#5;
		bloodSensor = 8'b11111001;
		#5;
		bloodSensor = 8'b11111010;
		#5;
		bloodSensor = 8'b11111011;
		#5;
		bloodSensor = 8'b11111100;
		#5;
		bloodSensor = 8'b11111101;
		#5;
		bloodSensor = 8'b11111110;
		#5;
		bloodSensor = 8'b11111111;
		#5;
		$finish;
	end
endmodule
