// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function level_11(){
	global.level_actual_kind = 1;
	level_nmr = 11;
	global.level_actual = level_nmr;
	battle_time = 20;
	dialogue_trainer_1 = "Barragan: Es la primera vez que te veo, te voy a coger como lo hizo diego conmigo jijijaja";
	dialogue_trainer_defeated = "Barragan: Me cogiste, acaso eres diego?";
	dialogue_trainer_rematch = "Barragan: Esta vez si te cogere bien rico";
	dialogue_player_defeated = "Barragan: jijijaja";
	pokemon_trainer = [obj_aggron, obj_venasaur, obj_charizard];
	trainer = obj_trainer_girl;
	if(instance_exists(obj_trainer_battle) == false){
		trainer_battle(battle_time,dialogue_trainer_1,dialogue_trainer_defeated,dialogue_trainer_rematch,dialogue_player_defeated,pokemon_trainer,trainer)
	}
}
