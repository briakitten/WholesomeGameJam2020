/// @description create game functionalities

black_alpha = 1;
black_alpha_timer = new Frame_Timer(60);
black_alpha_top = 1;

wisp_count = 0;
wisp_count_previous = 0;
wisp_count_threshold = 3;

interact_prompt = false;

player_x = 0;
player_y = 0;

game_playing = false;
room_goto(rm_basement);

game_playing = true;