// Code your testbench here
// or browse Examples
module comparator2bit_test;
  reg a,b;
  wire a_gt_b,a_lt_b,a_eq_b;
  comparator2bit dut(.a(a),.b(b),.a_gt_b(a_gt_b),.a_lt_b(a_lt_b),.a_eq_b(a_eq_b));
  initial begin 
    a=1'b0;b=1'b0;
    #5ns a=1'b1;b=1'b0;
    #5ns a=1'b0;b=1'b1;
    #5ns a=1'b1;b=1'b1;
  end
  initial begin
    $monitor("simtime=%0t,a=%b,b=%b,a_gt_b=%b,a_lt_b=%b,a_eq_b=%b",$time,a,b,
             a_gt_b,a_lt_b,a_eq_b);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,a,b,a_gt_b,a_lt_b,a_eq_b);end
endmodule