module top_states (
    input logic clk,
    input logic near_ledge,
    input logic grounded,
    input logic btn_atk,
    input logic btn_up,
    input logic btn_down,
    input logic btn_left,
    input logic btn_right,
    output logic x_velocity, // need to decide bit amount (probably 8 bits)
    output logic y_velocity, // need to decide bit amount (probably 8 bits)
    output logic current_animation // havent decided bit amount
);

// we input all these into the sub FSM modules
logic hit_stun_active;
logic can_grab_ledge;
logic attack_active;
logic dodge_active;
logic shield_active;
logic atk_anim; // need to decide bit amount
logic mov_anim; // need to decide bit amount
logic shield_anim; // need to decide bit amount
logic hit_anim; // need to decide bit amount
logic idle_anim; // need to decide bit amount; Falls under movement but this will
                 // be idle_anim is used for the default case specifically

typedef enum {HIT,LEDGE,ATTACK,DODGE,SHIELD,MOVE} top_state; // states
top_state current_state;
// deciding priority of states
always_comb begin
    if (hit_stun_active)  current_state = HIT;
    else if (near_ledge & can_grab_ledge) current_state = LEDGE;
    else if (attack_active) current_state = ATTACK;
    else if (dodge_active) current_state = DODGE;
    else if (shield_active & grounded) current_state = SHIELD;
    else current_state = MOVE;
end

always_comb begin

case(current_state)

default begin
    x_velocity = 0;
    y_velocity = 0;
    current_animation = idle_anim;
end
endcase

end



endmodule