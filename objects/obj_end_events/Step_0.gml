/// @description 

if (alpha != 1) {
	if (fadein_timer.update()) {
		alpha = 1;
	} else {
		alpha = fadein_timer.index / fadein_timer.threshold;
	}
}

if (!thx_waited) {
	if (thx_wait_timer.update()) {
		thx_waited = true;
	}
} else {
	if (alpha_thx != 1) {
		if (thx_timer.update()) {
			alpha_thx = 1;
		} else {
			alpha_thx = thx_timer.index / thx_timer.threshold;
		}
	}
}