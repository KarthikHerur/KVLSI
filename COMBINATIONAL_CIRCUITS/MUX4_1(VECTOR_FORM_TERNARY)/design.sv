module mux41(i,s,y);
  input [0:3]i;
  input [1:0]s;
  output y;
  
//  assign y=((~s[1])&(~s[0])&i[0])|((~s[1])&(s[0])&i[1])|((s[1])&(~s[0])&i[2])|((s[1])&(s[0])&i[3]);
  
  
  //or using ternary operator
  
  assign y=(s[1])?((s[0])?i[3]:i[2]):((s[0])?i[1]:i[0]);
  
  // or assign y=(s==2'b00)?i[0]:(s==2'b01)?i[1]:(s==2'b10)?i[2]:i[3]:
 
endmodule







  

