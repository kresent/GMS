/// @description Manage text drawn on screen
get_visible_text(room_speed/3);

// Handle input
if (o_input.action_two_pressed_){
	var text_length = string_length(text[text_page]);
	
	// Are we are at the end of the page?
	if (text_count > text_length) {
		text_page++;
		text_count = 0;
		text_visible = "";
		
		if (text_page > array_length_1d(text) - 1) {
			if (cutscene != noone) {
				cutscene.action++;
			}
			
			instance_destroy();
		}
	} else {
		// Advance the count to the end of the text
		text_count = text_length;
	}
}

