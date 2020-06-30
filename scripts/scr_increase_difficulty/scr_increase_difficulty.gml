switch num_rows {
	case 1: 
	score += 1 
	if 	(o_controller.fall_norm > 1) {
		o_controller.fall_norm--;
	}
	break;
	
	case 2:
	score += 2 
	if 	(o_controller.fall_norm > 1) {
		o_controller.fall_norm--;
	}
	break;
	
	case 3: 
	score += 5 
	if 	(o_controller.fall_norm > 1) {
		o_controller.fall_norm -= 2;
	}
	break;
	
	case 4: 
	score += 10 
	if 	(o_controller.fall_norm > 1) {
		o_controller.fall_norm -= 4;
	}
	break;
}