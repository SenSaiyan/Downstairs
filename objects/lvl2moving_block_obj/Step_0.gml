/// @description Insert description here
// You can write your code in this editor
vsp = dir * movespeed;

if ((y+sign(vsp) < 100) or (place_meeting(x, y+vsp,brown_wall_obj))){
	while(!place_meeting(x, 100 + sign(vsp), brown_wall_obj) or (y+sign(vsp) < 100)){
		y += sign(vsp);
	}
	vsp = 0;
	dir *= -1;
}
y += vsp;

if (place_meeting(x,y-1,spider_obj_sidescroll)){
	spider_obj_sidescroll.hsp_carry = vsp;
}