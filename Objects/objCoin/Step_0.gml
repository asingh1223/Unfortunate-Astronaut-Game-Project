//Coin 3d animation effect
sin_value += (pi * 2) / steps_per_cycle 

if (sin_value >= pi * 2) sin_value = 0;

image_xscale = sin(sin_value); 

image_index = 0;
if (image_xscale >=0) image_index = 1;

//collect coin
if (place_meeting(x,y, objPlayer) && !collected){ 
	objPlayer.coins++;	
	image_index = 0;
	collected = true;

//Once collected
if (collected){
	 audio_play_sound(CoinCollect,6,false);
		instance_destroy();
	}
}
