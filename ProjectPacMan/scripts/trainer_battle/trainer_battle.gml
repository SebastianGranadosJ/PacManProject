// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function trainer_battle(battle_time, dialogue_trainer_1, dialogue_trainer_defeated, dialogue_trainer_rematch, dialogue_player_defeated, pokemon_trainer, trainer){
	instance_create_layer(0, 0 , "control", obj_trainer_battle);

	obj_trainer_battle.battle_time = battle_time;
	obj_trainer_battle.dialogue_trainer_1 = dialogue_trainer_1;
	obj_trainer_battle.dialogue_trainer_defeated = dialogue_trainer_defeated;
	obj_trainer_battle.dialogue_trainer_rematch = dialogue_trainer_rematch;
	obj_trainer_battle.dialogue_player_defeated = dialogue_player_defeated;
	obj_trainer_battle.pokemon_trainer = pokemon_trainer;
	obj_trainer_battle.trainer = trainer;
	obj_trainer_battle.active = true;
	
}