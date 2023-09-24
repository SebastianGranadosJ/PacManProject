/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
#region //dibujar score, vida , ready , bono
//Dibujar Score
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fnt_txt);
draw_text(32,16, "SCORE: " + string(global.puntos));

//dibujer vidas

draw_text(room_width/2 - 128, 16, "VIDAS: ");
for(var i = 0; i < global.vidas; i += 1){
	draw_sprite_stretched(spr_player_right, 3, (room_width/2 - 128 +string_width("Vidas: ") + (i * 34)), 16, 32, 32);	
}

// DIBUJAR READY

if (audio_is_playing(snd_intro)){
draw_set_color(c_yellow);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_font(fnt_ready);
draw_text(room_width/2, room_height/2, "SEXO ???");
draw_sprite_stretched(spr_sexo, 0, room_width/2 - 115, room_height/2 + 64, 225, 225);
}

// DIBUJAR BONO

if (global.bonos){
	draw_sprite(spr_bonus,0, room_width - 64, 16);
}
#endregion
if (global.vidas = 0){
	draw_set_color(c_red);
	draw_set_font(fnt_txt);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_text(room_width/2, room_height/2, "GAME OVER"); 
	
}