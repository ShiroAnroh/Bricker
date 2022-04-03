/// @description Gameover/Next lvl/Pause
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
		global.roomNumber +=1
	}
	else if (room == rm_game5)
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
		global.roomNumber = 0;
		global.player_score = 0;
		global.player_lives = 3;
		audio_play_sound(snd_Click, 1, false);
	} 
}

if room == rm_game or rm_game2 or rm_game3 or rm_game4 or rm_game5 or rm_game6 or rm_game7
{
if keyboard_check_pressed(vk_escape)
    {
    paused = !paused;
    if paused == false
        {
        instance_activate_all();
        surface_free(paused_surf);
                paused_surf = -1;
        }
    }
if paused == true
    {
    //Stop alarms
    }
}

