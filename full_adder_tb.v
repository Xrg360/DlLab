module full_adder_tb();
    reg a,b,cin;
    wire s,cout;
    full_adder uut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
    initial begin
        $dumpfile("test.vcd");
        $dumpvars(1);

        a=0;
        b=0;
        cin=0;
        #10
        $display("%b\t%b\t%b\t%b\t%b",a,b,cin,s,cout);
        a=0;
        b=0;
        cin=1;
        #10
        $display("%b\t%b\t%b\t%b\t%b",a,b,cin,s,cout);
        a=0;
        b=1;
        cin=0;
        #10
        $display("%b\t%b\t%b\t%b\t%b",a,b,cin,s,cout);
        a=0;
        b=1;
        cin=1;
        #10
        $display("%b\t%b\t%b\t%b\t%b",a,b,cin,s,cout);
        a=1;
        b=0;
        cin=0;
        #10
        $display("%b\t%b\t%b\t%b\t%b",a,b,cin,s,cout);
        a=1;
        b=0;
        cin=1;
        #10
        $display("%b\t%b\t%b\t%b\t%b",a,b,cin,s,cout);
        a=1;
        b=1;
        cin=0;
        #10
        $display("%b\t%b\t%b\t%b\t%b",a,b,cin,s,cout);
        a=1;
        b=1;
        cin=1;
        #10
        $display("%b\t%b\t%b\t%b\t%b",a,b,cin,s,cout);
        $finish;
    end
endmodule   