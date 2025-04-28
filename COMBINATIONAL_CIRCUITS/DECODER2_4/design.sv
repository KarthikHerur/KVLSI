// Code your design here
module decoder2_4(i,d);
  input [1:0]i;
  output [3:0]d;
  assign d[0] = (~i[1]) & (~i[0]);
  assign d[1] = (~i[1]) & (i[0]);
  assign d[2] = (i[1]) & (~i[0]);
  assign d[3] = (i[1]) & (i[0]);
endmodule;