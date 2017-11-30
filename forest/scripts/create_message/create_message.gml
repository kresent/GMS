/// @description create_message(x, y, text)
/// @function create_message
/// @param x
/// @param  y
/// @param  text
var xx = argument0;
var yy = argument1;
var text = argument2;

// Create the message ui
var message_ui = instance_create_layer(xx, yy, "Insctances",  o_message_ui);

// Update the message ui
with (message_ui) {
    message = text;
    width = string_width(string_hash_to_newline(text))+12;
    height = string_height(string_hash_to_newline(text))+12;
}

return message_ui;
