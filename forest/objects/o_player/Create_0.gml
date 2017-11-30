event_inherited();

initialize_movement_entity(0.5, 1, o_solid);
initialize_hurtbox_entity();

image_speed = 0;
acceleration_ = .5;
max_speed_ = 1.5;
roll_speed_ = 2;
//direction_facing_ = dir.right;
direction_facing_ = RIGHT;
roll_direction_ = 0;

portrait = s_elizabeth_portrait;

enum dir {
	right,
	up,
	left,
	down
}


state_ = starting_state_;


// Sprite move lookup table

sprite_[char_states.move, RIGHT] = s_player_run_right;
sprite_[char_states.move, UP] = s_player_run_up;
sprite_[char_states.move, LEFT] = s_player_run_right;
sprite_[char_states.move, DOWN] = s_player_run_down;

sprite_[char_states.sword, RIGHT] = s_player_attack_right;
sprite_[char_states.sword, UP] = s_player_attack_up;
sprite_[char_states.sword, LEFT] = s_player_attack_right;
sprite_[char_states.sword, DOWN] = s_player_attack_down;

sprite_[char_states.evade, RIGHT] = s_player_roll_right;
sprite_[char_states.evade, UP] = s_player_roll_up;
sprite_[char_states.evade, LEFT] = s_player_roll_right;
sprite_[char_states.evade, DOWN] = s_player_roll_down;

sprite_[char_states.hit, RIGHT] = s_player_run_right;
sprite_[char_states.hit, UP] = s_player_run_up;
sprite_[char_states.hit, LEFT] = s_player_run_right;
sprite_[char_states.hit, DOWN] = s_player_run_down;

sprite_[char_states.bomb, RIGHT] = s_player_run_right;
sprite_[char_states.bomb, UP] = s_player_run_up;
sprite_[char_states.bomb, LEFT] = s_player_run_right;
sprite_[char_states.bomb, DOWN] = s_player_run_down;

sprite_[char_states.cutscene, RIGHT] = s_player_run_right;
sprite_[char_states.cutscene, UP] = s_player_run_up;
sprite_[char_states.cutscene, LEFT] = s_player_run_right;
sprite_[char_states.cutscene, DOWN] = s_player_run_down;