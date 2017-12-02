//Open Save File
ini_open("save.ini");
//Check all Highscores
for (var i=array_length_1d(highscore)-1; i>=0; i--) {
    //Load all Highscores
    highscore[i] = real(base64_decode(ini_read_string("highscore", string(i), base64_encode("0"))));
}
//Load Options
    volume = ini_read_real("options", "volume", 1);
    sound = ini_read_real("options", "sound", 1);
    music = ini_read_real("options", "music", 1);
//Close Save File
//Other
enableAds = real(base64_decode(ini_read_string("other", base64_decode("enableAds"), base64_encode("0"))));
ad = ini_read_real("other", "ad", 0);
ini_close();
