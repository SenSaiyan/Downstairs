/// @description Insert description here
// You can write your code in this editor
/*while(forward){
	for (i = 0; i < 1000; i = i+100){
		x = x+i;
	}
	backward = true;
	forward = false;
}
while (backward){
	for (i = 0; i < 1000; i = i+100){
		x = x-i;
	}
	forward = true;
	backward = false;
}*/

mask_index = purple_spr;
hsp = dir * movespeed;

if (place_meeting(x+hsp,y,lvl1wall_obj)){
	while(!place_meeting(x+sign(hsp),y,lvl1wall_obj)){
		x += sign(hsp);
	}
	hsp = 0;
	dir *= -1;
}
x += hsp;

if (place_meeting(x,y-1,spider_obj_sidescroll_lvl1)){
	spider_obj_sidescroll_lvl1.hsp_carry = hsp;
}