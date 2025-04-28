// Code your testbench here
// or browse Examples
module evenodd_det_test;
  reg a,b,c;
  wire o,e;
  evenodd_det dut (a,b,c,o,e);
  initial begin
         a = 1'b0; b = 1'b0;  c = 1'b0;
     #10 a = 1'b0; b = 1'b0;  c = 1'b1;
     #10 a = 1'b0; b = 1'b1;  c = 1'b0;
     #10 a = 1'b0; b = 1'b1;  c = 1'b1;
     #10 a = 1'b1; b = 1'b0;  c = 1'b0;
     #10 a = 1'b1; b = 1'b0;  c = 1'b1;
     #10 a = 1'b1; b = 1'b1;  c = 1'b0;
     #10 a = 1'b1; b = 1'b1;  c = 1'b1;
  end
  initial begin
    $monitor("simtime = %0t, a = %b, b = %b, c = %b, o = %b, e = %b ",$time,a,b,c,o,e);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,a,b,c,o,e);
  end
endmodule