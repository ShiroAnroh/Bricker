   /// @description Gameover/Next lvl
// You can write your code in this editor
if(room == rm_gameTemplate)
	{
		room_goto(rm_game);
	}

if(instance_number(obj_brickBlue) <= 0
	and instance_number(obj_brickGreen) <= 0
	and instance_number(obj_brickPink) <= 0
	and instance_number(obj_brickPurple) <= 0
	and instance_number(obj_brickRed) <= 0
	and instance_number(obj_brickRed) <= 0
	and instance_number(obj_brickYellow) <= 0)
{
	if(room != rm_gameTemplate)
	{
		room_goto_next();
	}
	else if (room == rm_game3)
	{
		room_goto(rm_game);
	}
	else
	{
		room_goto(rm_game);
	}
}

if(global.gameover)
{
	if(keyboard_check_pressed(vk_anykey))
	{
		global.gameover = false;
		room_restart();
		room_goto(rm_game);
		with(obj_ball)
		{
			spd = 3;
			speed = spd;
		}
		global.player_score = 0;
		global.player_lives = 3;
		audio_play_sound(snd_Click, 1, false);
	} 
}