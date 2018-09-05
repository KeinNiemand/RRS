/*
Script that get executet after ending the Game (get coins, update Highscore, ...)
*/
//how many points are needed to get 1 coin
var scorePerCoin = 10;

with(obj_gameOver) {
    //Remove everything from the GameOver Pause Menu
    for (var p = 0; p < array_length_1d(pMenu); p++) {
        with(pMenu[p]) {
        instance_destroy();
        }
    }
    text = "Summary"
    
    //Update highscore
    oldHighscore = obj_storage.highscore[modeID];
    if (score > obj_storage.highscore[modeID])
        highscore[modeID] = score;
    
    //Send GoogleAnalytics Game-Over event
    GoogleAnalytics_SendEventExt("player", "Game-Over", killedBy, gameTime);
    
    //Add Back to Menu button
    pMenu[0] = instance_create(room_width/2,room_height,obj_changeRoom);
    var backButton = pMenu[0]
    with (backButton) {
        targetRoom = rm_menu_main;
        text = "MainMenu";
        spriteColor = c_red;
        y -= sprite_height;
    }
    
    //Calculate number of coins earned
    normalCoinsE = round(score/scorePerCoin);
    var highscoreDiff = (obj_storage.highscore[modeID]-oldHighscore)
    highscoreCoinsE = round(min(0, highscoreDiff));
    coinsE = normalCoinsE+highscoreCoinsE;
    difficultyMult = sqr(difficulty);
    totalCoinsE = round(difficultyMult*coinsE);
    obj_storage.coins += round(totalCoinsE);
    
    //Enable EndGame GUI drawing
    gameEnd = true;
    
    //Save the Game
    with(obj_storage) {
        scr_save();
    }
}

