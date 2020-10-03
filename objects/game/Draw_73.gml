/// @description 

if (game_playing) {

	var _channel = animcurve_get_channel(curve, 0);
	var _val = animcurve_channel_evaluate(_channel, black_alpha);
	draw_set_alpha(_val);
	
	var xdraw = player_x - 160;
	var ydraw = player_y - 120;
	draw_rectangle_color(xdraw, ydraw, xdraw + 640, ydraw + 480, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
		
	with (obj_player) {
		event_perform(ev_draw, 0);
	}

	// draw wisp count
	draw_set_font(fnt_creature);
	draw_text_transformed(42, 21, string(wisp_count) + " / " + string(wisp_count_threshold), 1, 1, 0);

}