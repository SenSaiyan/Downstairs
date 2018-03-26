/// @description Insert description here
// You can write your code in this editor
//if 

//if (keyboard_check_pressed(vk_space)){
if (selftalk){
	if(myTextbox == noone){
		myTextbox = instance_create_layer(x-150, y-220, "Text", textbox_obj);
		myTextbox.text = myText;
		myTextbox.creator = self;
		myTextbox = myName;
	}
	selftalk = false;
} else{
	if (myTextbox != noone){
		instance_destroy(myTextbox);
		myTextbox = noone;
	}
}