/// @description Insert description here
// You can write your code in this editor
draw_set_font(consolas_fnt);
draw_set_halign(fa_center);
draw_set_color(c_black);
//draw_text(50,0, "test");
//draw_text(1024/2, 200+(counter*10), text[counter]);
if (counter <= 4){
	draw_text(room_width/2, 200+(counter*10), text[counter]);
}
//draw_text(100,50, "test");
//shader_reset();
//draw_surface(application_surface, 0, 0);
draw_set_halign(fa_left);