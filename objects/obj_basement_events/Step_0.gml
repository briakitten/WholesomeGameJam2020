/// @description 

if (!msc_2_playing && game.wisp_count >= 1) {
	audio_sound_gain(msc_basement_2_piano, 0.6, 1000)
	msc_2_playing = true;
}
if (!msc_3_playing && game.wisp_count >= 2) {
	audio_sound_gain(msc_basement_3_strings, 0.7, 1000)
	msc_3_playing = true;
}