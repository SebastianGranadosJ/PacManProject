// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function level_3(){
	global.level_actual_kind = 0;
	level_nmr = 3;
	level_enemy_nmr = 1;
	global.level_actual = level_nmr;
	if (global.enemy_cont >= level_enemy_nmr and global.level_completed[global.level_actual] == false)
	{
		global.level_max += 1;
		global.enemy_cont = 0;
		global.level_completed[global.level_actual] = true;
	}

	if (global.enemy_exist == false){
		p = choose(1,2,3,4,5);
		switch(p){
			case 1:
			generate_enemy(obj_aggron);
			break;
			case 2:
			generate_enemy(obj_aggron);
			break;
			case 3:
			generate_enemy(obj_aggron);
			break;
			case 4:
			generate_enemy(obj_aggron);
			break;
			case 5:
			generate_enemy(obj_aggron);
			break;
		}
	}
}