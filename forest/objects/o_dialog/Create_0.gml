/// @description Initialize dialog object
text[0] = "Hello world";
text[1] = "I need scissors! 61!";

text_visible = "";
text_page = 0;
text_count = 0;
cutscene = noone;
width = sprite_width;
spd = 0.5;
margin = 4;
portrait = s_elizabeth_portrait; //s_default_portrait;
portrait_x = (display_get_gui_width() - sprite_get_width(portrait)) - 42;
portrait_y = (display_get_gui_height() - sprite_get_height(portrait)) - 6;
enabled = true;

// Position
pos_x = 42;
pos_y = (display_get_gui_height() - sprite_height) - 4;
