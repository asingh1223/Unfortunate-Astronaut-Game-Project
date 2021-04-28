//setting up attributes of turret
vspd = 0;
grav = 0.3
walkspd = 3.5;
hspd = walkspd;

hp = 5;
flash = 0;

//Selects turrets weapon 
if (Weapon)
{
	//makes instance of egun 
	mygun = instance_create_layer(x,y,"Gun",objTgun) 
	with (mygun)
	{
		owner = other.id
	}
	
}
else mygun = noone  