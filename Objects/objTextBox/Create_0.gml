//Set the text to content and then set box width and height 
text =  "You have " + string(objPlayer.coins) + " coin(s) right now. You need " +
string(objExit.coinDiff) + " more coins to escape this planet!.";

name = "Mysterious Portal";
boxWidth = sprite_get_width(sTextBox);
boxHeight = sprite_get_height(sTextBox);
stringHeight = string_height(text);
charCount = 0;