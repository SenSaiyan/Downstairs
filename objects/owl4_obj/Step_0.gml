/// @description Insert description here
// You can write your code in this editor
if(myTextbox == noone){
	myTextbox = instance_create_layer(1024/2, 768-200, "Text", textbox_obj);
	myTextbox.text = myText;
	myTextbox.creator = self;
	myTextbox.name = myName;	
} else {
	if (myTextbox != noone){
		instance_destroy(myTextbox);
		myTextbox = noone;
	}
}

if (keyboard_check_pressed(vk_space)){
	room_goto(bottom);
}