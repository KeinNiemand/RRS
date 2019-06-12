//enemy switche direction from left to right when hitting the 
//left or right side of the room

//Run in Step event

var collisonWidth = (sprite_get_bbox_left(sprite_index)/2)-1
if (x <= collisonWidth && hspeed <= 0) {
    hspeed *= -1;
}
if (x >= room_width-collisonWidth && hspeed >= 0) {
    hspeed *= -1;
}
