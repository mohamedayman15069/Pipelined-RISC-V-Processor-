module processor_tb(); 

reg clk;
reg reset;

processor uut(clk,reset);

   initial begin
      clk = 0;
      forever #10 clk = ~clk;

   end

    initial begin
        reset = 1; 
        #10;
        reset = 0;
//        #300 $finish;

     end 
   endmodule
