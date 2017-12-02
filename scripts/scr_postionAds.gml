//Set draw settings to GUI default setings so calculations work
scr_setGUI();

//Put banner below score and Lives when ingame
if object_exists(obj_controll) 
    var bannerY = 5+string_height("Score:1234567890 Highscore:0123456789 Lives:0123456789")*2
 //Puts banner at the top of the scren   
 else

    var bannerY = 0;

//Move Banner
GoogleMobileAds_MoveBanner(0,bannerY);
