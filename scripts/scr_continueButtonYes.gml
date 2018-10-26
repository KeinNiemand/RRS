//gets executen when you click yes on the continue button question dialog

//Runs everyting inside of obj Game over
with (obj_gameOver) {
    //Spend coins  if succesfull continue the Game
    if (scr_spendCoins(continuePrice, "continue")) {
        scr_continue();
        }
}

