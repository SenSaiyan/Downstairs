/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, spider_obj_topdown_lvl2_obj) || place_meeting(x, y, spider_obj_sidescroll)){
	if (keyboard_check_pressed(vk_space)){
		if(myTextbox == noone){
			myTextbox = instance_create_layer(x-150, y-220, "Text", textbox_obj);
			global.talktoroaches1 = true;
			if (global.talktorats1==true){
				global.talktoroaches2 = true;
				//if (global.talktorats2==true){
				myTextbox.text = myText1;
				//}
				//global.talktoroaches3 = true;
			} else {
				//show_message()
				myTextbox.text = myText;
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