if(place_meeting(x,y,objCursor)){
	if(mouse_check_button_pressed(mb_left)){
		clicou = true;
	}
}

if(clicou) {
	if(distance_to_object(objJeniffer) == 0){
		event = true;
		clicou = false;
	}	
}

if(event){
	objJeniffer.image_xscale = sign(x - objJeniffer.x);
	objCursor.idle = true;
}