module mux(
// input s1,s0,i0,i1,i2,i3;
// output y;
// assign y = (~s0&~s1&i0)|(~s0&s1&i0)|(s0&~s1&i0)|(s0&s1&i0);
input [3:0]d,
input [1:0]s,
output y
);
assign y =  (s == 2'b00) ? d[3] :
            (s == 2'b01) ? d[2] :
            (s == 2'b10) ? d[1] :
            (s == 2'b11) ? d[0] :
            1'bz; 
endmodule
