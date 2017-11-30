/// @description  Initialize the character parent
event_inherited();
targetx = noone;
targety = noone;

direction_facing_ = RIGHT;

starting_state_ = char_states.move;

enum char_states {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit,
	cutscene
}
