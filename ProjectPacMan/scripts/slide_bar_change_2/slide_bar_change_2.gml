// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function slide_bar_change_2(){
	if (global.obj_cnt > 6){
		if(global.obj_cnt%2 == 0){
			proportion_obj_bar = ((ceil((global.obj_cnt )/2) - 3)*obj_obj_rarecandy.sprite_height)/(obj_background_bar_2.sprite_height - obj_slide_bar_2.sprite_height);
		}
		else{
			proportion_obj_bar = ((ceil((global.obj_cnt + 1)/2) - 3)*obj_obj_rarecandy.sprite_height)/(obj_background_bar_2.sprite_height - obj_slide_bar_2.sprite_height);
		}
	for(i = 0; i < global.obj_cnt; i++){
		if (instance_exists(global.obj_list[i][0])){
			global.obj_list[i][0].y =(obj_arrow_bar_up_2.y + (floor(i/2))*global.obj_list[i][0].sprite_height) - (obj_slide_bar_2.y - obj_background_bar_2.y)*proportion_obj_bar;	
	}
	}
	}	
}
