//Find difference between required coins and player coins and then either print the required in a textboxor go to next level
coinDiff = requiredCoins - objPlayer.coins;
if (place_meeting(x,y,objPlayer)) {
    if (objPlayer.coins >= requiredCoins) {
        room_goto_next();
    } else {
        if (myTextBox == noone) {
            myTextBox = instance_create_layer(x-500,y - 200,"Text", objTextBox);
        }
    }
} else {
    if (myTextBox != noone) {
        instance_destroy(myTextBox);
        myTextBox = noone;
    }
}