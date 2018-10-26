/* 
    usage: scr_spendCoins(amount, item)
    description: spends the specified amount of coins and sends GoogleAnalytics event
    returns : true if you have enough coins, otherwise returns false
*/
//first argument is amount of coins to spend
var amount = argument0;

//init item var
var item = "";

//set item to the second argument if there is a second argument
if argument_count > 1
    item = argument1;
    
//Check if you have enought coins to spend
if (obj_storage.coins >= amount) {
    //Remove coins from total coins
    obj_storage.coins -= amount
    //send google anlytics event
    GoogleAnalytics_SendEventExt("coins", "spend", item, amount);
    //return true
    return true;
}
else
    //return fale if you don't have enough coins
    return false
