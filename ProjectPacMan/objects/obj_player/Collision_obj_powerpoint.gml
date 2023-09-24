/// @description Inserte aquí la descripción
// Obtener poder:
audio_play_sound(snd_comiendo, 11, false);
alarm[0] = room_speed*5;
global.puntos += 50;
global.power = true;

with(obj_enemy)
{
sprite_index = spr_enemy_scared;
image_speed = 0;
image_index = 0;
v = 2;
speed = 2;
}

with(other)
{
	instance_destroy();
}
