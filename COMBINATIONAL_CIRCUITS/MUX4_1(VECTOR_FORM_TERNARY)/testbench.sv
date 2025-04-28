module test;
   reg [0:3] i;
   reg [1:0] s;
   wire y;

   mux41 mnp(i, s, y);

   initial begin
       i = 4'b1000; s = 2'b00;
       #5 i = 4'b0100; s = 2'b01;
       #5 i = 4'b0010; s = 2'b10;
       #5 i = 4'b0001; s = 2'b11;
   end

   initial begin
       $monitor("Simtime=%0t, s=%b, i[0]=%b, i[1]=%b, i[2]=%b, i[3]=%b, y=%b", $time, s, i[0], i[1], i[2], i[3], y);
   end

   initial begin
       $dumpfile("dump.vcd");
       $dumpvars(0, test);
   end
endmodule

