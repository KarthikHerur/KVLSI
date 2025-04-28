// Code your design here
`include "HA_ADD.v"
module FULL_ADD(a,b,cin,sum,cout);
  input a,b,cin;
  output sum,cout;
  wire w1,w2,w3;
  HA_ADD h1 (.a(a),.b(b),.s(w1),.c(w2));
  HA_ADD h2 (.a(w1),.b(cin),.s(sum),.c(w3));
  assign cout =w2|w3;
endmodule