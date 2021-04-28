//Get Player Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);   

//Calculate Movement
var move = key_right - key_left; //direction input

hspd = move * walkspd; //move

vspd = vspd +grav; //gravity and vspd = vertical speed so jumping

if (place_meeting(x,y+1,objWall) &&  (key_jump)) 
{
	audio_play_sound(Jump,6,false);
	vspd = -7.8;

}


//Horizontal Collision
if (place_meeting(x+hspd,y,objWall)) 
{
	while (!place_meeting(x+sign(hspd),y,objWall))
	{
		x = x + sign(hspd);
	}
	hspd = 0;
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
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vspd) > 0) image_index = 0; else image_index = 1;
	
}
else
{
	image_speed = 1;
	if (hspd == 0) 
	{
		sprite_index = sPlayer;
	}
	else	
	{
		sprite_index = sPlayerR;
	}
}

if (hspd != 0) image_xscale = sign(hspd);

if (hp == 0) {
    instance_destroy();
    game_restart();
}
