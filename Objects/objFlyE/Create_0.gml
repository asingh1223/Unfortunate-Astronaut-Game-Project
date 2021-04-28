vspd = 0;
walkspd = 4.5;
hspd = walkspd;

hp = 6;
flash = 0;

if (Weapon)
{
	//makes instance of egun 
	mygun = instance_create_layer(x,y,"Gun",objFlyegun) 
	with (mygun)
	{
		owner = other.id
	}
	
}
else mygun = noone  