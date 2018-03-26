/// @description Insert description here
// You can write your code in this editor
draw_sprite(textbox_spr,0,x,y);
//text = "ASDF";
draw_set_font(consolas_fnt);
if (charCount < string_length(text[page])){
	charCount += 1;
}
textPart = string_copy(text[page], 1, charCount);
draw_set_halign(fa_center);
draw_set_color(c_yellow);
draw_text(x + boxWidth/2,y+yBuffer,name);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_text_ext(x + xBuffer, y+yBuffer+25,text[page],stringHeight,boxWidth);