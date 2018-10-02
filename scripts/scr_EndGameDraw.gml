/*
Draws the EndGame stats like score and coins recived
*/

//set draw options and init drawing
draw_set_halign(fa_left);
var height = room_height/5;

//set text
var lines = "Time: " + scr_getTimeString(gameTime) + "#" +
            "#" +
            "Score: " + string(score) + "#"+
            "Old Higscore: " + string(oldHighscore) + "#"+
            "New Highscore: " + string(obj_storage.highscore[modeID]) + "#"+
            "#"+
            "Coins earned: " + string(normalCoinsE) + "~#"+
            "Higscore bonus: " + string(highscoreCoinsE) + "~#"+
            "Difficulty m.: " + string(difficultyMult) + "x#"+
            "#"+
            "Total coins e.: " + string(totalCoinsE) + "~#"+
            "TotalCoins: " + string(obj_storage.coins) + "~#";

//draw the text
scr_drawSpriteTextScaleLines(lines, 0, height, spr_coin,0.75,0.75);
