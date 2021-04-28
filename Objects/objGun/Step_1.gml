//set gun coordinates to match players
x = objPlayer.x;
y = objPlayer.y+12; 

//Follow mouse direction
image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay = firingdelay -1;
recoil = max(0,recoil - 1); 

if (mouse_check_button(mb_left)) and (firingdelay < 0) 
{
	recoil = 4;
	firingdelay = 13;
	audio_play_sound(LeftShot,6,false);
	with (instance_create_layer(x,y,"Bullets",objBullet)) 
	{
		speed = 25;
		direction = other.image_angle + random_range(-0,1);
		image_angle = direction;
	}
}

//right click power shot 

if (mouse_check_button(mb_right)) and (firingdelay < 1) 
{
	recoil = 15;
	firingdelay = 40;
	audio_play_sound(RightShot,6,false);
	with (instance_create_layer(x,y,"Bullets",objBullet2)) 
	{
		speed = 20;
		direction = other.image_angle + random_range(-0,1);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) and (image_angle <270) 
{
	image_yscale = -1;
}
else
{
		image_yscale =1;
}