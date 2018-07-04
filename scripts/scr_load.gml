//Open Save File
ini_open("save.ini");
//Load all Higscores
for (var i=array_length_1d(highscore)-1; i>=0; i--) {
    highscore[i] = real(base64_decode(ini_read_string("highscore", string(i), base64_encode("0"))));
}
//Load Options
    volume = ini_read_real("options", "volume", 1);
    sound = ini_read_real("options", "sound", 1);
    music = ini_read_real("options", "music", 1);
//Load Other
enableAds = real(base64_decode(ini_read_string("other", base64_encode("enableAds"), base64_encode("0"))));
ad = ini_read_real("other", "ad", 0);
//Load Inventory
coins = round(real(base64_decode((ini_read_string("inventory", base64_encode("coins"), base64_encode(0.0))))));
//Close Save File
ini_close();
