/// @description Insert description here
// You can write your code in this editor

if (counter > 13){
	//show_message("i have aids");
	room_goto(lvl1intro);
	//show_message("uh oh");
}

if (keyboard_check_pressed(vk_space)){
	counter++;
	if (charCount < string_length(text[page])){
		charCount = string_length(text[page]);
	} else if (page+1 < array_length_1d(text)){
		page += 1;
		charCount = 0;
	}
}