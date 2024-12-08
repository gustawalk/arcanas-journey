var _target_x = end_x, _target_y = end_y;

if(going_to_start){
	_target_x = start_x;
	_target_y = start_y;
}

move_x = sign(_target_x - x) * current_speed;
move_y = sign(_target_y - y) * current_speed;