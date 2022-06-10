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
---  Module Name: HealthcareSystemPhase1 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module HealthcareSystemPhase1(
 pressureData,
 bloodPH,
 bloodType,
 fdSensorValue,
 fdFactoryValue,
 bloodSensor,
 factotyBaseTemp,
 factotyTempCoef,
 tempSensorValue,
 presureAbnormality,
 bloodAbnormality,
 fallDetected,
 glycemicIndex,
 lowTempAbnormality,
 highTempAbnormality);
input [5:0] pressureData;
input [3:0] bloodPH;
input [2:0] bloodType;
input [7:0] fdSensorValue;
input [7:0] fdFactoryValue;
input [7:0] bloodSensor;
input [4:0] factotyBaseTemp;
input [3:0] factotyTempCoef;
input [3:0] tempSensorValue;
output presureAbnormality;
output bloodAbnormality;
output fallDetected;
output [3:0] glycemicIndex;
output lowTempAbnormality;
output highTempAbnormality;
 // write your code here, please.
 pressureAbnormalityDetector PAD(pressureData,presureAbnormality);
 fallingDetector F_D(fdSensorValue,fdFactoryValue,fallDetected);
 glycemicIndexCalculator GIC(bloodSensor,glycemicIndex);
 bloodAbnormalityDetector BAD(bloodPH,bloodType,bloodAbnormality);
 temperatureAbnormalityDetector TAD(factotyBaseTemp,factotyTempCoef,tempSensorValue,lowTempAbnormality,highTempAbnormality);
 
endmodule
