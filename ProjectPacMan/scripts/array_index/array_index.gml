// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function array_index(array,element){
	
	for(index=  0; index < array.length; index ++){
		if (array[index] == element){
			return index;
		}
	}
	return false;
}