/// @description Bat collision
// You can write your code in this editor
audio_play_sound(snd_Bounce, 1, false);
 audio_sound_gain(snd_Bounce, 0.1, 1);

direction = point_direction(other.x, other.y, x, y);