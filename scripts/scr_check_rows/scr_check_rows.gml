//loop through grid (bot to top | left to right)

num_rows = 0;

for (var yy = 19; yy >= 0; yy--) {
	var _full = true
	for (var xx = 0; xx < 10; xx++) {
		if (global.grid[# xx, yy] == 0) {
			_full = false;
		}
	}
	
	//take action (if row is full)
	if (_full) {
		num_rows ++;
		for (var xx = 0; xx < 10; xx++) {
			global.grid[# xx, yy] = 0;
			var _inst = instance_place(xx * cell_size + grid_offset, yy * cell_size + grid_offset, o_blocks);
			with _inst instance_destroy();
		}

	

		//shuffle
		for (var _yy = yy; _yy > 0; _yy--) {
			for (var _xx = 0; _xx < 10; _xx++) {
				if (global.grid[# _xx, _yy - 1] == 1) {
					//drop the grid value down to the next row
					global.grid[# _xx, _yy] = 1;
					global.grid[# _xx, _yy - 1] = 0;
					//drop the block
					var _block = instance_place(_xx * cell_size + grid_offset, (_yy - 1) * cell_size + grid_offset, o_blocks);
					if (_block != noone) {
						_block.y += cell_size;
					}
				}
			}
		}
		yy++;
	}
}

