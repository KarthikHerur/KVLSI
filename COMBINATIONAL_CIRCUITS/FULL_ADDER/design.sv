// Code your design here
//gate level modelling
module full_adder (A,B,Cin,Sum,Cout);
    input A;
    input B;
    input Cin;
    output Sum;
    output Cout;
assign Sum=A^B^Cin;
assign Cout=((A&B)|(B&Cin)|(Cin&A));  
endmodule
