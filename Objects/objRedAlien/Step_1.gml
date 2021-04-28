//Audio set up
if (hp <= 0)
{ 
    audio_play_sound(AlienDeath,6,false);
    with (mygun) instance_destroy(); 
	instance_destroy();
}