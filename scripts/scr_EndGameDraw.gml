/*
Draws the EndGame stats like score and coins recived
*/

//set draw options and init drawing
draw_set_halign(fa_left);
var height = room_height/4;

//set lines to draw
line[0] = "Score: " + string(score) + "#";
line[1] = "Old Higscore: " + string(oldHighscore) + "#";
line[2] = "New Highscore: " + string(obj_storage.highscore[modeID]) + "#";
line[3] = "                                                                                                                 ~#"
line[4] = "Coins earned: " + string(normalCoinsE) + "~#";
line[5] = "Higscore bonus: " + string(highscoreCoinsE) + "~#";
line[6] = "Difficulty m.: " + string(difficultyMult) + "~#";
line[7] = "#"
line[8] = "Total coins e.: " + string(totalCoinsE) + "~#";
line[9] = "TotalCoins: " + string(obj_storage.coins) + "~#";
//init lines varibale
var lines = "";
//combine all lines into one text
for (var i=0; i < array_length_1d(line); i++) {
    lines += line[i]
}
//draw the text
scr_drawSpriteTextScale(lines, 0, height, spr_coin,0.75,0.75);
