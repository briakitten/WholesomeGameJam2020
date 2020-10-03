/// @description 

if (frame_timer_flip.update()) {
	x_scale *= -1;
	
	if (x_scale == 1) {
		x_offset = 0;
	} else {
		x_offset = 24;
	}
}

