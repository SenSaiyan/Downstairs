/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, spider_obj_topdown_lvl2_obj) || place_meeting(x, y, spider_obj_sidescroll)){
	if (keyboard_check_pressed(vk_space)){
		if(myTextbox == noone){
			myTextbox = instance_create_layer(x-150, y-220, "Text", textbox_obj);
			//if (global.talktoroaches1==false){
			if (global.talktorats1==false){
				global.talktoroaches1 = true;
				myTextbox.text = myText;
			} else if (global.talktorats1==true){
				global.talktoroaches2 = true;
				myTextbox.text = myText1;
			} else if (global.talktorats2==true){
				global.talktoroaches2 = false;
				//global.talktoroaches3 = true;
				//global.talktorats3 = true;
				myTextbox.text = myText2;
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