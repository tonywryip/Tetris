if save {
	//save_cd reset at o_controller step event
	save_cd = false
	if saved_shape == noone {
		saved_shape = o_shape.index
		with o_shape {
			instance_destroy();
		}
		//creating the shape from next shape
		var _shape = instance_create_layer(x, y, "Instances", o_shape);
		#region shape indexing
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
		#endregion
	} else {
		var _temp_shape = o_shape.index
		with o_shape {
			instance_destroy();
		}
		
		//creating the shape from saved shape
		var _shape = instance_create_layer(x, y, "Instances", o_shape);
		#region shape indexing 2
		with (_shape) {
			index = other.saved_shape;
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
		#endregion
		
		//save current shape id
		saved_shape = _temp_shape;
	}
}