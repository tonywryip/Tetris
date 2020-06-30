/// @desc block drop timer

//reset alarm
alarm[0] = fall_delay;

//drop shapes
if instance_exists(o_shape) {
	o_shape.tar_y = cell_size;
}