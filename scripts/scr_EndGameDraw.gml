/*
Draws the EndGame stats like score and coins recived
*/
//set draw options and init drawing
draw_set_halign(fa_left);
var height = room_height/4;
//draw score and highscore

/*
draw_text(0, height, "Score: " + string(score));
height += string_height("Score: " + string(score));
draw_text(0, height, "Old Higscore: " + string(oldHighscore));
height += string_height("Old Higscore: " + string(oldHighscore));
draw_text(0, height, "New Highscore: " + string(obj_storage.highscore[modeID]));
height += string_height("Old Higscore: " + string(oldHighscore));
*/
//set lines to draw
line[0] = "Score: " + string(score) + "#";
line[1] = "Old Higscore: " + string(oldHighscore) + "#";
line[2] = "New Highscore: " + string(obj_storage.highscore[modeID]) + "#";
//init lines varibale
var lines = "";
//combine all lines into one text
for (var i=0; i < array_length_1d(line); i++) {
    lines += line[i]
}
//draw the text
scr_drawSpriteText(lines, 0, height, spr_coin);
