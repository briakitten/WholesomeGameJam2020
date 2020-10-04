/// @description 

if (frame_timer.update()) {
	frame = 0;
} else {
	frame = frame_timer.get_frame(4);
}