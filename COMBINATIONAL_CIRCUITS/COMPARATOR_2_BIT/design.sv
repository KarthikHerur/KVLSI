// Code your design here
module comparator2bit(
		input a,b,
  output a_gt_b,a_lt_b,a_eq_b);
  assign a_gt_b = (a>b)?1:0;
  assign a_lt_b = (a<b)?1:0;
  assign a_eq_b = (a==b)?1:0;
endmodule