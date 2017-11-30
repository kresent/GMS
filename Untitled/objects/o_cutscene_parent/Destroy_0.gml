/// @description  Set Player back to the move state
if (instance_exists(o_player)) {
    o_player.state_ = char_states.move;
}

if (instance_exists(o_camera)) {
    // ???????  o_view.state = view_follow_elizabeth_state;
}

