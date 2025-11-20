module collision (
    input logic clk,
    input logic [9:0] char_x,      // Character X position (pixels)
    input logic [9:0] char_y,       // Character Y position (pixels)
    input logic [9:0] char_width,   // Character width (pixels)
    input logic [9:0] char_height,  // Character height (pixels)
    input logic [6:0] tile_x,       // Current tile X coordinate
    input logic [6:0] tile_y,       // Current tile Y coordinate
    input logic [5:0] tile_data,    // Tile color data from ROM
    output logic is_solid,          // Is the current tile solid?
    output logic collision_left,    // Collision detected on left side
    output logic collision_right,   // Collision detected on right side
    output logic collision_top,     // Collision detected on top
    output logic collision_bottom,  // Collision detected on bottom
    output logic is_grounded        // Character is standing on solid ground
);


endmodule


