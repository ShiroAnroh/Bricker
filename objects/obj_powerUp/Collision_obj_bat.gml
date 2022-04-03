   /// @description PowerUp effect
// You can write your code in this editor
audio_play_sound(snd_PowerUp, 1, false);
audio_sound_gain(snd_PowerUp, 0.1, 1);

if(image_index == 0)
{
	with(obj_bat)
	{
		global.player_score += 75;
		obj_bat.image_xscale = 1.5;
		alarm[0] = 10*room_speed;
	}
}
else
{
	with(obj_ball)
	{
		global.player_score += 75;
		global.spdPowerUp = 3;
		speed = global.spdPowerUp; 
		alarm[0 ] = 10*room_speed;
	}
}

instance_destroy();