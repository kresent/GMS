/// @description Close message
if (o_input.action_one_pressed_ || alarm[0] == 0) {
	// Do not propagate
	o_input.action_one_pressed_ = false;
	
	if (cutscene) cutscene.action++;
	
	instance_destroy();
}