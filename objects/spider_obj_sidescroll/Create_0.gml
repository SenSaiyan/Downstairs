/// @description Insert description here
// You can write your code in this editor
hsp = 0;
vsp = 0;
grav = 1;
walkspd = 5;
wall = lvl1wall_obj;
hsp_carry = 0;
vsp_carry = 0;
init_x = 0;
//wall = brown_wall_obj;

if (room == lvl2_hallway){
	if (global.camefromelectricgrid == true){
		x = 9860;
		y = 6800;		
	} else if (global.camefromratbedroom_upper == true){
		x = 50;
		y = 2600;
	} else if (global.camefromratbedroom_lower == true){
		x = 50;
		y = 7500;
	} else if (global.camefromroachbedroom_upper == true){
		x = 9765;
		y = 400;
	} else if (global.camefromroachbedroom_lower == true) {
		x = 9765;
		y = 7500;
	} else if (global.camefromdiarydog == true){
		x = 3380;
		y = 4620
	}
	
} else if (room == lvl2roachbedroom){
	if (global.camefromroachbedroom_lower) {
		x = 100;
		y = 4270;
	}
} else if (room == lvl2ratbedroom){
	if (global.camefromratbedroom_lower) {
		x = 6800;
		y = 3850;
	}
}

init_x = x;
init_y = y;
