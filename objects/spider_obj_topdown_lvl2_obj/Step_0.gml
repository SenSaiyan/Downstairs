/// @description Insert description here
// You can write your code in this editor
/*key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_down = keyboard_check(ord("S"));
key_up = keyboard_check(ord("W"));
//key_shift = keyboard_check(vk_lshift);

var hmove = key_right - key_left;

var vmove = key_down - key_up;

hsp = hmove * walkspd;
vsp = vmove * walkspd;

if (place_meeting(x + hsp, y, brown_wall_obj)){
	while(!place_meeting(x+sign(hsp), y, brown_wall_obj)){
		x = x + sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x + hsp, y, water_obj)){
	while(!place_meeting(x+sign(hsp), y, water_obj)){
		x = x + sign(hsp);
	}
	hsp = 0;
}

x = x + hsp;

if (place_meeting(x, y + vsp, brown_wall_obj)||place_meeting(x, y + vsp, water_obj)){
	while(!place_meeting(x, y+sign(vsp), brown_wall_obj)){
		y = y + sign(vsp);
	}
	while(!place_meeting(x, y+sign(vsp), water_obj)){
		y = y + sign(vsp);
	}
	vsp = 0;
}

y = y + vsp;*/

Key_Left = keyboard_check(ord("A"));
Key_Right = keyboard_check(ord("D"));
Key_Up = keyboard_check(ord("W"));
Key_Down = keyboard_check(ord("S"));
//Key_Sprint = keyboard_check(vk_lshift);
 
key_hor = Key_Right - Key_Left;
key_vert = Key_Down - Key_Up;
key_speed = min(1,abs(key_hor)+abs(key_vert));
key_dir = point_direction(0,0,key_hor,key_vert);
 
 
//Collisions and Movement
//Horizontal (X)
//if place_meeting(x+(sign(key_hor)*8),y,par_collision){
if place_meeting(x+(sign(key_hor)*8),y,brown_wall_obj){
 
    while !place_meeting(x+(sign(key_hor)*4),y,brown_wall_obj){
        x += key_hor;
    }
   
    //if place_meeting(x+(sign(key_hor)*8),y+16,par_collision){
	if (place_meeting(x+(sign(key_hor)*8), y+16, brown_wall_obj)){
        y = y - 4;
    }
   
    //if place_meeting(x+(sign(key_hor)*8),y-16,par_collision){
	if (place_meeting(x+(sign(key_hor)*8), y-16, brown_wall_obj)){
        y = y + 4;
    }    
} else {
    x += lengthdir_x(key_speed*playerSpeed,key_dir);
}

if place_meeting(x+(sign(key_hor)*8),y,water_obj){
 
    while !place_meeting(x+(sign(key_hor)*4),y,water_obj){
        x += key_hor;
    }
   
    //if place_meeting(x+(sign(key_hor)*8),y+16,par_collision){
	if (place_meeting(x+(sign(key_hor)*8), y+16, water_obj)){
        y = y - 4;
    }
   
    //if place_meeting(x+(sign(key_hor)*8),y-16,par_collision){
	if (place_meeting(x+(sign(key_hor)*8), y-16, water_obj)){
        y = y + 4;
    }    
} else {
    x += lengthdir_x(key_speed*playerSpeed,key_dir);
}
 
//Vertical (Y)
if place_meeting(x,y+(sign(key_vert)*8),brown_wall_obj){
 
    //while !place_meeting(x,y+(sign(key_vert)*4),par_collision){
	if (!place_meeting(x, y+(sign(key_vert)*4), brown_wall_obj)){
        y += key_vert;
    }
   
    //if place_meeting(x+16,y+(sign(key_vert)*8),par_collision){
	if (place_meeting(x+16, y+(sign(key_vert)*4), brown_wall_obj)){
        x = x - 4;
    }
   
    //if place_meeting(x-16,y+(sign(key_vert)*8),par_collision){
	if place_meeting(x-16,y+(sign(key_vert)*8),brown_wall_obj){
        x = x + 4;
    }
   
} else {
    y += lengthdir_y(key_speed*playerSpeed,key_dir);
}

if place_meeting(x,y+(sign(key_vert)*8),water_obj){
 
    //while !place_meeting(x,y+(sign(key_vert)*4),par_collision){
	if (!place_meeting(x, y+(sign(key_vert)*4), water_obj)){
        y += key_vert;
    }
   
    //if place_meeting(x+16,y+(sign(key_vert)*8),par_collision){
	if (place_meeting(x+16, y+(sign(key_vert)*4), water_obj)){
        x = x - 4;
    }
   
    //if place_meeting(x-16,y+(sign(key_vert)*8),par_collision){
	if place_meeting(x-16,y+(sign(key_vert)*8),water_obj){
        x = x + 4;
    }
   
} else {
    y += lengthdir_y(key_speed*playerSpeed,key_dir);
}

if place_meeting(x,y+(sign(key_vert)*8),brown_wall_obj) {
	while(!place_meeting(x,y+(sign(key_vert)*8),brown_wall_obj)) {
		y += sign(key_vert)*8;
	}
	vsp = 0;
}

if place_meeting(x,y+(sign(key_vert)*8),water_obj) {
	while(!place_meeting(x,y+(sign(key_vert)*8),water_obj)) {
		y += sign(key_vert)*8;
	}
	vsp = 0;
}
y += vsp;