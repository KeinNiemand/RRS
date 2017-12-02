if (os_type == os_windows) 
    var border = 16;
else 
    var border = 0;
if os_browser = browser_not_a_browser && !window_get_fullscreen() {
    var height = floor(display_get_height()-border);
    var width = floor((display_get_height()-border)*(1/1.5));
    window_set_size(width, height);
    window_set_position((display_get_width()/2)-width/2,8);
}
