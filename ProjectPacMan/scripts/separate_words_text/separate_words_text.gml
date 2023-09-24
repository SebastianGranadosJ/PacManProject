// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function separate_words_text(text){
	string_text = text;
	words_array = false;
	height = string_length(string_text) + string_count(" ", string_text);
	word = "";
	counter = 0;
	for ( var xx = 1; xx <= height + 1; xx++){
		if(string_char_at(string_text, xx) != " "){
			word = word + string_char_at(string_text, xx);
		}
		else{
			if(string_length(word) != 0){
			words_array[counter] = word;
			counter++;
			word = "";
			}
		}
	}
	if( word != ""){
		words_array[counter] = word;
	}
	return words_array;
}