/// @description Inserte aquí la descripción
//reiniciar el eniemigo cuando el jugadro pierda una vida
if global.golpe 
{
	speed = 0;
	vspeed = 0;
	hspeed = 0;
	visible = false;
	x = xstart;
	y = ystart;
	exit;
}
else{
	visible = true;
}

// INTELIGENCIA ARTIFICIAL

if place_snapped(64,64)
{
	if hspeed == 0
	{
		
	if random(3) < 1 && place_free(x-1, y)
		{
		hspeed = -v;
		vspeed = 0;
		
		}
	if random(3) < 1 && place_free(x+1, y)
		{
		hspeed = v;
		vspeed = 0;
		
		}
	
	}
	else
	{
		if random(3) < 1 && place_free(x, y-1)
		{
		hspeed = 0;
		vspeed = -v;
		
		}
	if random(3) < 1 && place_free(x, y+1)
		{
		hspeed = 0;
		vspeed = v;
		
		}
	}
}


