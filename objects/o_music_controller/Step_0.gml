/// @desc <>

if position_meeting(mouse_x, mouse_y, self) {
	if mouse_check_button_pressed(mb_left) {
		sound = !sound;
		image_index++;
	}
}

if sound == false {
	audio_pause_all();
} else if sound {
	audio_resume_all();
}