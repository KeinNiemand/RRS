//Open Save File
ini_open("save.ini");
//Save High Scores
for (var i=array_length_1d(highscore)-1; i>=0; i--) {
    ini_write_string("highscore", string(i), base64_encode(string(highscore[i])));
}
//Save Opptions
ini_write_real("options", "volume", volume);
ini_write_real("options", "sound", sound);
ini_write_real("options", "music", music);
//Save Other
ini_write_string("other", base64_encode("enableAds"), base64_encode(string(enableAds)));
ini_write_real("other", "ad", ad)
//Save Coin and Skin Stuff
ini_write_string("inventory", base64_encode("coins"), base64_encode(string(coins)));
//Close Save File
ini_close();
