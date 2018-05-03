/// Input and Collision Detection
// You can write your code in this editor
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_down = keyboard_check(ord("S"));
key_up = keyboard_check(ord("W"));
//key_shift = keyboard_check(vk_lshift);

var move = key_right - key_left;

vsp = vsp + grav;

hsp = move * walkspd;

/*if hsp == 0{
	glitch_ctrl_obj.intensity = .37;
}*/

if (place_meeting(x, y + 1, invis_wall_obj) && key_up){
	vsp = -14
}

if (place_meeting(x + hsp, y, invis_wall_obj)){
	while(!place_meeting(x+sign(hsp), y, invis_wall_obj)){
		x = x + sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x, y + 1, textbox_move_obj) && key_up){
	vsp = -14
}

if (place_meeting(x + hsp, y, textbox_move_obj)){
	while(!place_meeting(x+sign(hsp), y, textbox_move_obj)){
		x = x + sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x, y + 1, barrier_obj) && key_up){
	vsp = -14
}

if (place_meeting(x + hsp, y, barrier_obj)){
	while(!place_meeting(x+sign(hsp), y, barrier_obj)){
		x = x + sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x, y + 1, brown_wall_obj) && key_up){
	vsp = -14
}

if (place_meeting(x + hsp, y, brown_wall_obj)){
	while(!place_meeting(x+sign(hsp), y, brown_wall_obj)){
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;
//glitch_ctrl_obj.intensity+=0.03;

if (place_meeting(x, y + vsp, invis_wall_obj)){
	while(!place_meeting(x, y+sign(vsp), invis_wall_obj)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

if (place_meeting(x, y + vsp, barrier_obj)){
	while(!place_meeting(x, y+sign(vsp), barrier_obj)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

if (place_meeting(x, y + vsp, brown_wall_obj)){
	while(!place_meeting(x, y+sign(vsp), brown_wall_obj)){
		y = y + sign(vsp);
	}
	vsp = 0;
}
if (place_meeting(x, y + vsp, textbox_move_obj)){
	while(!place_meeting(x, y+sign(vsp), textbox_move_obj)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;

//if (keyboard_check_pressed(vk_space)){
//	instance_create_layer(x+25, y+25, "Text", lvl2intro_text);
//}