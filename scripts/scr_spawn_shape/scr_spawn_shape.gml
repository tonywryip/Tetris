///scr_spawn_shape

//end game condition
if (place_meeting(x, y, o_border)) {
	//show_debug_message("restart now");
	audio_stop_all();
	room_goto_next();
}

var _shape = instance_create_layer(x, y, "Instances", o_shape);

with (_shape) {
	index = other.next_shape;
	switch index {
		case 0: 
		sprite_index = s_shape_sq;
		shadowSprite = s_shape_sq;
		break;
		case 1: 
		sprite_index = s_shape_l;
		shadowSprite = s_shape_l;
		break;
		case 2: 
		sprite_index = s_shape_7;
		shadowSprite = s_shape_7;
		break;
		case 3: 
		sprite_index = s_shape_ln;
		shadowSprite = s_shape_ln;
		break;
		case 4: 
		sprite_index = s_shape_t;
		shadowSprite = s_shape_t;
		break;
		case 5: 
		sprite_index = s_shape_z;
		shadowSprite = s_shape_z;
		break;
		case 6: 
		sprite_index = s_shape_s;
		shadowSprite = s_shape_s;
		break;
	}
}

next_shape = choose(0,1,2,3,4,5,6);