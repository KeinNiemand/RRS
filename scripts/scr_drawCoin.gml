var input = string(argument0);
var xtext = argument1;
var ytext = argument2;
if (string_count("~", input) > 0) {
    var text1 = string_copy(input, 0 , string_pos("~",input)-1)
    var text2 = string_copy(input, string_pos("~",input)+1 , string_length(input)-string_pos("~",input))
    
}
else {
    var text1 = input;
    var text2 = "";
}
draw_text(xtext,ytext, text1);
draw_sprite(spr_coin,0,xtext+string_width(text1)+sprite_get_width(spr_coin)/2,ytext);

xtext += string_width(text1)+sprite_get_width(spr_coin);

if (string_count("~", text2) > 0) {
    scr_drawCoin(text2,xtext,ytext);
}
else {
    draw_text(xtext,ytext, text2);
}
