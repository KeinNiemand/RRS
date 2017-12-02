//Toggle paused variable
paused = !paused;
//Pause Game
if paused {
    spr_lastScreen = sprite_create_from_surface(application_surface, 0, 0, room_width, room_height, false, false, 0, 0);
    instance_deactivate_all(true); 
    instance_activate_object(obj_storage);
    var backButton = instance_create(room_width/2, room_height/2+100, obj_backToMenu);
    with (backButton) {
    image_xscale = 5;
    image_yscale = 5;
    }
}
//Unpause Game
else {
    instance_activate_all();
    if sprite_exists(spr_lastScreen)
    {
    sprite_delete(spr_lastScreen);
    }
    if instance_exists(obj_backToMenu)
        instance_destroy(obj_backToMenu);
}
