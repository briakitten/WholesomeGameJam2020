/// @description 

if (!audio_is_playing(msc_basement) && game.wisp_count >= 1) {
	audio_play_sound(msc_basement, 1000, true);
}