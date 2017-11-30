switch (action) {	
    case 0: character_show_dialog(o_player, array("Hey! This is a cutscene.", "Here is some more dialog.")); break;
	case 1: character_face_direction(o_player, UP, .5); break
	case 2: character_face_direction(o_player, DOWN, .5); break
	case 3: character_face_direction(o_player, UP, .5); break
	case 4: character_move_to(o_player, 92, 64, true, o_player.max_speed_, 0); break;
    default: instance_destroy();
}

