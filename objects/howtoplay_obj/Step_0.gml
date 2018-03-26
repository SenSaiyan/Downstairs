/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(ord("A"))||keyboard_check(ord("S"))||keyboard_check(ord("D"))||keyboard_check(ord("W"))){
	draw1 = false;
	draw2 = true;
}

if(draw2 && keyboard_check_pressed(vk_space)){
	draw2 = false;
	draw3 = true;
}

if (keyboard_check_pressed(vk_space) && draw3){
	//instance_create_layer(250, 550, "Instances", owl1_obj)
	instance_create_layer(10,10,"Text",lvl1score_obj);
	instance_destroy();
}