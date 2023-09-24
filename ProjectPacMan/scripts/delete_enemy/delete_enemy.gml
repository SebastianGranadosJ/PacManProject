

// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function delete_enemy(){

	global.actual_enemy.direction = 270;
	global.actual_enemy.speed = 6;
	if (global.actual_enemy.y > 260){
	global.enemy_exist = false;
	global.xp_actual += ceil(global.enemy_initial_life/10)*global.xp_multiplicator;
	instance_destroy(global.actual_enemy);
	if (global.level_completed[global.level_actual] == false)
		global.enemy_cont += 1;
	}
	if (instance_exists(obj_timer_boss)){
	instance_destroy(obj_timer_boss);
	}
}