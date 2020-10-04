/// @description 

var buttons_on_count = 0;

with (obj_button) {
	if (on) {
		buttons_on_count++;
	}
}

if (buttons_on_count == 3) {
	all_buttons_on = true;
}
else 
{
	all_buttons_on = false;	
}

if (room == rm_basement && all_buttons_on) {
	layer_set_visible("RavineBridge", true);
	instance_destroy(inst_collision2);
}