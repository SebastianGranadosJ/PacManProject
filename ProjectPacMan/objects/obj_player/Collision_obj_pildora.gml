global.puntos +=500;

audio_play_sound(snd_fruit, 12, false);
global.bonos = true;
with(other) //El otro, se destruye
	{
	instance_destroy()
	}