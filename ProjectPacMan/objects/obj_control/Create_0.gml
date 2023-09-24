/// @description Inserte aquí la descripción
// crear variables gobles:

//global variable que puede ser cobtrolada en todo el juego
audio_play_sound(snd_intro,10, false); 
instance_deactivate_object(obj_enemy)

global.puntos = 0;
global.vidas = 3;
global.power = false;
global.bonos = false;
global.golpe = false;
alarm[0] = room_speed*10;
alarm[1] = room_speed*15;