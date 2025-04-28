// Code your design here
module xor2(a,b,y);
  input a,b;
  output y;
  wire w1,w2,w3;
  assign w1=~(a&b);
  assign w2=~(a&(~a&b));
  assign w3=~(b&(~a&b));
  assign y=((a&(~b))|(b&(~a)));
endmodule