/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_down = keyboard_check(ord("S"));
key_up = keyboard_check(ord("W"));
//key_shift = keyboard_check(vk_lshift);

var hmove = key_right - key_left;

var vmove = key_down - key_up;

hsp = hmove * walkspd;
vsp = vmove * walkspd;

if (place_meeting(x + hsp, y, wall)){
	while(!place_meeting(x+sign(hsp), y, brown_wall_obj)){
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

if (place_meeting(x, y + vsp, brown_wall_obj)){
	while(!place_meeting(x, y+sign(vsp), brown_wall_obj)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;