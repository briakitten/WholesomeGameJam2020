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
		box.x = x;
		box.y = y;
		box.activate();
		instance_destroy(self);
		
		#region place player in new spot
		var player_placed = false;
		obj_player.x = x - 24;
		obj_player.y = y;
		with (obj_player) {
			var inst = instance_place(x, y, obj_collision)
			if (inst == noone) {
				player_placed = true; // player successfully placed
			}
		}
		
		// try placing in a different spot
		if (!player_placed) {
			obj_player.x = x + 24;
			obj_player.y = y;
			with (obj_player) {
				var inst = instance_place(x, y, obj_collision)
				if (inst == noone) {
					player_placed = true; // player successfully placed
				}
			}
		}
		
		// try placing in a different spot
		if (!player_placed) {
			obj_player.x = x;
			obj_player.y = y + 24;
			with (obj_player) {
				var inst = instance_place(x, y, obj_collision)
				if (inst == noone) {
					player_placed = true; // player successfully placed
				}
			}
		}
		
		// try placing in a different spot
		if (!player_placed) {
			obj_player.x = x;
			obj_player.y = y - 24;
			with (obj_player) {
				var inst = instance_place(x, y, obj_collision)
				if (inst == noone) {
					player_placed = true; // player successfully placed
				}
			}
		}
		#endregion
	}
} else {
	if (start_possess_timer.update()) {
		check_input = true;
		spr = spr_box_possessed_moving;
	}
}

#region MOVEMENT
if (!idle) {
	apply_movement_collision(spd, dir8 * 45);
}
#endregion

game.player_x = x;
game.player_y = y;