/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_space)){
	if (charCount < string_length(text[page])){
		charCount = string_length(text[page]);
	} else if (page+1 < array_length_1d(text)){
		page += 1;
		charCount = 0;
	} else {
		instance_destroy();
		creator.alarm[1] = 1;
	}
}

/*while (instance_exists(self)){
	spider_obj_sidescroll.movespeed = 0;
	spider_obj_sidescroll_lvl1.movespeed = 0;
	spider_obj_topdown_lvl2_obj.movespeed = 0;
	spider_obj_topdown1.movespeed = 0;
	spider_sidescroll_notstupid_obj.movespeed = 0;
}*/