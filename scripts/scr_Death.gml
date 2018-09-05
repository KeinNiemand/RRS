//GoogleAnalytics_SendEventExt("player", "Game-Over", killedBy, obj_controll.gameTime);
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
//SpawnGameOver Object
instance_create(0,0,obj_gameOver);
//set killedBy in obj_gameOver (needet to send GoogleAnalytics event
with(obj_gameOver) {
killedBy = other.killedBy;
}
