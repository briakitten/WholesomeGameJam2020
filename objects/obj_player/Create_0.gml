/// @description 

bPossessing = false;
bUnpossessing = false;
PossessingFrames = 11;
UnpossessingFrames = 12;
Framecounter = 0;
Drawcounter = 0;

check_input = true;

idle = true;
dir8 = 0;
spd = 2;

was_left = false;

// FRAME DATA

frame_timer = new Frame_Timer(15);

x_frame = 0;
y_frame = 0;
frame_size = 24; // size of each sprite frame

questionmark_alpha = 0;
questionmark_timer = new Frame_Timer(15);

if (game.transitioning) {
	bUnpossessing = true;
	idle = true;
	check_input = false;
	
	x = game.transition_target_x;
	y = game.transition_target_y;
}
