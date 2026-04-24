`timescale 1ns/1ns

module full_subtractor_tb;

reg A, B, Bin;
wire Diff, Borrow;

full_subtractor uut (
    .A(A),
    .B(B),
    .Bin(Bin),
    .Diff(Diff),
    .Borrow(Borrow)
);

initial begin
    $display("A B Bin | Diff Borrow");
    $display("---------------------");

    A=0; B=0; Bin=0; #10;
    $display("%b %b  %b  |   %b     %b", A,B,Bin,Diff,Borrow);

    A=0; B=0; Bin=1; #10;
    $display("%b %b  %b  |   %b     %b", A,B,Bin,Diff,Borrow);

    A=0; B=1; Bin=0; #10;
    $display("%b %b  %b  |   %b     %b", A,B,Bin,Diff,Borrow);

    A=0; B=1; Bin=1; #10;
    $display("%b %b  %b  |   %b     %b", A,B,Bin,Diff,Borrow);

    A=1; B=0; Bin=0; #10;
    $display("%b %b  %b  |   %b     %b", A,B,Bin,Diff,Borrow);

    A=1; B=0; Bin=1; #10;
    $display("%b %b  %b  |   %b     %b", A,B,Bin,Diff,Borrow);

    A=1; B=1; Bin=0; #10;
    $display("%b %b  %b  |   %b     %b", A,B,Bin,Diff,Borrow);

    A=1; B=1; Bin=1; #10;
    $display("%b %b  %b  |   %b     %b", A,B,Bin,Diff,Borrow);

    $finish;
end

initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0, full_subtractor_tb);
end

endmodule