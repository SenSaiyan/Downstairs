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

if (counter > 13){
	room_goto(lvl2ratbedroom);
}

if (keyboard_check_pressed(vk_space)){
	counter++;
	if (charCount < string_length(text[page])){
		charCount = string_length(text[page]);
	} else if (page+1 < array_length_1d(text)){
		page += 1;
		charCount = 0;
	} else if (counter > 13){
		show_message("i have aids");
		room_goto(lvl2ratbedroom);
		show_message("uh oh");
	} else {
		show_message("i have aids");
		room_goto(lvl2ratbedroom);
		show_message("uh oh");
	}
}