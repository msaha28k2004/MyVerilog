module full_subtractor (
    input A,
    input B,
    input Bin,
    output Diff,
    output Borrow
);

assign Diff   = A ^ B ^ Bin;
assign Borrow = (~A & B) | (~A & Bin) | (B & Bin);

endmodule