///draw_ui_element(x_percent,y_percent,sprite,window_width,window_height,color,alpha)

//Set Variables
var x_per = argument0;
var y_per = argument1;
var sprite = argument2;
var window_width = argument3;
var window_height = argument4;
var color = argument5;
var alpha = argument6;

//Draw Sprite
draw_sprite_ext( sprite , 0 , x_per * window_width , y_per * window_height , scale_ui_dimension(1920,window_width) , scale_ui_dimension(1080,window_height) , 0 , color , alpha );


