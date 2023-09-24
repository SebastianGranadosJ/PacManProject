/// @description Inserte aquí la descripción
// Colision con el enemigo

if(other.sprite_index == spr_enemy_scared)
{
	audio_play_sound(snd_eatghost, 11, false);
	global.puntos += 200;
	with(other){
		x = xstart;  //EL enemigo vuelve a su posicion inicial 
		y = ystart;
		v = 4				//Reinicio su velocidad
		speed = v;
		sprite_index = spr_enemy;
		image_index = col;
		image_speed = 0;
	}
	
}
else{
	if(global.golpe == false) && ( x = other.x or y == other.y)
	{
		audio_stop_all();
		audio_play_sound(snd_death, 15, false);
		
		
		//reiniciar velocidad
		room_speed = 60;
		obj_control.alarm[1] = room_speed*15;
		speed = 0;
		global.vidas -= 1;
		sprite_index = spr_player_dead;
		image_speed = 1;
		global.golpe = true;
	
		with(obj_pildora){
		instance_destroy();
		}
	}
}