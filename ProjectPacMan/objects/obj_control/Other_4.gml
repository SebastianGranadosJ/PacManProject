/// @description El nivel empiza de nuebo

if room == Room2{
	exit;	
}

audio_play_sound(snd_intro,10, false);
instance_deactivate_object(obj_enemy);

global.golpe = false;
global.power = false;
global.bonos = false;


alarm[0] = room_speed * 10;
alarm[1] = room_speed*15;