/// @description Insert description here
// You can write your code in this editor
//mask_index = purple_spr;
hsp = dir * movespeed;

if (place_meeting(x+hsp,y,brown_wall_obj)){
	while(!place_meeting(x+sign(hsp),y,brown_wall_obj)){
		x += sign(hsp);
	}
	hsp = 0;
	dir *= -1;
}
if (place_meeting(x+hsp,y,lvl2movingwall_horizontal_obj)){
	while(!place_meeting(x+sign(hsp),y,lvl2movingwall_horizontal_obj)){
		x += sign(hsp);
	}
	hsp = 0;
	dir *= -1;
}
x += hsp;

/*if (place_meeting(x,y-1,spider_obj_sidescroll)){
	spider_obj_sidescroll.hsp_carry = hsp;
}*/