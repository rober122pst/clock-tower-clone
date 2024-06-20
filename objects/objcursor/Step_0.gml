x = mouse_x;
y = mouse_y;

if(right) {
	with(objJeniffer){
		x+=vel;
		image_xscale = 1;
		sprite_index = sprJenifferWalk;
	}
}else if(left){
	with(objJeniffer){
		x-=vel;
		image_xscale = -1;
		sprite_index = sprJenifferWalk;
	}	
}

if(place_meeting(x,y,objInterativo)){
	
	if(image_index >= 7){
		image_speed = 0;
	}else{
		image_speed = 1;	
	}
}else {
	if(image_index <= 1){
		image_speed = 0;
	}else{
		image_speed = -1;	
	}
}

if(keyboard_check_pressed(ord("X"))){
	idle = true;
}

if idle {
	left = false;
	right = false;
	run = false;
	with(objJeniffer){
		vel = 0;
		sprite_index = sprJenifferIdle;
	}	
}else {
	with(objJeniffer){
		if(!other.run)
			vel = .5;
		else
			vel = 1;
	}	
}