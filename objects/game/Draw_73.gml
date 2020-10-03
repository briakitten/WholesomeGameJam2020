/// @description 

if (game_playing) {

	draw_set_alpha(black_alpha);
	with (obj_player) {
		var xdraw = x - 160;
		var ydraw = y - 120;
		draw_rectangle_color(xdraw, ydraw, xdraw + 640, ydraw + 480, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		
		event_perform(ev_draw, 0);
	}

	// draw wisp count
	draw_set_font(fnt_creature);
	draw_text_transformed(42, 21, string(wisp_count) + " / " + string(wisp_count_threshold), 1, 1, 0);

}