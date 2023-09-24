// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function draw_text_box(text, actual_word,n){
		total_word = actual_word
		words_array = separate_words_text(text);
		remaining_words = array_length(words_array) - actual_word ;
		string_text = text; 
		text_x = 174; 
		text_y = 158; 
		max_width = 212 ; 
		lines = 1;
		text_width = 0;
		max_width = 212; 
		array_xs = [];
		draw_set_halign(fa_top)
		draw_set_valign(fa_top)
		draw_set_color(c_gray);
		if(actual_word < array_length(words_array)){
			for ( i = 0; i < remaining_words; i++) {
		
				if(text_width + string_width(words_array[total_word] + " " ) < max_width and lines <=3 and total_word < array_length(words_array)){
					draw_text(text_x + text_width, text_y, words_array[total_word] + " ");
					text_width = text_width + string_width(words_array[total_word]+ " ");
					array_insert(array_xs, total_word, total_word)
					total_word++;
					
				}
				else{
					text_width = 0;
					lines++;
					if ( lines <= 3 and total_word < array_length(words_array)){
					text_y = text_y + string_height("A");
					draw_text(text_x + text_width, text_y, words_array[total_word] + " ");
					text_width = text_width + string_width(words_array[total_word]+ " ")
					array_insert(array_xs, total_word, total_word)
					total_word++;
					}
			
				}
		
			}
		}
	

	if(n){
	obj_dialogue.actual_word = total_word;
	obj_dialogue.n = false
	}
}