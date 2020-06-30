/// @desc draw potential landing position

draw_self();

var _yshift = 0;

while !place_meeting(x, y + _yshift * cell_size, o_border) {
	_yshift ++;
}

draw_sprite_ext(shadowSprite, shadow_index, x, y + (_yshift - 1) * cell_size, 1, 1, 0, c_white, .55);