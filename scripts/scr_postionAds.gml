//Set draw settings to GUI default setings so calculations work
scr_setGUI();

//Put banner below score and Lives when ingame
if object_exists(obj_controll) 
    var bannerY = 5+string_height("Score:1234567890 Highscore:0123456789 Lives:0123456789")*1.3
 //Disables Banner
 else

    var bannerY = -1;

//Move Banner
GoogleMobileAds_MoveBanner(0,bannerY);
