/// @description 

alpha = 0;
alpha_thx = 0;

thx_waited = false;
thx_wait_timer = new Frame_Timer(60 * 90);
thx_timer = new Frame_Timer(240);

fadein_timer = new Frame_Timer(240);

audio_play_sound(msc_smol_ghostly_kitty_memories, 1000, false);