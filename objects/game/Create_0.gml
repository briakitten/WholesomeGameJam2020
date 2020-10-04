/// @description create game functionalities
enum Dir8 {
	RIGHT,
	UP_RIGHT,
	UP,
	UP_LEFT,
	LEFT,
	DOWN_LEFT,
	DOWN,
	DOWN_RIGHT
}

// room lighting up
black_alpha = 1;
black_alpha_timer = new Frame_Timer(60);
black_alpha_top = 1;

// vent transition variables
transitioning = false;
transition_target_x = 0;
transition_target_y = 0;

// wisps
wisp_count = 0;
wisp_count_previous = 0;
wisp_count_threshold = 3; // when adding wisps to map, change wisp total here

// etc
interact_prompt = false;

player_x = 0;
player_y = 0;

game_playing = false;
game_done = false;
