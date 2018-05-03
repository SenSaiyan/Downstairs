/// @description Insert description here
// You can write your code in this editor
if (talk == true){
	if(myTextbox == noone){
		myTextbox = instance_create_layer(x-150, y-220, "Text", textbox_obj);
		myTextbox.text = myText;
		myTextbox.creator = self;
		myTextbox.name = myName;
	}
} else{
	if (myTextbox != noone){
		instance_destroy(myTextbox);
		myTextbox = noone;
	}
}