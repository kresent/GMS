/// @description character_move_to(character, x, y, relative, speed, wait_seconds)
/// @function character_move_to
/// @param character
/// @param  x
/// @param  y
/// @param  relative
/// @param  speed
/// @param  wait_seconds
var character = argument0;
var xx = argument1;
var yy = argument2;
var relative = argument3;
var spd = argument4;
var wait_seconds = argument5;
var cutscene = id;

// Make sure the character exists
if (!instance_exists(character)) {
    action++;
    exit;
}

if (instance_exists(o_camera)) {
    o_camera.target_.x = character.x;
    o_camera.target_.y = character.y;
}

with (character) {
    // Create the target
    if (targetx == noone && targety == noone) {
        if (relative) {
            targetx = x+xx;
            targety = y+yy;
        } else {
            targetx = xx;
            targety = yy;
        }
        
        // Face the target
        var _input_direction = point_direction(x, y, targetx, targety);
        direction_facing_ = get_direction_facing(_input_direction);
        image_speed = 2;
    }

    // Move towards the target
    x = approach(x, targetx, spd);
    y = approach(y, targety, spd);
    
    // Reach the target
    if (x == targetx && y == targety) {
        image_speed = 0;
        image_index = 0;

        with (cutscene) {
            if (!wait(wait_seconds)) {
                other.targetx = noone;
                other.targety = noone;
            }
        }
    }
}
