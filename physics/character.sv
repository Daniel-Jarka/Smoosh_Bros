module character (
    input logic clk,
    input logic reset,
    input logic frame_tick,
    input logic [7:0] buttons,
    input logic collision_left,     // Collision signals from collision module
    input logic collision_right,
    input logic collision_top,
    input logic collision_bottom,
    input logic is_grounded,        // Ground detection from collision
    output logic [9:0] char_x,     // Character X position (pixels)
    output logic [9:0] char_y,     // Character Y position (pixels)
    output logic [2:0] state,      // Character state
    output logic facing_left,       // Direction character is facing
    output logic [9:0] char_width,  // Character width (for collision/sprites)
    output logic [9:0] char_height  // Character height (for collision/sprites)
);

    

endmodule

