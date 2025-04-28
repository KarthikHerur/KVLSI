// Code your testbench here
// or browse Examples
module test;
  reg  [1:0]i;
  wire [3:0]d;
  
  decoder2_4 dut (.i(i),.d(d));
  initial begin
    i=2'b00;
 #2 i=2'b01;
 #2 i=2'b10;
 #2 i=2'b11;
  end 
  initial begin
    $monitor("simtime =%0t, i=%b, d=%b,",$time,i,d);
    end

       initial begin
               $dumpfile("dump.vcd");
         $dumpvars(0,i,d);
                         end
                         endmodule
