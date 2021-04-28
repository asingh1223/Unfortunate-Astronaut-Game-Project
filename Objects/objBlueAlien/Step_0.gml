vspd = vspd +grav; //gravity

//Horizontal Collision
if (place_meeting(x+hspd,y,objWall)) 
{
	while (!place_meeting(x+sign(hspd),y,objWall))
	{
		x = x + sign(hspd);
	}
	hspd = -hspd;
}
x = x + hspd;

//Vertical Collision
if (place_meeting(x,y+vspd,objWall)) 
{
	while (!place_meeting(x,y+sign(vspd),objWall))
	{
		y = y + sign(vspd);
	}
	vspd = 0;
}
y = y + vspd;

//Animation 
if (!place_meeting(x,y+1,objWall))
{
	sprite_index= sBlueAlien;
	image_speed = 0;
	if (sign(vspd) > 0) image_index = 0; else image_index = 1;
	
}
else
{
	image_speed = 1;
	if (hspd == 0) 
	{
		sprite_index = sBlueAlien;
	}
	else	
	{
		sprite_index = sBlueAlienR;
	}
}

if (hspd != 0) image_xscale = sign(hspd);


