module ternarymux2_1(
  input [1:0]i,s,
  output y);
  assign y= (s==1'b0)? i[0]:i[1];
endmodule