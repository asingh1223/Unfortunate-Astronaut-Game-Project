//setting up variables
vspd = 0;
grav = 0.3
walkspd = 3.5;
hspd = walkspd;

hp = 6;
flash = 0;

if (Weapon)
{
	//makes instance of egun 
	mygun = instance_create_layer(x,y,"Gun",objBlueAlienGun) 
	with (mygun)
	{
		owner = other.id
	}
	
}
else mygun = noone  