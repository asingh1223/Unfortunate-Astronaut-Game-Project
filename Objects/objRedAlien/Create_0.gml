//Variable set up
vspd = 0;
grav = 0.3
walkspd = 3.5;
hspd = walkspd;

hp = 14;
flash = 0;

if (Weapon)
{
	//makes instance of egun 
	mygun = instance_create_layer(x,y,"Gun",objRedAlienGun) 
	with (mygun)
	{
		owner = other.id
	}
	
}
else mygun = noone  