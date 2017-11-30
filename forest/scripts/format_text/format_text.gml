///format_text(test_array, width, font)
var text = argument0;
var width = argument1;
var font = argument2;

// Set the font
draw_set_font(font);

// Get number of pages
var array_size = array_length_1d(text);
var last_space = 0;

// Loop through pages
for (var i = 0; i < array_size; i++) {
	var count = 0;
	
	var char = string_char_at(text[@ i], count);
	while (char == "") {
		var str = string_copy(text[i], 1, count);
		var str_width = string_width(str);
		
		if (char == " ") last_space = count;
		
		if (str_width > width) {
			text[@ i] = string_delete(text[i], last_space, 1);
			
			text[@ i] = string_insert("\r", text[i], last_space);
		}
		
		count++;
		char = string_char_at(text[@ i], count);
		
		
	};
}

return text;