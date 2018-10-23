//Asks if your really want to continue if you have enough mony otherwise does nothing
if (obj_storage.coins >= obj_gameOver.continuePrice) {
    msg = scr_showQuestion("Do you want to spend " + string(obj_gameOver.continuePrice) + " coins to continue? # You will continue with 1 Heart")
}

