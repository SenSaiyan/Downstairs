/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, spider_obj_sidescroll)){
	if (keyboard_check_pressed(vk_space)){
		if(myTextbox == noone){
			myTextbox = instance_create_layer(x-150, y-220, "Text", textbox_obj);
			if (global.talktorats3 == true){
				myTextbox.text = myText;
			} else if (global.doorfix == true){
				myTextbox.text = myText1;
			} else {
				myTextbox.text = base;
			}
			myTextbox.creator = self;
			myTextbox.name = myName;
		}
	}
} else{
	if (myTextbox != noone){
		instance_destroy(myTextbox);
		myTextbox = noone;
	}
}