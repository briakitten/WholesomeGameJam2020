/// @description 
frame_timer = new Frame_Timer(30);

x_scale = 1;
y_scale = 1;
frame = 0;


width = 24;
height = 24;

collected = false;

collect = function() {
	collected = true;
	visible = false;
}