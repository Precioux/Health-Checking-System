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
---  Module Name: Temperature Abnormality Detector
-----------------------------------------------------------*/
`timescale 1ns / 1ps
module tb_temperatureAbnormalityDetector();
reg [4:0] factoryBaseTemp;
reg [3:0] factoryTempCoef;
reg [3:0] tempSensorValue;
wire hightemprature;
wire lowtemprature;
temperatureAbnormalityDetector tad(factoryBaseTemp,factoryTempCoef,tempSensorValue,lowtemprature,hightemprature);
initial 
   begin
	factoryBaseTemp <= 5'b11111;
        factoryTempCoef <= 4'b1000;
	tempSensorValue <= 4'b0000;
		# 10 ;
	  
		tempSensorValue <= 4'b0001;
			# 10;
	        tempSensorValue <= 4'b0010;
			# 10;
		tempSensorValue <=4'b0011;
			# 10 ;
		tempSensorValue <=4'b0100;
			# 10 ;
	        tempSensorValue <= 4'b0101;
			# 10;
		tempSensorValue <=4'b0110;
			# 10 ;
	        tempSensorValue <= 4'b0111;
			# 10;
		tempSensorValue <=4'b1000;
			# 10 ;
	        tempSensorValue <= 4'b1001;
			# 10;
		tempSensorValue <=4'b1010;
			# 10 ;
	        tempSensorValue <= 4'b1011;
			# 10;
		tempSensorValue <=4'b1100;		
	                # 10 ;
		tempSensorValue <=4'b1101;
			# 10 ;
		tempSensorValue <=4'b1110;
			# 10 ;
		tempSensorValue <=4'b1111;
			# 10 ;
	  
		$finish;
	end 
endmodule
module temperatureAbnormalityDetector(
 factoryBaseTemp,
 factoryTempCoef,
 tempSensorValue,
 lowTempAbnormality,
 highTempAbnormality);
input [4:0] factoryBaseTemp;
input [3:0] factoryTempCoef;
input [3:0] tempSensorValue;
output lowTempAbnormality;
output highTempAbnormality;
wire [7:0] tmp;
temperatureCalculator c(factoryBaseTemp,factoryTempCoef,tempSensorValue,tmp);
temperatureAnalyzer z(tmp,highTempAbnormality,lowTempAbnormality);
endmodule 