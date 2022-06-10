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
---  Module Name: Temperature Calculator
-----------------------------------------------------------*/
`timescale 1ns / 1ps
module tb_temperatureCalculator();
reg [4:0] factoryBaseTemp;
reg [3:0] factoryTempCoef;
reg [3:0] tempSensorValue;
wire [7:0] temperature;
temperatureCalculator tc(factoryBaseTemp,factoryTempCoef,tempSensorValue,temperature);
initial 
   begin
		factoryTempCoef <= 4'b0010;
		factoryBaseTemp <= 5'b00111;
	   tempSensorValue <= 4'b00000;
		# 5 ;
		tempSensorValue <= 4'b00001;
		# 5 ;
		tempSensorValue <= 4'b00010;
		# 5 ;
		tempSensorValue <= 4'b00011;
		# 5 ;
		tempSensorValue <= 4'b00100;
		# 5 ;
		tempSensorValue <= 4'b00101;
		# 5 ;
		tempSensorValue <= 4'b00110;
		# 5 ;
		tempSensorValue <= 4'b00111;
		# 5 ;
		tempSensorValue <= 4'b01000;
		# 5 ;
		tempSensorValue <= 4'b01001;
		# 5 ;
		tempSensorValue <= 4'b01010;
		# 5 ;
		tempSensorValue <= 4'b01011;
		# 5 ;
		tempSensorValue <= 4'b01100;
		# 5 ;
		tempSensorValue <= 4'b01101;
		# 5 ;
		tempSensorValue <= 4'b01110;
		# 5 ;
		tempSensorValue <= 4'b01111;
		#10;
		$finish;
	end 
endmodule

module temperatureCalculator(
 factoryBaseTemp,
 factoryTempCoef,
 tempSensorValue,
 temperature);
input [4:0] factoryBaseTemp;
input [3:0] factoryTempCoef;
input [3:0] tempSensorValue;
output [7:0] temperature;
wire [7:0] mpo;
wire cout;
Multiplier4x4 m(mpo,factoryTempCoef,tempSensorValue);
Adder8bit a(temperature,,{3'b000,factoryBaseTemp},{3'b000,mpo[7:3]},0);

endmodule
