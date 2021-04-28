//Movement set up
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




