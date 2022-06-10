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
---  Module Name: Blood Abnormality Detector
---  Description: Module 2
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module tb_bloodAbnormalityDetector();
reg [3:0] bloodPH;
reg [2:0] bloodType;
wire bloodAbnormality;
bloodAbnormalityDetector m1(bloodPH,bloodType,bloodAbnormality);
initial 
   begin
	   bloodType <= 3'b000;
		# 5 ;
	   bloodPH <= 4'b0000;
		# 5 ;
		bloodPH <= 4'b0001;
		# 5 ;
		bloodPH <= 4'b0010;
		# 5 ;
		bloodPH <= 4'b0011;
		# 5 ;
		bloodPH <= 4'b0100;
		# 5 ;
		bloodPH <= 4'b0101;
		# 5 ;
		bloodPH <= 4'b0110;
		# 5 ;
		bloodPH <= 4'b0111;
		# 5 ;
		bloodPH <= 4'b1000;
		# 5 ;
		bloodPH <= 4'b1001;
		# 5 ;
		bloodPH <= 4'b1010;
		# 5 ;
		bloodPH <= 4'b1011;
		# 5 ;
		bloodPH <= 4'b1100;
		# 5 ;
		bloodPH <= 4'b1101;
		# 5 ;
		bloodPH <= 4'b1110;
		# 5 ;
		bloodPH <= 4'b1111;
		#10;
		bloodType <= 3'b001;
		# 5 ;
		bloodPH <= 4'b0000;
		# 5 ;
		bloodPH <= 4'b0001;
		# 5 ;
		bloodPH <= 4'b0010;
		# 5 ;
		bloodPH <= 4'b0011;
		# 5 ;
		bloodPH <= 4'b0100;
		# 5 ;
		bloodPH <= 4'b0101;
		# 5 ;
		bloodPH <= 4'b0110;
		# 5 ;
		bloodPH <= 4'b0111;
		# 5 ;
		bloodPH <= 4'b1000;
		# 5 ;
		bloodPH <= 4'b1001;
		# 5 ;
		bloodPH <= 4'b1010;
		# 5 ;
		bloodPH <= 4'b1011;
		# 5 ;
		bloodPH <= 4'b1100;
		# 5 ;
		bloodPH <= 4'b1101;
		# 5 ;
		bloodPH <= 4'b1110;
		# 5 ;
		bloodPH <= 4'b1111;
		#10;
		bloodType <= 3'b010;
		# 5 ;
		bloodPH <= 4'b0000;
		# 5 ;
		bloodPH <= 4'b0001;
		# 5 ;
		bloodPH <= 4'b0010;
		# 5 ;
		bloodPH <= 4'b0011;
		# 5 ;
		bloodPH <= 4'b0100;
		# 5 ;
		bloodPH <= 4'b0101;
		# 5 ;
		bloodPH <= 4'b0110;
		# 5 ;
		bloodPH <= 4'b0111;
		# 5 ;
		bloodPH <= 4'b1000;
		# 5 ;
		bloodPH <= 4'b1001;
		# 5 ;
		bloodPH <= 4'b1010;
		# 5 ;
		bloodPH <= 4'b1011;
		# 5 ;
		bloodPH <= 4'b1100;
		# 5 ;
		bloodPH <= 4'b1101;
		# 5 ;
		bloodPH <= 4'b1110;
		# 5 ;
		bloodPH <= 4'b1111;
		#10;
		bloodType <= 3'b011;
		# 5 ;
		bloodPH <= 4'b0000;
		# 5 ;
		bloodPH <= 4'b0001;
		# 5 ;
		bloodPH <= 4'b0010;
		# 5 ;
		bloodPH <= 4'b0011;
		# 5 ;
		bloodPH <= 4'b0100;
		# 5 ;
		bloodPH <= 4'b0101;
		# 5 ;
		bloodPH <= 4'b0110;
		# 5 ;
		bloodPH <= 4'b0111;
		# 5 ;
		bloodPH <= 4'b1000;
		# 5 ;
		bloodPH <= 4'b1001;
		# 5 ;
		bloodPH <= 4'b1010;
		# 5 ;
		bloodPH <= 4'b1011;
		# 5 ;
		bloodPH <= 4'b1100;
		# 5 ;
		bloodPH <= 4'b1101;
		# 5 ;
		bloodPH <= 4'b1110;
		# 5 ;
		bloodPH <= 4'b1111;
		#10;
		bloodType <= 3'b100;
		# 5 ;
		bloodPH <= 4'b0000;
		# 5 ;
		bloodPH <= 4'b0001;
		# 5 ;
		bloodPH <= 4'b0010;
		# 5 ;
		bloodPH <= 4'b0011;
		# 5 ;
		bloodPH <= 4'b0100;
		# 5 ;
		bloodPH <= 4'b0101;
		# 5 ;
		bloodPH <= 4'b0110;
		# 5 ;
		bloodPH <= 4'b0111;
		# 5 ;
		bloodPH <= 4'b1000;
		# 5 ;
		bloodPH <= 4'b1001;
		# 5 ;
		bloodPH <= 4'b1010;
		# 5 ;
		bloodPH <= 4'b1011;
		# 5 ;
		bloodPH <= 4'b1100;
		# 5 ;
		bloodPH <= 4'b1101;
		# 5 ;
		bloodPH <= 4'b1110;
		# 5 ;
		bloodPH <= 4'b1111;
		#10;
		bloodType <= 3'b101;
		# 5 ;
		bloodPH <= 4'b0000;
		# 5 ;
		bloodPH <= 4'b0001;
		# 5 ;
		bloodPH <= 4'b0010;
		# 5 ;
		bloodPH <= 4'b0011;
		# 5 ;
		bloodPH <= 4'b0100;
		# 5 ;
		bloodPH <= 4'b0101;
		# 5 ;
		bloodPH <= 4'b0110;
		# 5 ;
		bloodPH <= 4'b0111;
		# 5 ;
		bloodPH <= 4'b1000;
		# 5 ;
		bloodPH <= 4'b1001;
		# 5 ;
		bloodPH <= 4'b1010;
		# 5 ;
		bloodPH <= 4'b1011;
		# 5 ;
		bloodPH <= 4'b1100;
		# 5 ;
		bloodPH <= 4'b1101;
		# 5 ;
		bloodPH <= 4'b1110;
		# 5 ;
		bloodPH <= 4'b1111;
		#10;
		bloodType <= 3'b110;
		# 5 ;
		bloodPH <= 4'b0000;
		# 5 ;
		bloodPH <= 4'b0001;
		# 5 ;
		bloodPH <= 4'b0010;
		# 5 ;
		bloodPH <= 4'b0011;
		# 5 ;
		bloodPH <= 4'b0100;
		# 5 ;
		bloodPH <= 4'b0101;
		# 5 ;
		bloodPH <= 4'b0110;
		# 5 ;
		bloodPH <= 4'b0111;
		# 5 ;
		bloodPH <= 4'b1000;
		# 5 ;
		bloodPH <= 4'b1001;
		# 5 ;
		bloodPH <= 4'b1010;
		# 5 ;
		bloodPH <= 4'b1011;
		# 5 ;
		bloodPH <= 4'b1100;
		# 5 ;
		bloodPH <= 4'b1101;
		# 5 ;
		bloodPH <= 4'b1110;
		# 5 ;
		bloodPH <= 4'b1111;
		#10;
		bloodType <= 3'b111;
		# 5 ;
	   bloodPH <= 4'b0000;
		# 5 ;
		bloodPH <= 4'b0001;
		# 5 ;
		bloodPH <= 4'b0010;
		# 5 ;
		bloodPH <= 4'b0011;
		# 5 ;
		bloodPH <= 4'b0100;
		# 5 ;
		bloodPH <= 4'b0101;
		# 5 ;
		bloodPH <= 4'b0110;
		# 5 ;
		bloodPH <= 4'b0111;
		# 5 ;
		bloodPH <= 4'b1000;
		# 5 ;
		bloodPH <= 4'b1001;
		# 5 ;
		bloodPH <= 4'b1010;
		# 5 ;
		bloodPH <= 4'b1011;
		# 5 ;
		bloodPH <= 4'b1100;
		# 5 ;
		bloodPH <= 4'b1101;
		# 5 ;
		bloodPH <= 4'b1110;
		# 5 ;
		bloodPH <= 4'b1111;
		#10;
		$finish;
  end
endmodule  
module bloodAbnormalityDetector(
 bloodPH,
 bloodType,
 bloodAbnormality);
input [3:0] bloodPH;
input [2:0] bloodType;
output bloodAbnormality;
wire [2:0] r;

bloodTypeClassification result1(bloodType,r[0]);
bloodPHAnalyzer         result2(bloodPH, r[1], r[2]);
mux2x1 m(r[1],r[2],r[0],bloodAbnormality);

endmodule
