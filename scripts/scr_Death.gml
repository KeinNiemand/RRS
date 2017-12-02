GoogleAnalytics_SendEventExt("player", "Game-Over", killedBy, obj_controll.gameTime);
with (obj_storage) {
ad += 1;
}
if (obj_storage.ad % 3 == 0) {  
    if GoogleMobileAds_InterstitialStatus() == "Ready"
    {
        GoogleMobileAds_ShowInterstitial();
        GoogleMobileAds_LoadInterstitial();
    }
}
//Go Back to main Menu
scr_gotoRoom(rm_menu_main);
