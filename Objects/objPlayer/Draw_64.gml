//Positioning the GUI
var draw_x = 20;
var draw_y = 8;

//Draw Coin GUI
draw_set_font(ft_gui);
var _w = display_get_gui_width();

//draw coin sprite
draw_sprite(sCoin, 0, _w - draw_x, draw_y + 7);

//draw coin text
draw_set_halign(fa_right);
draw_text(_w -draw_x*2, draw_y, coins);
draw_set_halign(fa_left);

//Draw hp
var draw_x = 60;
var draw_y = 8;
draw_text(_w -draw_x*2, draw_y, hp);
draw_sprite(sHP, 0, _w - draw_x-50, draw_y - 10);
