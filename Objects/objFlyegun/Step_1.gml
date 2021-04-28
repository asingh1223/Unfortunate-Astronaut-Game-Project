//assigning each instance of egun to an owner which is an enemy
x = owner.x; 
y = owner.y+10

//scales gun to enemy sprite size
image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale); 

//Checks to see if the players alive at the moment
if (instance_exists(objPlayer))
{
	if (objPlayer.x < x) image_yscale = -image_yscale;  // checks if player facing left to the gun
	if (point_distance(objPlayer.x,objPlayer.y,x,y) <950)
	{
		image_angle = point_direction(x,y,objPlayer.x,objPlayer.y);  
firingdelay = firingdelay -1;
if (firingdelay < 1) 
{
	//This makes it so enemy doesn't shoot if obj wall is in way
	if (!collision_line(x,y,objPlayer.x,objPlayer.y,objWall,false,false))
	{
	firingdelay = 85;
	audio_play_sound(BatShot,6,false);
	with (instance_create_layer(x,y,"Bullets",objFlyebullet)) 
	{
		speed = 8
		direction = other.image_angle + random_range(-0,1);
		image_angle = direction;
	}
	}
}
		}
	}

	
