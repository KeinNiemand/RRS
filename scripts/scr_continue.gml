//Continue after GameOver (RUN THIS SCRIPT IN obj_gameOver)

//Unpause the Game


//Delete pMenu
for (var i = 0; i<array_length_1d(pMenu);i++) {
    with(pMenu[i]) {
        instance_destroy(id)
    }
}

//cleanPause
scr_cleanPause();

//unpause the game
scr_pause(false);




//set player hp to 1
with (obj_player) hp = 1;




//Clear inGame screen (destroy all enemys, enemy bullets and bullet on screen)


//Destroy all enemys
for (var i = 0; i < array_length_1d(obj_controll.enemys); i++) {
    with (obj_controll.enemys[i]) instance_destroy();
}

//Destroy all Enemy bullets
with (obj_bullet_evil) instance_destroy();
//destroy all player bullets
with (obj_bullet) instance_destroy();



//Increment currentContinue inside obj_controll 
with (obj_controll) currentContinue++;

//Destroy obj_gameOver (this instance)
instance_destroy();
