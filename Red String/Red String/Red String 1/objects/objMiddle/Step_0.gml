
if(control == true){
	//Player Input
	key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check(ord("W"));

	//Calculate Movement
	var move = key_right - key_left;

	hsp = move * walksp;

	vsp = vsp + grv;

	if (place_meeting(x, y+1, objGround)) && (key_jump){
		vsp = -7;
	}
	//Horizontal Collision
	if (place_meeting(x + hsp, y, objGround)){
		while(!place_meeting(x + sign(hsp), y, objGround))
		{
			x = x + sign(hsp);	
		}
		hsp = 0;
	}
	x = x + hsp;

	//Vertical Collision
	if (place_meeting(x, y + vsp, objGround)){
		while(!place_meeting(x, y + sign(vsp), objGround))
		{
			y = y+ sign(vsp);	
		}
		vsp = 0;
	}
	y = y + vsp;
}