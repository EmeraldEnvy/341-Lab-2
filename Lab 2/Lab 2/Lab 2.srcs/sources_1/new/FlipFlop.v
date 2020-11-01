`timescale 1ns / 1ps

module FlipFlop(
    input clk,
    input reset,
    input [7:0] d,
    output reg [7:0] q
    );
    
   // reg [7:0] out;
    //
    always @(posedge clk) //Posedge triggers the block on the positive edge of a clock signal, negedge triggers negative edge
    begin
        if( reset == 1'b1)
            //out <= 1'b0;
            q <= 1'b0;
        else
            //out <= d;
            q <= d;
     end
    // assign q = out;
endmodule
