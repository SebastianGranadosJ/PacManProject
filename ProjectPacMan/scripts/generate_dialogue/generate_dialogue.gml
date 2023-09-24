// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function generate_dialogue(text){
	instance_create_layer(160,30, "dialogue", obj_dialogue);
	obj_dialogue.text_1 = text
	obj_dialogue.dialogue_active = true;
}