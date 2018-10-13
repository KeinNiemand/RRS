//Play Lost Live Sound Effect
//Set dmg to the first argument
var dmg = argument[0];
//Play snd_sfx_lostLive sound Effect
if (obj_storage.sound) {
    audio_play_sound(snd_sfx_lostLive, 30, 0)
    }
with (obj_player) {
    //Reduce Player hp by dmg
    hp -= dmg;
    //Stuff that happens when players dies before actual death
    if hp <= 0  {
        if (argument_count == 1)
            killedBy = object_get_name(other.object_index);
        else
            killedBy = object_get_name(argument[1]) + ": " + object_get_name(other.object_index);
        scr_Death();
    }
}
//Initialize damagedBy varible to an emtpy String
var damagedBy = ""
//If there is only one argument
if argument_count == 1 {
    //Set damgedBy to the object that is running the script
    damagedBy = object_get_name(object_index);
}
else {
    /**Set damgedBy to the object in the first argument + 
    the name of the object that is running the script sperated by _ **/
   damagedBy = object_get_name(argument[1]) + ": " + object_get_name(object_index);
}
//Send lostLife/S event to GoogleAnalytics
GoogleAnalytics_SendEventExt("player", "lostLife", damagedBy, dmg);
