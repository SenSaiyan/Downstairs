/// @description Insert description here
// You can write your code in this editor
if (instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_h_half, room_height-view_h_half);

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);

/*
/// @description Insert description here
// You can write your code in this editor
/*if (instance_exists(follow)){
	xTo = follow.x;
	yTo = follow.y;
}

if (x < 0){
	x = 0;
}

if (x > room_width-1024){
	x = room_width-1024;
}

if (y < 0){
	y = 0;
}

if (y > room_height-768){
	y = room_width-768;
}

x += (xTo - x) / 25;
y += (yTo - y) / 25;

if (follow != noone){
	xTo = follow.x;
	yTo = follow.y;
}

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);

/*x = clamp(x, view_w_half, room_width-view_w_half);
y = clamp(y, view_h_half, room_height-view_h_half);

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);*/