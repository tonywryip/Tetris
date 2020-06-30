//Movement
left = keyboard_check_pressed(vk_left);
right = keyboard_check_pressed(vk_right);

//drop speed
down = keyboard_check(vk_down);
space = keyboard_check_pressed(vk_space);

//rotate
up = keyboard_check_pressed(vk_up);
rotate_left = keyboard_check_pressed(ord("Z"));
rotate_right = keyboard_check_pressed(ord("X"));

//save block
save = keyboard_check_pressed(ord("S"));