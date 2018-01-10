///draw_ui_element_interactive_ext(x_percent,y_percent,sprite,window_width,window_height,color,alpha,text,halign,valign,hmargin,vmargin,base_w,base_h)

//Set Variables
var x_per = argument0;
var y_per = argument1;
var sprite = argument2;
var window_width = argument3;
var window_height = argument4;
var color = argument5;
var alpha = argument6;
var text = argument7;
var halign = argument8;
var valign = argument9;
var hmargin = argument10;
var vmargin = argument11;
var base_w = argument12;
var base_h = argument13;
var text_x;
var text_y;
var xx = round(x_per * base_w);
var yy = round(y_per * base_h);
var xratio = scale_ui_dimension(base_w,window_width);
var yratio = scale_ui_dimension(base_h,window_height);
var sprite_w = sprite_get_width(sprite);
var sprite_h = sprite_get_height(sprite);
//Draw Sprite
draw_sprite_ext( sprite , 0 , x_per * window_width , y_per * window_height , scale_ui_dimension(1920,window_width) , scale_ui_dimension(1080,window_height) , 0 , color , alpha );

//Set alignment and position of text within the ui element
//Set Horizontal Alignments
if halign == fa_left
   {
     draw_set_halign(fa_left)
     text_x = scale_ui_coordinate( xx + hmargin ,base_w) * window_width;
     }

if halign == fa_center
   {
     draw_set_halign(fa_center)
     text_x = scale_ui_coordinate( xx + sprite_w/2 + hmargin,base_w) * window_width;
     }
     
if halign == fa_right
   {
     draw_set_halign(fa_right)
     text_x = scale_ui_coordinate( xx + sprite_w - hmargin,base_w) * window_width;
     }
     
//Set Vertical Alignments     
if valign == fa_top
   {
     draw_set_valign(fa_top)
     text_y = scale_ui_coordinate( yy + vmargin,base_h) * window_height;
     }
     
if valign == fa_middle
   {
     draw_set_valign(fa_middle)
     text_y = scale_ui_coordinate( yy + sprite_h/2 + vmargin,base_h) * window_height
     }
     
if valign == fa_bottom
   {
     draw_set_valign(fa_bottom)
     text_y = scale_ui_coordinate( yy + sprite_h - vmargin,base_h) * window_height
     }
     

draw_text(text_x,text_y,string_hash_to_newline(text));



