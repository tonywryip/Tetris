/// scr_CheckRows()
var _numRows = 0;

// Loop bottom to top
for (var yy = 19; yy >= 0; yy--){
    var _full = true;
    for (var xx = 0; xx < 10; xx++){
        if (Grid[# xx,yy] == 0)
            _full = false
    }
    
    // Take Action (if row is full)
    if (_full){
        _numRows++
        // Set Grid-space to 0 and Delete blocks
        for (var xx = 0; xx < 10; xx++){               
            Grid[# xx,yy] = 0;
            var _inst = instance_place(xx*CELL_SIZE+GRID_OFFSET, yy*CELL_SIZE+GRID_OFFSET, obj_Blocks);
            with _inst instance_destroy()
        }
        
        // Shuffle
        for (var _yy = yy; _yy > 0; _yy--){
            for (var _xx = 0; _xx < 10; _xx++){
                if (Grid[# _xx,_yy-1] == 1){
                    // Drop Grid Value
                    Grid[# _xx,_yy] = 1;
                    Grid[# _xx,_yy-1] = 0;
                    // Drop Block
                    var _block = instance_place(_xx*CELL_SIZE+GRID_OFFSET, (_yy-1)*CELL_SIZE+GRID_OFFSET, obj_Blocks);
                    if (_block != noone)
                        _block.y += CELL_SIZE;
                }
            }
        }
        yy++
    }
}
