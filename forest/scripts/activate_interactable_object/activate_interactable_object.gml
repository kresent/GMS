/// @description activate_interactable_object(xdir, ydir);
/// @function activate_interactable_object
/// @param xdir
/// @param  ydir
var xdir = argument0;
var ydir = argument1;

// Is there an object?
var interactable = instance_place(x+xdir, y+ydir, o_interactable_parent);

// If we have input and there is an object
if (o_input.action_two_pressed_ && interactable != noone) {
    with (interactable) {
        event_user(0);
    }
}
