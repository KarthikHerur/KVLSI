// Code your testbench here
// or browse Examples
module xor2_test;
  reg a,b;
  wire y;
  xor2 dut(.a(a),.b(b),.y(y));
           initial begin
             a=0;b=0;
             #2 a=0;b=1;
             #2 a=1;b=0;
             #2 a=1;b=1;
           end
           initial begin
             $monitor("simtime =%0t, a=%b, b=%b, y=%b,",$time,a,b,y);
    end
//print the waveform
             initial begin
               $dumpfile("dump.vcd");
               $dumpvars(0,a,b,y);
                         end
                         endmodule

