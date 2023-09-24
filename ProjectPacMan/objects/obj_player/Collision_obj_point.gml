/// @description Inserte aquí la descripción
//Obtener el punto
global.puntos += 10;

audio_play_sound(snd_comiendo, 10, false);

with(other) //El otro, se destruye
	{
	instance_destroy()
	}
