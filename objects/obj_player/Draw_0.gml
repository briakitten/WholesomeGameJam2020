/// @description 
draw_self();

var x_scale = 1;
var y_scale = 1;
var x_offset = 0;
var y_offset = 0;

// update animation cycle
if (!idle) {
	frame_timer.update();
	x_frame = frame_timer.get_frame(6);
}

// set y_frame
switch (dir8) {
case Dir8.UP:
	y_frame = 2;
	break;
case Dir8.DOWN:
	y_frame = 0;
	break;
default:
	y_frame = 1;
	break;
}

// flip sprite for left facing
if (dir8 == Dir8.UP_LEFT || dir8 == Dir8.LEFT  || dir8 == Dir8.DOWN_LEFT) {
	x_scale = -1;
	x_offset += frame_size;
}

draw_sprite_part_ext(spr_player, -1, x_frame * frame_size, y_frame * frame_size, frame_size, frame_size,
	x + x_offset, y + y_offset, x_scale, y_scale, c_white, 1);