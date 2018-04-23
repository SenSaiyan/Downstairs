/// Input and Collision Detection
// You can write your code in this editor
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_down = keyboard_check(ord("S"));
key_up = keyboard_check(ord("W"));
key_shift = keyboard_check(vk_lshift);

var move = key_right - key_left;

vsp = vsp + grav;

hsp = move * walkspd;

if (place_meeting(x, y + 1, lvl1wall_obj) && key_up){
	vsp = -14
}

if (place_meeting(x, y + 1, lvl2door_obj) && key_up){
	vsp = -14
}

if (place_meeting(x, y + 1, lvl1movingwall_obj) && key_up){
	vsp = -14
}

var hsp_final = hsp + hsp_carry;
hsp_carry = 0;

if (place_meeting(x + hsp_final, y, lvl1wall_obj)){
	while(!place_meeting(x+sign(hsp_final), y, lvl1wall_obj)){
		x = x + sign(hsp_final);
	}
	hsp_final = 0;
	hsp = 0;
}

if (place_meeting(x + hsp_final, y, lvl2door_obj)){
	while(!place_meeting(x+sign(hsp_final), y, lvl2door_obj)){
		x = x + sign(hsp_final);
	}
	hsp_final = 0;
	hsp = 0;
}

if (place_meeting(x + hsp_final, y, lvl1movingwall_obj)){
	while(!place_meeting(x+sign(hsp_final), y, lvl1movingwall_obj)){
		x = x + sign(hsp_final);
	}
	hsp_final = 0;
	hsp = 0;
}

x += hsp_final;

if (place_meeting(x, y + vsp, lvl1wall_obj)){
	while(!place_meeting(x, y+sign(vsp), lvl1wall_obj)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

if (place_meeting(x, y + vsp, lvl2door_obj)){
	while(!place_meeting(x, y+sign(vsp), lvl2door_obj)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

if (place_meeting(x, y + vsp, lvl1movingwall_obj)){
	while(!place_meeting(x, y+sign(vsp), lvl1movingwall_obj)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

//if (keyboard_check_pressed(vk_space)){
//	instance_create_layer(x+25, y+25, "Text", lvl2intro_text);
//}