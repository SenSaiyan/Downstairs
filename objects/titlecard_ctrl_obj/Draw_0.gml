/// @description Insert description here
// You can write your code in this editor
if (counter >= 45){
	draw_sprite(white_spr, 0, 0,150);
	audio_play_sound(thud_sd,9,false);
	//instance_create_layer(0, 150, "Instances", white_obj);
	if (counter >= 90){
		//instance_create_layer(342, 350, "Instances", white_obj);
		draw_sprite(white_spr, 0, 600,400);
		audio_play_sound(thud_sd,9,false);
		if (counter >= 135){
			//instance_create_layer(648, 550, "Instances", white_obj);
			draw_sprite(white_spr, 0, 1200, 750);
			audio_play_sound(thud_sd,9,false);
			if (counter >= 180){
				draw_set_font(consolas_fnt);
				draw_set_color(c_black);
				draw_text(30,700,"Downstairs");
				audio_play_sound(thud_sd,9,false);
				if (counter >=225){
					instance_create_layer(0, 0, "Instances", glitch_big_ctrl_obj);
					audio_play_sound(thud_sd,9,false);
					if (counter >= 270){
						room_goto(lvl2intro);
					}
				}
			}
		}
	}
}