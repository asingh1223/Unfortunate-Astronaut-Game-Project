//Hit flash set up
draw_self();

if (flash > 0)
{
	flash--;
	shader_set(shaRed);
	draw_self();
	shader_reset();
}