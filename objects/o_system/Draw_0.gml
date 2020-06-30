/// @desc draw score
draw_set_colour(c_gray);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

if room == rm_main {
	draw_text(523, 380, score);
	if instance_exists(o_controller) {
		draw_text(523, 526, o_controller.fall_speed);
	}
} else if room == rm_end_screen {
	draw_text(352, 157, score);
	draw_text(352, 352, controller_fall_speed);
}

if pause {
	draw_set_alpha(0.4);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
}