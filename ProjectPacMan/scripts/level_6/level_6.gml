// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function level_6(){
	global.level_actual_kind = 0;
	level_nmr = 6;
	level_enemy_nmr = 1;
	global.level_actual = level_nmr;
	if (global.enemy_cont >= level_enemy_nmr and global.level_completed[global.level_actual] == false)
	{
		global.level_max += 1;
		global.level_completed[global.level_actual] = true;
		global.enemy_cont = 0;
		global.level_bar_position += 1;
		global.level_index -= 1;
		global.level_bar_selected.image_index = 0;
		global.level_bar_selected = global.menus[global.level_index];
		global.level_bar_selected.image_index = 1;
	}

	if (global.enemy_exist == false){
		p = choose(1,2,3,4,5);
		switch(p){
			case 1:
			generate_enemy(obj_caterpie);
			break;
			case 2:
			generate_enemy(obj_caterpie);
			break;
			case 3:
			generate_enemy(obj_caterpie);
			break;
			case 4:
			generate_enemy(obj_caterpie);
			break;
			case 5:
			generate_enemy(obj_caterpie);
			break;
		}
	}
}