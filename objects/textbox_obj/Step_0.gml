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

//if (instance_exists(self)){
	if (instance_exists(spider_obj_sidescroll)){
		orig_speed = spider_obj_sidescroll.walkspd;
		spider_obj_sidescroll.vsp = 0;
		spider_obj_sidescroll.hsp = 0;
	}
	if (instance_exists(spider_obj_sidescroll_lvl1)){
		orig_speed = spider_obj_sidescroll_lvl1.walkspd;
		spider_obj_sidescroll_lvl1.vsp = 0;
		spider_obj_sidescroll_lvl1.hsp = 0;
	}
	if (instance_exists(spider_obj_topdown_lvl2_obj)){
		orig_speed = spider_obj_topdown_lvl2_obj.walkspd;
		spider_obj_topdown_lvl2_obj.vsp = 0;
		spider_obj_topdown_lvl2_obj.hsp = 0;
	}
	if (instance_exists(spider_obj_topdown1)){
		orig_speed = spider_obj_topdown1.walkspd;
		spider_obj_topdown1.vsp = 0;
		spider_obj_topdown1.hsp = 0;
	}
	if (instance_exists(spider_sidescroll_notstupid_obj)){
		orig_speed = spider_sidescroll_notstupid_obj.walkspd;
		spider_sidescroll_notstupid_obj.vsp = 0;
		spider_sidescroll_notstupid_obj.hsp = 0;
	}
//}