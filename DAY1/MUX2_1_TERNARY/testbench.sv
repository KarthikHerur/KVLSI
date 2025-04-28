// Code your testbench here
// or browse Examples
module ternarymux2_1_test;
  reg [1:0]i;
  reg s;
  wire y;
  ternarymux2_1 dut(.i(i),.s(s),.y(y));
  initial begin
    i[0]=1'b0; i[1]=1'b0;s=0;
   #5 i[0]=1'b0; i[1]=1'b0;s=1;
   #5i[0]=1'b0; i[1]=1'b1;s=0;
   #5 i[0]=1'b0; i[1]=1'b1;s=1;
   #5i[0]=1'b1; i[1]=1'b0;s=0;
   #5i[0]=1'b1; i[1]=1'b0;s=1;
   #5i[0]=1'b1; i[1]=1'b1;s=0;
   #5i[0]=1'b1; i[1]=1'b1;s=1;
    
  end
  initial begin
    $monitor("simtime=%0t,i=%b,s=%b,y=%b",$time,i,s,y);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,i,s,y);end
endmodule