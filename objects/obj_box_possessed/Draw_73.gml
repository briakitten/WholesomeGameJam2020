/// @description 
//draw_self();

var x_scale = 1;
var y_scale = 1;
var x_offset = 0;
var y_offset = 0;

// update animation cycle
if (!idle) {
	frame_timer.update();
	x_frame = frame_timer.get_frame(2);
} else {
	x_frame = 0;
}

// flip sprite for opposite facing
if (dir8 == Dir8.UP_RIGHT || dir8 == Dir8.RIGHT || dir8 == Dir8.DOWN_RIGHT) {
	x_scale = -1;
	x_offset += frame_size;
}

draw_sprite_part_ext(spr_box_possessed_moving, -1, x_frame * frame_size, y_frame * frame_size, frame_size, frame_size,
	x + x_offset, y + y_offset, x_scale, y_scale, c_white, 1);