module test();

  reg [3:0]a1, b1; // and we want to pass the value of a1 and b1 to a and b in design
  wire [3:0]c1;
  
  // input must be reg
  // output can be either reg or wire
  
  add add1(.a(a1), .b(b1), .c(c1)); // create a copy of our 'add' class
  
  initial begin
    a1 = 1;
    b1 = 1;
    
    #1; // time delay: wait x time unit for the output
    $display("test 1: c = %d", c1); // 'the print statement'
    						// %b: binary value, %d: decimal value
    
    #10;
    a1 = 2;
    b1 = 10;
    $display("test 2: c = %d", c1);
    
    
    #10;
    a1 = 2;
    b1 = -3;
    $display("test 3: c = %d, expect -1", c1);
    
    
    #10;
    a1 = 2;
    b1 = -1;
    $display("test 4: c = %d, expect 1", c1);
    
    #10;
    a1 = 10;
    b1 = 10;
    $display("test 5: c = %d, expect 20", c1);
    
    #10;
    a1 = 0;
    b1 = -1;
    $display("test 6: c = %d, expect -1", c1);
    
  end

endmodule



module test();
  reg [7:0] x1, y1; 
  wire [7:0] cout1, cout2, cout3, cout4, cout5, cout6, cout7;
  
  ands my_ands(.x(x1), .y(y1), .co1(cout1), .co2(cout2), .co3(cout3), .co4(cout4), .co5(cout5), .co6(cout6), .co7(cout7));
  
  initial begin
    x1 = 255;
    y1 = 15;
    
    #1
    $display("  x = %b", x1);
    $display("  y = %b", y1);
    
    $display("co1 = %b", cout1);
    $display("co2 = %b", cout2);
    $display("co3 = %b", cout3);
    $display("co4 = %b", cout4);
    $display("co5 = %b", cout5);
    $display("co6 = %b", cout6);  
    $display("co7 = %b", cout7);
  end
  
endmodule




module test();
  reg signed [7:0] x1, y1; 
  wire signed [7:0] cout1, cout2, cout3, cout4;
  
  shifts my_shifts(.x(x1), .y(y1), .co1(cout1), .co2(cout2), .co3(cout3), .co4(cout4));
  
  
  initial begin
    x1 = 31;
    y1 = 2;
    
    #1
    $display("  x = %b", x1);
    $display("co1 = %b", cout1);
    $display("co2 = %b", cout2);
    $display("co3 = %b", cout3);
    $display("co4 = %b", cout4);
    
    
    #1
    x1 = -31;
    y1 = 2;
    $display("  x = %b", x1);
    $display("co1 = %b", cout1);
    $display("co2 = %b", cout2);
    $display("co3 = %b", cout3);
    $display("co4 = %b", cout4);
 
  end
  
endmodule




module test();
  reg a1;
  wire clk1;
  
  clock my_clock(.a(a1), .clk(clk1));

  initial begin
    a1 = 1;
    display("some dummy line just to use clk: %d", clk1);
    // either keep display and my_clock or get rid of them together
  end
  
  always #10
    a1 = ~a1;
    //$display("clock = %b", clk1);
  
  
    
endmodule


  

