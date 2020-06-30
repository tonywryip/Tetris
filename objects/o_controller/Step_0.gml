/// @desc mechanics
fall_speed = floor((60 - fall_norm) / 60 * 100);

scr_player_input();

//speed up block fall
if down {
	fall_delay = fall_fast;
	if alarm[0] > fall_delay {
		alarm[0] = fall_delay;
	}
//instant drop
} else if space {
	if instance_exists(o_shape){
		var _yshift = 0;
		with o_shape {
			while !place_meeting(x, y + _yshift * cell_size, o_border) {
				_yshift ++;
			}
			y += (_yshift - 1) * cell_size;
		}
		scr_add_to_grid();
	}
} else {
	fall_delay = fall_norm;
}

//look for completed rows
scr_check_rows();

//increase difficulty
scr_increase_difficulty();

//spawn shape
if !instance_exists(o_shape) {
	scr_spawn_shape();
	save_cd = true;
}

//save block
if save_cd == true {
	scr_save_block();
}