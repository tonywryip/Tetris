/// @desc <>

global.grid = ds_grid_create(10,20);

fall_fast = 1;
fall_norm = 60;
fall_delay = fall_norm;
alarm[0] = fall_delay
clamp(fall_norm, 10, 100);

fall_speed = 0;

next_shape = choose(0,1,2,3,4,5,6);
saved_shape = noone;
save_cd = true;

scr_spawn_shape();