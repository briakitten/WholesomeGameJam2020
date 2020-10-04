/// @description copies from obj_player

spr = spr_box_possessed;
check_input = false;

start_possess_timer = new Frame_Timer(30);

idle = true;
dir8 = 0;
spd = 1;

// FRAME DATA

frame_timer = new Frame_Timer(15);

x_frame = 0;
y_frame = 0;
frame_size = 32; // size of each sprite frame

box = noone;