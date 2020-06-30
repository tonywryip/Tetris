/// @desc draw next shape

var _sprite;
var x_offset = 0;
var y_offset = 0;

switch next_shape {
	case 0:
		_sprite = s_shape_sq;
		break;
	case 1:
		_sprite = s_shape_l;
		break;
	case 2:
		_sprite = s_shape_7;
		break;
	case 3:
		_sprite = s_shape_ln;
		break;
	case 4:
		_sprite = s_shape_t;
		break;
	case 5:
		_sprite = s_shape_z;
		break;
	case 6:
		_sprite = s_shape_s;
		break;
}

draw_sprite(_sprite, 0, 523 + x_offset , 173 + y_offset);

/* Drawing saved shapes
var _spriteS;
var x_offsetS = 0;
var y_offsetS = 128;

switch saved_shape {
	case 0:
		_sprite = s_shape_sq;
		break;
	case 1:
		_sprite = s_shape_l;
		break;
	case 2:
		_sprite = s_shape_7;
		break;
	case 3:
		_sprite = s_shape_ln;
		break;
	case 4:
		_sprite = s_shape_t;
		break;
	case 5:
		_sprite = s_shape_z;
		break;
	case 6:
		_sprite = s_shape_s;
		break;
}

draw_sprite(_sprite, 0, 523 + x_offsetS , 173 + y_offsetS);
*/