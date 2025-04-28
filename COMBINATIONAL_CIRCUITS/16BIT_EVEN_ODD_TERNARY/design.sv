// Code your design here
module bit16_odd_even(
        input [15:0]a,
        output [8*4:0]y);
assign y = ((a[0])==1'b0)?"even":"odd";
endmodule