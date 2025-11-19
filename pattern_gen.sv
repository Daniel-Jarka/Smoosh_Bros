module pattern_gen (
    input logic valid,
    input logic [9:0] col,  
    input logic [9:0] row,    
    output logic [5:0] rgb      
);

assign rgb = valid ? (row ^ col) % 32 : 6'd0;

endmodule 