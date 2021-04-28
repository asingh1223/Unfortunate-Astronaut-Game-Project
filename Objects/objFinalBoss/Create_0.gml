//Variables set up
vspd = 0;
walkspd = 9.5;
hspd = walkspd;

hp = 50;
flash = 0;

if (Weapon)
{
	//makes instance of egun 
	mygun = instance_create_layer(x,y,"Gun",objFinalGun) 
	with (mygun)
	{
		owner = other.id
	}
	
}
else mygun = noone  