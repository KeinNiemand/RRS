/*
fixes colour by switching red and blue
(colour for explosion effect and maybe others broke with last game maker studio update
 so red is now blue and blue is now red)
*/
var inputColour = argument0;
var red = colour_get_blue(inputColour);
var green = colour_get_green(inputColour);
var blue = colour_get_red(inputColour);
if global.device == 0
    return (make_colour_rgb(red,green,blue));
else
    return inputColour;

