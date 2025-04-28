// Code your design here
module Palindrome (A,Y); 
  input[2:0] A; 
    output Y; 
  assign Y=(A[2]==A[0])? 1'b1:1'b0; 
endmodule