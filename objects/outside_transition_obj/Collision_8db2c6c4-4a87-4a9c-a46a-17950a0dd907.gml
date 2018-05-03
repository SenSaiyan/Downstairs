/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(outside_sd);
//audio_play_sound(Hope,10,true);

global.camefromroachbedroom_lower = false;
global.camefromroachbedroom_upper = false;
global.camefromratbedroom_upper = false;
global.camefromratbedroom_lower = false;
global.camefromoutside = true;
global.camefromdiarydog = false;
global.camefromelectricgrid = false;

room_goto(lvl2_hallway);