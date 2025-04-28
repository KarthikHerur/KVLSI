// Code your testbench here
// or browse Examples
  module FULL_ADD_test;
  reg a,b,cin;
  wire sum,cout;
    FULL_ADD dut (.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));
  initial begin
         a = 1'b0; b = 1'b0;  cin= 1'b0;
     #10 a = 1'b0; b = 1'b0;  cin= 1'b1;
     #10 a = 1'b0; b = 1'b1;  cin= 1'b0;
     #10 a = 1'b0; b = 1'b1;  cin= 1'b1;
     #10 a = 1'b1; b = 1'b0;  cin= 1'b0;
     #10 a = 1'b1; b = 1'b0;  cin= 1'b1;
     #10 a = 1'b1; b = 1'b1;  cin= 1'b0;
     #10 a = 1'b1; b = 1'b1;  cin= 1'b1;
  end
  initial begin
    $monitor("simtime = %0t, a = %b, b = %b, cin = %b, sum = %b, cout = %b ",$time,a,b,cin,sum,cout);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,a,b,cin,sum,cout);
  end
endmodule
