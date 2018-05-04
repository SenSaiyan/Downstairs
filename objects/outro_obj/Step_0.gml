/// @description Insert description here
// You can write your code in this editor


//if (keyboard_check_pressed(vk_space)){
//	if(myTextbox == noone){
		//myTextbox = instance_create_layer(x-150, y-220, "Text", textbox_obj);
		//myTextbox.text = myText;
		//myTextbox.creator = self;
		//myTextbox = myName;
		/*if (keyboard_check_pressed(vk_space)){
			if (charCount < string_length(text[page])){
				charCount = string_length(text[page]);
			} else if (page+1 < array_length_1d(text)){
				page += 1;
				charCount = 0;
			} else {
				room_goto(lvl2ratbedroom);
			}
//		}
//	}
} /*else{
	if (myTextbox != noone){
		instance_destroy(myTextbox);
		myTextbox = noone;
	}
}*/

if (counter > 5){
	audio_stop_all();
	global.doorfix = false;
	global.lvl1score = 0;
	global.talktorats1 = false;
	global.talktorats2 = false;
	global.talktorats3 = false;
	global.talktoroaches1 = false;
	global.talktoroaches2 = false;
	global.talktoroaches3 = false;
	global.camefromroachbedroom_lower = true;
	global.camefromroachbedroom_upper = false;
	global.camefromratbedroom_upper = false;
	global.camefromratbedroom_lower = false;
	global.camefromoutside = false;
	global.camefromdiarydog = false;
	global.camefromelectricgrid = false;
	global.camefromflashback = false;
	
	room_goto(lvl1intro);
}

if (keyboard_check_pressed(vk_space)){
	counter++;
	if (charCount < string_length(text[page])){
		charCount = string_length(text[page]);
	} else if (page+1 < array_length_1d(text)){
		page += 1;
		charCount = 0;
	} else if (counter > 5){
		//show_message("i have aids");
		audio_stop_all();
	global.doorfix = false;
	global.lvl1score = 0;
	global.talktorats1 = false;
	global.talktorats2 = false;
	global.talktorats3 = false;
	global.talktoroaches1 = false;
	global.talktoroaches2 = false;
	global.talktoroaches3 = false;
	room_goto(intro);
		//show_message("uh oh");
	} else {
		//show_message("i have aids");
		audio_stop_all();
	global.doorfix = false;
	global.lvl1score = 0;
	global.talktorats1 = false;
	global.talktorats2 = false;
	global.talktorats3 = false;
	global.talktoroaches1 = false;
	global.talktoroaches2 = false;
	global.talktoroaches3 = false;
	room_goto(intro);
		//show_message("uh oh");
	}
}