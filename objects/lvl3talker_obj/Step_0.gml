/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, spider_sidescroll_notstupid_obj)){
	if (keyboard_check_pressed(vk_space)){
		if(myTextbox == noone){
			myTextbox = instance_create_layer(x-150, y-220, "Text", textbox_obj);
			myTextbox.text = myText;
			myTextbox.creator = self;
			myTextbox = myName;
		}
	}
} else{
	if (myTextbox != noone){
		instance_destroy(myTextbox);
		myTextbox = noone;
	}
}