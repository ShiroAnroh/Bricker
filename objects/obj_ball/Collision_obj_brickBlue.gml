/// @description Brick collision
// You can write your code in this editor
audio_play_sound(snd_Break, 1, false);

move_bounce_all(true);

global.player_score += 5;

instance_destroy(other); 