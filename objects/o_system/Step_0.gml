/// @desc room change
if keyboard_check_pressed(vk_escape) {
	pause = !pause;
	if pause {
		instance_deactivate_all(true);
		audio_stop_sound(m_tetris);
		instance_create_layer(room_width / 2, room_height / 2, "Instances", o_exit);
	} else {
		instance_activate_all();
		instance_destroy(o_exit);
	}
}

if room != rm_main {
	if keyboard_check_pressed(vk_enter) {
		room_goto(rm_main);
		score = 0;
	}
}

if (room == rm_main and !audio_is_playing(m_tetris)) and !pause {
	audio_play_sound(m_tetris, 5, true);
}

if room == rm_main {
	if instance_exists(o_controller) {
		controller_fall_speed = o_controller.fall_speed;
	}
}