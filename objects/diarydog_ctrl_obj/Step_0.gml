/// @description Insert description here
// You can write your code in this editor
if (counter > 10){
	room_goto(lvl2_hallway);
}

if (keyboard_check_pressed(vk_space)){
	counter++;
	if (charCount < string_length(text[page])){
		charCount = string_length(text[page]);
	} else if (page+1 < array_length_1d(text)){
		page += 1;
		charCount = 0;
	} else if (counter > 10){
		//show_message("i have aids");
		audio_stop_all();
		room_goto(lvl2_hallway);
		//show_message("uh oh");
	} else {
		//show_message("i have aids");
		audio_stop_all();
		room_goto(lvl2_hallway);
		//show_message("uh oh");
	}
}