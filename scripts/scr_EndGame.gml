/*
Script that get executet after ending the Game (get coins, update Highscore, ...)
*/
//how many points are needed to get 1 coin
var scorePerCoin = 500;

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
    
    //Code Here
    //code here
    
    //Enable EndGame GUI drawing
    gameEnd = true;
     
}
