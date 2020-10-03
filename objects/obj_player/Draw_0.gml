/// @description 
//draw_self();

var x_scale = 1;
var y_scale = 1;
var x_offset = 0;
var y_offset = 0;

// update animation cycle
if (!idle) {
	frame_timer.update();
	x_frame = 1 + frame_timer.get_frame(4);
} else {
	x_frame = 0;
}

// flip sprite for left facing
if (dir8 == Dir8.UP_LEFT || dir8 == Dir8.LEFT  || dir8 == Dir8.DOWN_LEFT || was_left) {
	x_scale = -1;
	x_offset += frame_size;
	was_left = true;
} 
if (dir8 == Dir8.UP_RIGHT || dir8 == Dir8.RIGHT || dir8 == Dir8.DOWN_RIGHT) {
	was_left = false;
}

draw_sprite_part_ext(spr_player, -1, x_frame * frame_size, y_frame * frame_size, frame_size, frame_size,
	x + x_offset, y + y_offset, x_scale, y_scale, c_white, 1);
	
draw_sprite_ext(spr_questionmark, -1, x + 4, y - 24, 1, 1, 0, c_white, questionmark_alpha);