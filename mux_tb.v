module mux_tb;
    reg [3:0] d;  // Data inputs
    reg [1:0] s;  // Selection inputs
    wire y;       // Output
mux uut(.s(s),.d(d),.y(y));
initial begin
    $dumpfile("test.vcd");
    $dumpvars(1);

     $monitor("%b, %b, y=%b", s,d, y);
        s = 2'b00; d = 4'b0101; #10;
        s = 2'b01; d = 4'b0101; #10;
        s = 2'b10; d = 4'b0101; #10;
        s = 2'b11; d = 4'b0101; #10;


        $finish;


end
endmodule