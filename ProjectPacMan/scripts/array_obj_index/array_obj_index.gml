

//This function return obj's index of the the array global.obj_list
function array_obj_index(element){
	array = global.obj_list
	for(ii = 0; ii < global.obj_cnt; ii++){
		if(array[ii][0] == element){
			return ii;
		}
	}
	return false;
}