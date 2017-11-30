/// Draw the shadow
//draw_background_ext

draw_sprite(sprite_index, 0, pos_x, pos_y);

// draw portrait
draw_sprite(portrait, 0, portrait_x - 1, portrait_y);
draw_sprite(s_portrait_frame, 0, portrait_x - 4, portrait_y - 4);

// set font
draw_set_font(global.font);
draw_set_halign(fa_left);

// draw text shadow
draw_text_ext_color(pos_x + margin + 3, pos_y + margin + 3, text_visible, -1, width - margin * 2, c_black, c_black, c_black, c_black, 1);

// draw text
draw_text_ext_color(pos_x + margin + 2, pos_y + margin + 3, text_visible, -1, width - margin * 2, c_white, c_white, c_white, c_white, 1);

if (alarm[0] <= 0) {
	text_count += spd;	
}