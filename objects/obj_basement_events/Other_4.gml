/// @description 


audio_play_sound(msc_basement_1_ambient, 1000, true);
audio_play_sound(msc_basement_2_piano, 1000, true);
audio_play_sound(msc_basement_3_strings, 1000, true);

if (game.wisp_count < 1) {
	audio_sound_gain(msc_basement_2_piano, 0, 0)
	audio_sound_gain(msc_basement_3_strings, 0, 0)
} 
if (game.wisp_count == 1) {
	audio_sound_gain(msc_basement_2_piano, 0.6, 0)
	audio_sound_gain(msc_basement_3_strings, 0, 0)
	msc_2_playing = true;
}
if (game.wisp_count >= 2) {
	audio_sound_gain(msc_basement_2_piano, 0.6, 0)
	audio_sound_gain(msc_basement_3_strings, 0.7, 0)
	msc_2_playing = true;
	msc_3_playing = true;
}
	
if (game.wisp_count >= 1) {
	instance_destroy(inst_collision1);
}