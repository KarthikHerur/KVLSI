// Code your design here
module evenodd_det(a,b,c,o,e);
  input a,b,c;
  output o,e;
  not n1 (e,c);
  buf n2 (o,c);
  
endmodule