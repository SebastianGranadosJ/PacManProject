// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function npc_dialogue(text, npc){

	if(global.npc_active == false){
	instance_create_layer(160,20,"click_area",npc);
	global.npc_active = true;
	}
	generate_dialogue(text)
}