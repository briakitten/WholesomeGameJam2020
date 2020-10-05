/// @description 

draw_sprite_ext(title, -1, 0, 0, 2, 2, 0, c_white, 1);

draw_set_font(fnt_creature);
draw_set_color(game.color_lightgreen);
draw_set_alpha(flash_counter / flash_threshold);
draw_text_transformed(144, 280, "press space/enter to start", 2, 2, 0);
draw_set_alpha(1);