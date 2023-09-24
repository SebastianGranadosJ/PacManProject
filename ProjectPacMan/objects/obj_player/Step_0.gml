/// @description Movimiento Y Sprite etc
// Movimientos del personaje
if (global.golpe) or audio_is_playing(snd_intro){
	exit;
}
if keyboard_check(vk_right) && place_free(x+1, y)&& place_snapped(32,32)//Verifica si el lugar esta libre
// en un pixel hacia la derecha
//checkear el teclado si la te cla flecha derecha esta siendo presionada
	{
		direction = 0; // Direccion de 0 grados, osea derecha, le asigno direccion
		speed = v; // velocidad del objeto, cuantos pixeles se mueve por FPS
	}

if keyboard_check(vk_left) && place_free(x-1, y) && place_snapped(32,32) // izquierda
	{
		direction = 180; 
		speed = v; 
	}

if keyboard_check(vk_up) && place_free(x, y-1)&& place_snapped(32,32) //
	{
		direction = 90; 
		speed = v; 
	}
	
if keyboard_check(vk_down)  && place_free(x, y+1)&& place_snapped(32,32)
	{
		direction = 270; 
		speed = v; 
	}

//Verificar direccion y velocidad para cambiar el sprite

if speed>0
{
	image_speed = 1;	
}
else{
	image_speed = 0;
	image_index  = 0;
}
// Sprite index sirve para decir que sprite usa el objeto
// por tanto hago un switch en el que segun la direccion lo vaya cambiando
switch(direction){
	case 0:
	sprite_index = spr_player_right;
	break;
	case 90:
	sprite_index = spr_player_up;
	break;
	case 180:
	sprite_index = spr_player_left;
	break;
	case 270:
	sprite_index = spr_player_down;
	break;
}


