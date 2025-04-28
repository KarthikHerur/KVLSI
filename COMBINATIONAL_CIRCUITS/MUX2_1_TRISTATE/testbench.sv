// Code your testbench here
// or browse Examples
module test;
  
  reg i0,i1,s;
  wire y;
  
  mux21 dut(i0,i1,s,y);
  
initial begin
  i0=0 ;i1=0; s=0;
 #2 i0=0 ;i1=1; s=1;
 #2 i0=1 ;i1=0; s=0;
 #2 i0=1 ;i1=1; s=1;
  
  end
  
  initial begin
     $monitor("sim time =%0t, i0=%b, i1=%b, s=%b, y=%b",$time,i0,i1,s,y);
               end
             //print the waveform
             initial begin
               $dumpfile("dump.vcd");
               $dumpvars(0,i0,i1,s,y);
                         end
                         endmodule
               