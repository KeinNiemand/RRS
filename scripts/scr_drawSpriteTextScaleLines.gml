var input = string(argument0);
var xtext = argument1;
var ytext = argument2;
var sprite = argument3;
var xscale = argument4;
var yscale = argument5;
var lineHeight = yscale*string_height("ABCDEFGHIJKLMNOPQERSTUVWXZ0123456789abcdefghijklmnopqrstuvwxyz");

//Seperate First Line and other Lines
if (string_count("#", input) > 0) {
    var text1 = string_copy(input, 0 , string_pos("#",input)-1);
    var text2 = string_copy(input, string_pos("#",input)+1 , string_length(input)-string_pos("#",input));
    
}
else {
    var text2 = ""
}

//If there is more then 1 line left
if text2 != "" {
    //Draw the first line
    scr_drawSpriteTextScale(text1,xtext,ytext,sprite,xscale,yscale);
    //Increse ytext to the next line
    ytext += lineHeight;
    //Call scr_drawSpriteTextScaleLines again to draw next line/s
    scr_drawSpriteTextScaleLines(text2 , xtext , ytext , sprite , xscale , yscale);
}
//Last Line
else {
    //Draw last Line
    scr_drawSpriteTextScale(text1 , xtext , ytext , sprite , xscale , yscale);
}
