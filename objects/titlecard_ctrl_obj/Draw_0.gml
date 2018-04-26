/// @description Insert description here
// You can write your code in this editor
if (counter >= 1){
	draw_sprite(white_spr, 0, 0,150);
	//instance_create_layer(0, 150, "Instances", white_obj);
	if (counter >= 2){
		//instance_create_layer(342, 350, "Instances", white_obj);
		draw_sprite(white_spr, 0, 342,350);
		if (counter >= 3){
			//instance_create_layer(648, 550, "Instances", white_obj);
			draw_sprite(white_spr, 0, 648, 550);
			if (counter >= 4){
				draw_set_font(consolas_fnt);
				draw_set_color(c_black);
				draw_text(30,700,"Downstairs");
				if (counter >=5){
					instance_create_layer(0, 0, "Instances", glitch_big_ctrl_obj);
				}
			}
		}
	}
}