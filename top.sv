module top (
  input logic clk_in,
  output logic clk_out,
  output logic hsync,
  output logic vsync,
  output logic [5:0] rgb
);
  
// logic hsync;
// logic vsync;
logic valid;
logic [9:0] col;
logic [9:0] row;

  mypll u_mypll (
    .clock_in(clk_in),
    .clock_out(clk_out)
  );

  vga u_vga (
    .clk(clk_out),
    .hsync(hsync),
    .vsync(vsync),
    .col(col),  
    .row(row),    
    .valid(valid) 
  );

  pattern_gen u_pattern_gen (
    .valid(valid),
    .col(col),  
    .row(row),    
    .rgb(rgb)     
  );



endmodule
