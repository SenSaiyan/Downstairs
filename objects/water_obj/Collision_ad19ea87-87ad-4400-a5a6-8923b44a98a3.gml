/// @description Insert description here
// You can write your code in this editor
if (global.doorfix == false){
	audio_play_sound(water_sd, 10, false);
	if (global.camefromoutside == true){
		other.x = 9520;
		other.y = 8600;
	} else {
		other.x = 840;
		other.y = 8500;
	}
}