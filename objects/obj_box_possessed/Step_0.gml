/// @description acts as player, but now box

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
	
	if (button_select) {
		instance_activate_object(obj_player);
		instance_create_layer(x, y, "Instances", obj_box);
		instance_destroy(self);
	}
}

#region MOVEMENT
if (!idle) {
	apply_movement_collision(spd, dir8 * 45);
}
#endregion

game.player_x = x;
game.player_y = y;