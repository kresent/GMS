/// @description Start event

// Set all characters to the cutscene state
if (instance_exists(o_character_parent)) {
    with (o_character_parent) {
        state_ = char_states.cutscene;
        image_speed = 0.2;
        image_index = 0;
    }
}

// Set the view's state
if (instance_exists(o_camera)) {
    with (o_camera) {
        //state = view_cutscene_state;
    }
}


