/// @description 

if (alpha != 1) {
	if (fadein_timer.update()) {
		alpha = 1;
	} else {
		alpha = fadein_timer.index / fadein_timer.threshold;
	}
}