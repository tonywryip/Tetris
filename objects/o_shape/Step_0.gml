/// shape movement mechancis
scr_player_input();

//vertical drop
if tar_y != 0 {
	if (!place_meeting(x, y + tar_y, o_border)) {
		y += tar_y;
	} else {
		with o_controller scr_add_to_grid();
	}
	tar_y = 0;
}

//horizontal slide
move_h = (right - left) * cell_size;

if place_meeting(x + move_h, y, o_border) {
	move_h = 0;
}
x += move_h;

//rotate block
if up or rotate_right{
	image_index ++;
	var _inst = instance_place(x, y, o_border)
    if (_inst != noone){
        if (!place_meeting(x+cell_size,y,o_border)){
            x += cell_size
        } else if (!place_meeting(x-cell_size,y,o_border)){
            x -= cell_size
        } else
            image_index--;
    }
}

if rotate_left{
	image_index --;
	var _inst = instance_place(x, y, o_border)
    if (_inst != noone){
        if (!place_meeting(x-cell_size,y,o_border)){
            x -= cell_size
        } else if (!place_meeting(x+cell_size,y,o_border)){
            x += cell_size
        } else
            image_index++;
    }
}