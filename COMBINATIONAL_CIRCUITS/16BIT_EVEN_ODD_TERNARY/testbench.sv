// Code your testbench here
// or browse Examples
module tb;
reg [15:0]a;
wire [8*4:0]y ;
  bit16_odd_even dut (.*);
initial begin
a=16'd3;
#5 a=16'd2;
#5 a=16'd7;
#5 $finish;
end
initial begin
$monitor ("Time %0t  a=%b   :: y=%s" ,$time,a,y);
end
initial begin
$dumpfile("dump.vcd");
$dumpvars(0,tb);
end
endmodule