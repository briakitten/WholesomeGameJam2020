/// @description 

game.interact_prompt = false;

var button_left = keyboard_check(ord("A")) || keyboard_check(vk_left);
var button_right = keyboard_check(ord("D")) || keyboard_check(vk_right);
var button_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
var button_down = keyboard_check(ord("S")) || keyboard_check(vk_down);
var button_select = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);
var hInput = button_right - button_left;
var vInput = button_down - button_up;



if (check_input) {
	var dir = point_direction(0, 0, hInput, vInput);
	if (hInput != 0 || vInput != 0) {
		idle = false;
		dir8 = dir / 45;
	} else {
		idle = true;
	}
	
	// CONFIGURE PLAYER STATES BASED ON INPUT HERE
}

// ADD PLAYER STATE LOGIC HERE
var inst = instance_place(x, y, obj_wisp);
if (inst != noone) {
	game.interact_prompt = true;
	if (button_select) {
		instance_destroy(inst);
		game.wisp_count++;
		game.interact_prompt = false;
	}
}
	
inst = instance_place(x, y, obj_box);
if (inst != noone) {
	if (button_select) {	
		bPossessing = true;
		game.interact_prompt = false;
		check_input = false;
		
	}
	game.interact_prompt = true;
}
	
// interact prompt alpha
if (game.interact_prompt && questionmark_alpha < 1) {
	if (questionmark_timer.update()) {
		questionmark_alpha = 1;
	}
	questionmark_alpha = questionmark_timer.index / questionmark_timer.threshold;
} else if (!game.interact_prompt) {
	questionmark_alpha = 0;
	questionmark_timer.index = 0;
}

// possession animation
if(bPossessing)
{
	if (Framecounter >= PossessingFrames)
	{
		bPossessing = false;
		Framecounter = 0;	
		instance_destroy(inst);
		instance_deactivate_object(self);
		instance_create_layer(inst.x, inst.y, "Instances", obj_box_possessed);
		bUnpossessing = true;
	}
}

if(bUnpossessing)
{
	
	if (Framecounter >= UnpossessingFrames)
	{
		bUnpossessing = false;
		check_input = true;
		Framecounter = 0;	
		
	}
}
#region MOVEMENT
if (!idle) {
	apply_movement_collision(spd, dir8 * 45);
}
#endregion

// update player position for camera/etc usage
game.player_x = x;
game.player_y = y;