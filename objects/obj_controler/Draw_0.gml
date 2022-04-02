/// @description Score/Lives drawing
// You can write your code in this editor
draw_text(8, 8, "Score: " + string(global.player_score));

draw_set_halign(fa_right);
draw_text(room_width-8, 8, "High Score: " + string(global.high_score));

draw_set_halign(fa_left);

_x = (room_width/2) - ((global.player_lives-1) * 32);
repeat(global.player_lives){
	draw_sprite_ext(
		spr_bat,
		0,
		_x,
		room_height-464 ,
		0.75,
		0.75,
		0,
		c_white,
		0.5
	);
	_x += 64;
}

if paused == true
{
if !surface_exists(paused_surf)
    {
    if paused_surf == -1
        {
        instance_deactivate_all(true);
		instance_activate_object(obj_brickBlue);
        }
    paused_surf = surface_create(room_width, room_height);
    surface_set_target(paused_surf);
    draw_surface(application_surface, 0, 0);
    surface_reset_target();
    }
	else
    {
    draw_surface(paused_surf, 0, 0);
    draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_text_transformed_colour(room_width / 2, ((room_height / 2) + 90), "PAUSED", 2, 2, 0, c_aqua, c_aqua, c_aqua, c_aqua, 1);
    draw_set_halign(fa_left);
    }
}



