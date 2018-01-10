///ui_rollover(x,y,sprite,window_width,window_height,base_width,base_height,draw)
var x_per = argument0;
var y_per = argument1;
var sprite = argument2;
var window_width = argument3;
var window_height = argument4;
var base_w = argument5;
var base_h = argument6;
var draw = argument7;
var spritew = sprite_get_width(sprite);
var spriteh = sprite_get_height(sprite);
var spritew_real = scale_ui_coordinate(spritew,base_w) * window_width;
var spriteh_real = scale_ui_coordinate(spriteh,base_h) * window_height;
var x1 = x_per * window_width;
var y1 = y_per * window_height;
var x2 = x1 + spritew_real;
var y2 = y1 + spriteh_real;

if (draw == true)
   {
   draw_set_alpha(1)
   draw_set_color(c_black)
   draw_rectangle(x1,y1,x2,y2,false);
   }
return point_in_rectangle(device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),x1,y1,x2,y2);



