/// @description 

var button_up = keyboard_check(ord("W")) || keyboard_check(vk_up);
var button_down = keyboard_check(ord("S")) || keyboard_check(vk_down);
var button_select = keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter);

if (button_select) {
	room_goto(rm_basement);
	game.game_playing = true;
}

flash_counter += flash_delta;

if (flash_delta == 1 && flash_counter >= flash_threshold) {
	flash_delta = -1;
	flash_counter = 60;
} else if (flash_delta == -1 && flash_counter < 0) {
	flash_delta = 1;
	flash_counter = 0;
}