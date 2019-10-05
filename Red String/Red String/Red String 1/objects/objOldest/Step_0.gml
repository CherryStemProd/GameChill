//Movement
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("S"));

//Calculate Movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

//Vertical Collision
if (place_meeting(x, y + vsp, obj_ground)){
	while(!place_meeting(x, y + sign(vsp), obj_ground))
	{
		y = y+ sign(vsp);	
	}
	vsp = 0;
}