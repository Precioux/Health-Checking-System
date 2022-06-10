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
---  Module Name: glycemicIndexCalculator
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module glycemicIndexCalculator(
 bloodSensor,
 glycemicIndex);
input [7:0] bloodSensor;
output [3:0] glycemicIndex;

wire [7:0] absoluteValue;
absoluteCalculator abs(bloodSensor,absoluteValue);
onesCounter oc(absoluteValue,glycemicIndex);
 // write your code here, please.
endmodule

