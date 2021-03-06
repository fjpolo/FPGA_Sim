`timescale 1ns/1ns
//
module gates();

wire out0;
wire out1;
wire out2;
reg  in1,in2,in3,in4;

not U1(out0,in1);
and U2(out1,in1,in2,in3,in4);
xor U3(out2,in1,in2,in3);

initial begin
  //$monitor(
  //"in1=%b in2=%b in3=%b in4=%b out0=%b out1=%b out2=%b",
  // in1,in2,in3,in4,out0,out1,out2); 
  in1 = 0;
  in2 = 0;
  in3 = 0;
  in4 = 0;
  #10 in1 = 1;
  #10 in2 = 1;
  #10 in3 = 1;
  #10 in4 = 1;
  //#1 $finish; 
end	

endmodule
