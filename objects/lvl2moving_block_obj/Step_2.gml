/// @description Insert description here
// You can write your code in this editor
with spider_obj_sidescroll {
    if place_meeting(x,y+2,other) {
		// Move him with the lift
        x+=other.x-other.xprevious
        y+=other.y-other.yprevious
    }
}