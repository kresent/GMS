/// @description wait(seconds)
/// @function wait
/// @param seconds
var seconds = argument0;
var steps = seconds_to_steps(seconds);

// Set the alarm
if (alarm[0] == -1) {
    alarm[0] = steps;
}

// End the wait
if (alarm[0] == 0) {
    action++;
    return false;
}

return true;
