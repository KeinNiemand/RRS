//Send Reset Event to Google Analytics
if (os_type == os_android) GoogleAnalytics_SendEvent("options", "reset-save");
//Delete Save Game
with(obj_storage) {
    //Reset Highscores
    for (var i=array_length_1d(highscore)-1; i>=0; i--)
        highscore[i] = 0;
    //Reset Settings
    volume = 1;
    sound = 1;
    music = 1;
    //Reset Inventory
    coins = 0;
    scr_save();
    game_restart();
}
