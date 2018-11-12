//mode decides if the script should pause or unpause the game
//so scr_pause(true) pauses the game and scr_pause(false) unpauses the game
//Pausing deactivates all object exeot obj_storage and the object calling scr_pause
var mode = argument0;
if mode {
    //Pause Game
    spr_lastScreen = sprite_create_from_surface(application_surface, 0, 0, room_width, room_height, false, false, 0, 0);
    instance_deactivate_all(true); 
    instance_activate_object(obj_storage);
    oldBackgroundHSpeed = background_hspeed;
    oldBackgroundVspeed = background_vspeed;
    background_hspeed[0] = 0;
    background_vspeed[0] = 0;
} //Unpause Game
else {
    instance_activate_all();
    scr_cleanPause();
    background_hspeed = oldBackgroundHSpeed;
    background_vspeed = oldBackgroundVspeed;
}
