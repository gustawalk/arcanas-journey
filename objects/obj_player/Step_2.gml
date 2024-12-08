

repeat(abs(hspd)){
	var _hspd = sign(hspd);
	
	if(place_meeting(x+_hspd, y, obj_collision_father) && !place_meeting(x+_hspd, y-1, obj_collision_father)){
		y--;	
	}
	if(!place_meeting(x+_hspd, y, obj_collision_father) && !place_meeting(x+_hspd, y+1, obj_collision_father) && place_meeting(x + _hspd, y+2, obj_collision_father)){
		y++;	
	}
	
	if(place_meeting(x + _hspd, y, obj_collision_father)){
		hspd = 0;
		break;
	}else{
		x += _hspd;	
	}
}

repeat(abs(vspd)){
	var _vspd = sign(vspd);
	var _on_ground = instance_place(x, y + _vspd, obj_collision_father);
	
	if(_on_ground){
		vspd = 0;
		break;
	}else{
		y += _vspd;	
	}
}