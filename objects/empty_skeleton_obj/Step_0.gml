/// @description Insert description here
// You can write your code in this editor
if (pressed == false){
	audio_play_sound(creak_sd, 10, false);
	instance_create_layer(0,0,"light",light_obj)
	pressed = true;
}