// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function generate_boss(obj_pokemon, time, boss_multiplayer){
	objx = 280 - (sprite_get_width(object_get_sprite(obj_pokemon)))/2;
	objy  = 186 - sprite_get_height(object_get_sprite(obj_pokemon))  ;
	instance_create_layer(objx , objy, "click_area", obj_pokemon);
	global.enemy_initial_life = obj_pokemon.life * boss_multiplayer;
	global.enemy_life = global.enemy_initial_life;
	instance_create_layer( 1, 1, "control", obj_timer_boss);
	obj_timer_boss.time = time;
	global.enemy_exist = true;
	global.actual_enemy = obj_pokemon;
	
}