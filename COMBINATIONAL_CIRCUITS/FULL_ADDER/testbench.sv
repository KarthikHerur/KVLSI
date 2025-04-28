// Code your testbench here
// or browse Examples
//Test bench code
module full_adder_test;
  reg A,B,Cin;
  wire Sum,Cout;
  full_adder dut (A,B,Cin,Sum,Cout);
  initial begin
         A = 1'b0; B = 1'b0;  Cin= 1'b0;
     #10 A = 1'b0; B = 1'b0;  Cin= 1'b1;
     #10 A = 1'b0; B = 1'b1;  Cin= 1'b0;
     #10 A = 1'b0; B = 1'b1;  Cin= 1'b1;
     #10 A = 1'b1; B = 1'b0;  Cin= 1'b0;
     #10 A = 1'b1; B = 1'b0;  Cin= 1'b1;
     #10 A = 1'b1; B = 1'b1;  Cin= 1'b0;
     #10 A = 1'b1; B = 1'b1;  Cin= 1'b1;
  end
  initial begin
    $monitor("simtime = %0t, a = %b, b = %b, Cin = %b, SUM = %b, COUT = %b ",$time,A,B,Cin,Sum,Cout);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,A,B,Cin,Sum,Cout);
  end
endmodule