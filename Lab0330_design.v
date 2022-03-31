// Code your design here

// all verilog code has two parts: design and testbench


// define a module. similar to defining a class
module add(a, b, c); // open a module
  
  input [3:0] a, b;
  output [3:0] c;
  // [3:0] gives 4 bits to each variable instead of 1 by default
  
  
  assign c = a + b; // assignment is done with keyword 'assign

endmodule			// close out the definition



module ands(x, y, co1, co2, co3, co4, co5, co6, co7);
  input [7:0] x, y;
  output [7:0] co1, co2, co3, co4, co5, co6, co7;
  
  assign co1 = x & y;
  assign co2 = x && y;
  assign co3 = (&x) & (&y);
  assign co4 = (&x) && (&y);
  assign co5 = &(x && y);
  assign co6 = y && (&x);
  assign co7 = &x;
endmodule


module shifts(x, y, co1, co2, co3, co4);
  input signed [7:0] x, y;
  output signed [7:0]co1, co2, co3, co4;
  
  assign co1 = x << y;
  assign co2 = x >> y;
  assign co3 = x <<< y;
  assign co4 = x >>> y;
  
endmodule


module clock(a,clk);
  input a;
  output clk;
  assign clk = a;
endmodule

