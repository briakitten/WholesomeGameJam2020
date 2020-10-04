/// @description 

if (game_playing) {

	// mask room with black rectangle
	var _channel = animcurve_get_channel(curve, 0);
	var _val = animcurve_channel_evaluate(_channel, black_alpha);
	draw_set_alpha(_val);
	var xdraw = player_x - 160;
	var ydraw = player_y - 120;
	draw_rectangle_color(xdraw, ydraw, xdraw + 640, ydraw + 480, c_black, c_black, c_black, c_black, false);
	draw_set_alpha(1);
		
	// draw player on-top of dark room
	with (obj_player) {
		event_perform(ev_draw, 0);
	}

	// draw wisp count
	if (room == rm_basement || room == rm_bedroom) {
		draw_set_font(fnt_creature);
		draw_text_transformed(player_x - 120, player_y - 90, string(wisp_count) + " / " + string(wisp_count_threshold), 1, 1, 0);
	}
}