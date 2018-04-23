/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y-1, spider_obj_sidescroll_lvl1)){
	if (spider_obj_sidescroll_lvl1.vsp > 90){ 
		audio_play_sound(splat_sd, 10, false);
		room_restart();
	}
}