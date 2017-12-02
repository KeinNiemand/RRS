//Reset GUI
display_set_gui_maximise(1, 1);
draw_set_color(c_white);
if (display_get_width() >=1920 && display_get_height() >= 1080) || (display_get_width() >=1080 && display_get_height() >= 1920) {
    draw_set_font(fnt_large);
} else {
    draw_set_font(fnt_medium);
}
