module physics_engine (
    input logic clk,
    input logic reset,
    input logic frame_tick,
    input logic apply_gravity,      // Whether to apply gravity this frame
    input logic is_grounded,        // Character is on ground
    input logic signed [10:0] vel_x_in,  // Current X velocity
    input logic signed [10:0] vel_y_in,  // Current Y velocity
    output logic signed [10:0] vel_x_out, // Updated X velocity
    output logic signed [10:0] vel_y_out  // Updated Y velocity
);

    

endmodule

