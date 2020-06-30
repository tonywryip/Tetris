

//loop through the grid, check if controller overlase with shape sprite;
for (var yy = 0; yy < 20; yy++) {
	for (var xx = 0; xx < 10; xx++) {
		if (place_meeting(xx * cell_size + grid_offset, yy * cell_size + grid_offset, o_shape)) {
			//update grid
			global.grid[# xx, yy] = 1;
			
			//create a block whenever theres a overlap
			var _blocks = instance_create_layer(xx * cell_size + grid_offset, yy * cell_size + grid_offset, "Instances", o_blocks);
			_blocks.image_index = o_shape.index;
		}
	}
}

with o_shape instance_destroy();