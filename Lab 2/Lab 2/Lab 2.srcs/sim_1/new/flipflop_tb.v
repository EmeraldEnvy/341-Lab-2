module flipflop_tb();

reg clk;
reg reset;
reg [7:0]d;
wire [7:0]q;

FlipFlop dff(clk,reset,d,q);

initial begin
  
  clk=0;

     forever #20 clk = ~clk;  // clock duration is 20 ns

end 


initial begin 

 d <= 8'b00111000; //set d to hex 38 as a binary number (testing input)
 reset=1;
 
 #100; //clock signal with duration 100ns
 
 reset=0;
 d <= 8'b00111000; 
 
 #20

 reset=0;

 d <= 8'b11110000; //set d to hex f0 as a binary number (testing input)
 
 #100;

 d <= 8'b00000001;

 #100;

 d <= 8'b00000010;

 #100;

 d <= 8'b00000011;

 #100;

 d <= 8'b00000100; //4

 #100;

 d <= 8'b00000101; //5


end 
endmodule 
