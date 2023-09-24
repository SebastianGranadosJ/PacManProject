// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function slide_bar_change(){
	if (global.gnr_cnt > 5){
	proportion_gnr_bar = ((global.gnr_cnt - 5)*obj_gnr_bulbasuar.sprite_height)/(obj_background_bar.sprite_height - obj_slide_bar.sprite_height);
	for(i = 0; i < global.gnr_cnt; i++){
	global.gnr_list[i].y =(obj_arrow_bar_up.y + i*global.gnr_list[i].sprite_height)   -(obj_slide_bar.y - obj_background_bar.y)*proportion_gnr_bar;	
	}
	}	
}