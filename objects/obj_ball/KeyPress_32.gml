/// @description Start ball movement
// You can write your code in this editor
if(go == false){
	direction = random_range(45, 135);
	speed = spd;
	go = true;
	audio_play_sound(snd_Click, 1, false);
}