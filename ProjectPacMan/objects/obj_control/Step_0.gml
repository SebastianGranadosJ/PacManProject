/// Activar los enemigos nuevamente
#region // Activar Enemigos Nuevamente
if !(audio_is_playing(snd_intro)){
	instance_activate_object(obj_enemy);
}
#endregion
#region //Destruir todo cuando Muere
if (global.vidas == 0){
	with(obj_enemy)
	{
	instance_destroy();	
	};
	with(obj_player)
	{
	instance_destroy();	
	};
	with(obj_point)
	{
	instance_destroy();	
	};
	with(obj_pildora)
	{
	instance_destroy();	
	};
	with(obj_powerpoint)
	{
	instance_destroy();	
	};
}
#endregion

//Verficar si el nivel es completado o si pacman a muerto

if instance_number(obj_point) == 0 && instance_number(obj_powerpoint) == 0 && global.vidas > 0 
{
	if room_next(room) != -1
	{
		audio_stop_all();
		room_goto_next();
	}
	else
	{
		audio_stop_all();
		room_goto(rm_gameover);
		instance_destroy();
	}
}