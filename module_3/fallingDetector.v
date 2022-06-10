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
---  Module Name: fallingDetector 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module fallingDetector(
 fdSensorValue,
 fdFactoryValue,
 fallDetected);
input [7:0] fdSensorValue;
input [7:0] fdFactoryValue;
output fallDetected;
wire lt,gt,eq;
comparator8 cmp(fdSensorValue,fdFactoryValue,1'b0,1'b1,1'b0,lt,eq,gt);
assign fallDetected = gt||eq;
 // write your code here, please.
endmodule
