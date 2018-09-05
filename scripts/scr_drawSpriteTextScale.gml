//get the inputs
var input = string(argument0);
var xtext = argument1;
var ytext = argument2;
var sprite = argument3;
var xscale = argument4;
var yscale = argument5;
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//caclulate sprite scale
var spritescale = (string_height("0123456789")/sprite_get_height(sprite));

//IF there is a ~ in the text split the text int text 1 or 2
if (string_count("~", input) > 0) {
    var text1 = string_copy(input, 0 , string_pos("~",input)-1)
    var text2 = string_copy(input, string_pos("~",input)+1 , string_length(input)-string_pos("~",input))
}
//otherwise set text 2 to be empty
else {
    var text1 = input;
    var text2 = "";
}
//draw text1
draw_text_transformed(xtext,ytext, text1,xscale,yscale,0);
//calculate sprite x and y coordinats
var xspr = xtext+string_width(text1)*xscale+(sprite_get_width(sprite)*xscale*spritescale)/2;
var yspr = ytext+(sprite_get_height(sprite)*yscale*spritescale)/2;


if (string_count("#", text1) > 0) {
    xtext = argument1;
    ytext += string_height("M")*yscale*string_count("#", text1);
    yspr += string_height("M")*yscale*string_count("#", text1);
    
}
else {
    xtext += string_width(text1)*xscale+sprite_get_width(sprite)*xscale;
}

//Draw Sprite
if (string_count("~", input) > 0) {
    draw_sprite_ext(sprite,0,xspr,yspr,xscale*spritescale,yscale*spritescale,0,-1,1);
}

//if (string_count("#",text2) > 0) {
//    ytext += string_height("M")*yscale
//}

//if there are any ~ repeat the process
if (text2 != "") {
    scr_drawSpriteTextScale(text2,xtext,ytext,sprite,xscale,yscale);
}
