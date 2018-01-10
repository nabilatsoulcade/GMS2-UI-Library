///ui_make_area_interactive(x,y,sprite,window_width,window_height,base_width,base_height)
var x_per = argument0;
var y_per = argument1;
var sprite = argument2;
var window_width = argument3;
var window_height = argument4;
var base_w = argument5;
var base_h = argument6;

var xx = round(x_per * base_w);
var yy = round(y_per * base_h);
var xratio = scale_ui_dimension(base_w,window_width);
var yratio = scale_ui_dimension(base_h,window_height);
var sprite_w = sprite_get_width(sprite);
var sprite_h = sprite_get_height(sprite);
var width = sprite_w * xratio;
var height = sprite_h * yratio;

return (point_in_rectangle(mouse_x,mouse_y,xx,yy,width,height));  


