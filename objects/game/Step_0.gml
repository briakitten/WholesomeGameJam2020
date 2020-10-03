/// @description 

if (wisp_count_previous != wisp_count) {
	if (black_alpha_timer.update()) {
		wisp_count_previous = wisp_count;
		black_alpha = (wisp_count_threshold - wisp_count) / wisp_count_threshold;
		black_alpha_top = black_alpha;
	} else {
		var target_alpha = (wisp_count_threshold - wisp_count) / wisp_count_threshold;
		var alpha_portion = (black_alpha_top - target_alpha) * 
			(1 - black_alpha_timer.index / black_alpha_timer.threshold);
	
		black_alpha = target_alpha + alpha_portion;
	}
}