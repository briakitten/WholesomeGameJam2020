/// @description 
draw_self();

if (game.wisp_count >= game.wisp_count_threshold) {
	frame_timer.update();
	frame_x = frame_timer.get_frame(8);
	
	draw_sprite_part(lookhere, -1, frame_x * frame_size, 0, frame_size, frame_size, x + 4, y - 24);
}