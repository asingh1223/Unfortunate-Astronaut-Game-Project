// Draw box 
draw_rectangle(x-2, y-2, x+boxWidth+2, y+boxHeight+2, false);
draw_sprite(sTextBox, 0, x,y);

// Draw text

if (charCount < string_length(text)) {
    charCount += 1;
}

//set colours and allignment and then draw text
draw_set_colour(c_fuchsia);
draw_set_halign(fa_center);
draw_text(x+(boxWidth/2), y, name);
textPart = string_copy(text, 1, charCount);

draw_set_halign(fa_left);
draw_set_colour(c_white);
draw_text_ext(x+5, y+stringHeight+1, textPart, stringHeight, boxWidth);