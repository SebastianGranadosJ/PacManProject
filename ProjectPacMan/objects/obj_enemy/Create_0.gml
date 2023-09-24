/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
randomize();
sprite_index = spr_enemy;
image_speed = 0;

//Iniciar movimiento aleatorio
v = 4;
direction =  choose(0, 90, 180, 270); //Choose aleatorio
motion_set(direction, v);//dar movimiento, la direccion y velocidad