/// @description Insert description here
// You can write your code in this editor
//vsp = dir * movespeed;
mask_index = brown_wall_obj;
vsp = dir * movespeed;

if (sign(vsp)){
	if (y >= endHeight){
		dir *= -1;
	}
} else if(sign(vsp) == -1){
	if (y <= startHeight){
		dir *= -1;
	}
}

y += vsp;

/*if (place_meeting(x,y-1,spider_obj_sidescroll)){
	//if (!place_meeting(x, y+sprite_height+1, spider_obj_sidescroll)){
		spider_obj_sidescroll.vsp_carry = vsp;
	//}
} */


	