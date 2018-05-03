/// @description Insert description here
// You can write your code in this editor
cam = view_camera[0];
follow = spider_obj_sidescroll;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

if (room == lvl2_hallway){
	if (global.camefromelectricgrid == true){
		xTo = 9860;
		yTo = 6800;		
	} else if (global.camefromratbedroom_upper == true){
		xTo = 50;
		yTo = 2600;
	} else if (global.camefromratbedroom_lower == true){
		xTo = 50;
		yTo = 7500;
	} else if (global.camefromroachbedroom_upper == true){
		xTo = 9765;
		yTo = 400;
	} else if (global.camefromroachbedroom_lower == true) {
		xTo = 9765;
		yTo = 7500;
	}
	
} else if (room == lvl2roachbedroom){
	if (global.camefromroachbedroom_lower) {
		xTo = 100;
		yTo = 4270;
	}
} else if (room == lvl2ratbedroom){
	if (global.camefromratbedroom_lower) {
		xTo = 6800;
		yTo = 3850;
	}
}
/*
/// @description Insert description here
// You can write your code in this editor
camera = camera_create();
var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(1024, 768, 1, 10000);
camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);
view_camera[0] = camera;
follow = spider_obj_sidescroll;

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

xTo = x;
yTo = y;



/*cam = view_camera[0];
follow = spider_obj_sidescroll;
view_w_half = camera_get_view_width(cam) * 0.5;
view_h_half = camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;*/