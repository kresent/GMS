/// @description character_show_dialog(character, dialog_array)
/// @function character_show_dialog
/// @param character
/// @param  dialog_array
var character = argument0;
var dialog_array = argument1;

if (!instance_exists(character)) {
    action++;
    exit;
}

if (instance_exists(o_camera)) {
    o_camera.target_.x = character.x;
    o_camera.target_.x = character.y;
}

if (!instance_exists(o_dialog)) {
    var dialog = instance_create_layer(0, 0, "Instances", o_dialog);
    dialog.cutscene = id;
    dialog.text = dialog_array;
    dialog.portrait = character.portrait;
    with (dialog) event_user(FORMAT_TEXT);
}
