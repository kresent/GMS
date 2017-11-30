/// @description character_face_direction(character, facing, wait_seconds)
/// @function character_face_direction
/// @param character
/// @param facing
/// @param wait_seconds
var character = argument0;
var facing = argument1;
var wait_seconds = argument2;

if (!instance_exists(character)) {
    action++;
    exit;
}

character.direction_facing_ = facing;
wait(wait_seconds);
