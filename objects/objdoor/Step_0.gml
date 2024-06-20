switch(room_id){
	case 1:
		room_name = Room2;
		break;
	case 2:
		room_name = Room3;
		break;
}

if(place_meeting(x,y,objJeniffer)){
	room_goto(room_name);
}