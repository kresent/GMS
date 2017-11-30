/// @description Activate dialog
if (!instance_exists(dialog)) {
	dialog = instance_create_layer(x, y, "Instances", dialog_object);
	
	// Cutscene or dialog?
	if (dialog.object_index == o_dialog) {
		dialog.text = text;
		dialog.portrait = portrait;
		
		// Format text
		with (dialog) event_user(0);
	}
}