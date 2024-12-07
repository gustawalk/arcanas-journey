// floor/wall collision

var _floor_collision = place_meeting(x, y+1, obj_collision_father);

// movement

var _left, _right, _jump;

_left = keyboard_check(vk_left);
_right = keyboard_check(vk_right);
_jump = keyboard_check_pressed(ord("Z"));

hspd = (_right - _left) * max_hspd;

if(!_floor_collision){
	vspd += GRAVITY * mass;	
}else{
	qtd_extra_jump = max_extra_jumps;	
}

// fixing the sprite to invert when the player move to the left
if(hspd != 0){
	xscale = sign(hspd);
}
image_xscale = xscale;

// STATE MACHINE

switch(state){
	case "idle":
		sprite_index = spr_player_idle;
		
		if((_left || _right) && hspd != 0){
			change_state("walk", 0);	
		}
		
		if(_jump){
			change_state("jump", 0)
			vspd = -max_vspd;
		}else if(vspd > .5){
			change_state("fall", 0);	
		}
		break;
	case "walk":
		sprite_index = spr_player_walk;
		
		if(hspd == 0){
			change_state("idle", 0);	
		}else if(_jump){
			change_state("jump", 0);
			vspd = -max_vspd;
		}else if(vspd > .5){
			change_state("fall", 0);	
		}
		break;
	case "jump":

		sprite_index = spr_player_jump;
					
		if(image_index >= image_number-1){
			image_index = image_number-1;	
		}
			
		if(vspd > .5){
			change_state("fall", 0);
		}else if(_floor_collision){
			change_state("idle", 0);	
		}
		
		// extra jump
		if(_jump && qtd_extra_jump > 0){
			change_state("extrajump", 0);
			qtd_extra_jump--;
			vspd = -(max_vspd*.8);
		}
		break;
	case "fall":
		sprite_index = spr_player_fall;
		
		// extra jump
		if(_jump && qtd_extra_jump > 0){
			change_state("extrajump", 0);
			qtd_extra_jump--;
			vspd = -(max_vspd*.8);
		}else if(_floor_collision){
			change_state("idle", 0);	
		}
		break;
	case "extrajump":
		sprite_index = spr_player_extra_jump;
		if(vspd > 0){
			change_state("fall", 0);
		}else if(_floor_collision){
			change_state("idle", 0);	
		}
		break;
}


vspd = clamp(vspd, -max_vspd, max_vspd*2);