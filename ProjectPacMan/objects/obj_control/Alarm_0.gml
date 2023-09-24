/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if global.vidas == 0 exit;
instance_create_layer(obj_player.xstart, obj_player.ystart, "ly_top", obj_pildora);
alarm[0] = room_speed*15;