/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y-1, spider_obj_sidescroll_lvl1)){
	if (spider_obj_sidescroll_lvl1.vsp > 45){ 
		audio_play_sound(splat_sd, 10, false);
		spider_obj_sidescroll_lvl1.x = 416;
		spider_obj_sidescroll_lvl1.y = 1585;
		//room_restart();
	}
}