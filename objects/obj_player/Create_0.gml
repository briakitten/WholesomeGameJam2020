/// @description 
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

check_input = true;

idle = true;
dir8 = 0;
spd = 5;

// FRAME DATA

frame_timer = new Frame_Timer(4);

x_frame = 0;
y_frame = 0;
frame_size = 24; // size of each sprite frame