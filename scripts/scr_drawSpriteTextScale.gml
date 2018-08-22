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
var spritescale = (string_height(input)/sprite_get_height(sprite));

//IF there is a ~ in the text split the text int text 1 or 2
if (string_count("~", input) > 0) {
    var text1 = string_copy(input, 0 , string_pos("~",input)-1)
    var text2 = string_copy(input, string_pos("~",input)+1 , string_length(input)-string_pos("~",input))
    //Draw the coinsprite only if there is a ~ in the input
    draw_sprite_ext(sprite,0,
    xtext+(string_width(text1)*xscale)+(sprite_get_width(sprite)*xscale*spritescale)/2,
    ytext+(sprite_get_height(sprite)*yscale*spritescale)/2,xscale*spritescale,yscale*spritescale,0,c_white,1);
}
//otherwise set text 2 to be empty
else {
    var text1 = input;
    var text2 = "";
}
//draw text1
draw_text_transformed(xtext,ytext, text1,xscale,yscale,0);
//draw next text after the coin sprite
xtext += string_width(text1)*xscale+sprite_get_width(sprite)*xscale;
//if there are any ~ repeat the process
if (string_count("~", text2) > 0) {
    scr_drawSpriteTextScale(text2,xtext,ytext,sprite,xscale,yscale);
}
//else draw text2
else {
    draw_text_transformed(xtext,ytext, text2,xscale,yscale,0);
}
