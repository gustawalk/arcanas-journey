

// collision for horizontal moving platforms
if(place_meeting(x+move_x, y+move_y, obj_entity_father) || place_meeting(x, y-1, obj_entity_father)){
	with(obj_entity_father){
		if(!place_meeting(x+other.move_x, y+other.move_y, obj_collision_father)){
			x += other.move_x;
			y += other.move_y;
		}
	}
}

// collision for vertical moving platforms
if(place_meeting(x, y+1, obj_entity_father) || place_meeting(x, y-1, obj_entity_father)){
	with(obj_entity_father){
		y+=other.move_y;	
	}
}

x += move_x;
y += move_y;
show_debug_message(move_y);

if(going_to_start && point_distance(x, y, start_x, start_y) < current_speed){
	going_to_start = false;
	current_speed = 0;
	alarm[0] = wait_time;
}

if(!going_to_start && point_distance(x, y, end_x, end_y) < current_speed){
	going_to_start = true;
	current_speed = 0;
	alarm[0] = wait_time;
}