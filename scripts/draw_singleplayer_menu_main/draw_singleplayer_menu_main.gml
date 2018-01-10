///Using UI Element Extended Functions
var bump = bump_x;
draw_set_alpha(0.25);
draw_set_color(c_red);
draw_rectangle(0,0,window_get_width(),window_get_height(),0)
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(fnt_tall_dark_handsome)

//Button 1

    //Set position for button
    if ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(320,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false)
        {
        button_1x = lerp(button_1x,128+bump,0.25);
        info_text = "Campaign:##Traverse a randomly generated story mode unique to you";
        }

    if !ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(320,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false)
        {
        button_1x = lerp(button_1x,128,0.25);
        }
    //Clicking the button
    if ui_mouse_released(scale_ui_coordinate(128,1920),scale_ui_coordinate(320,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false,mb_left)
        {
        
        }
        

//Button 2
    
    //Set position for button
    if ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(416,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false)
        {
        button_2x = lerp(button_2x,128+bump,0.25);
        info_text = "Time Trials:##Race against yourself on weekly maps curated by the developers";
        }
    if !ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(416,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false)
        {
        button_2x = lerp(button_2x,128,0.25);
        }
    //Clicking the button
    if ui_mouse_released(scale_ui_coordinate(128,1920),scale_ui_coordinate(416,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false,mb_left)
        {
        
        }  


//Button 3

    //Set position for button
    if ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(512,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false)
        {
        button_3x = lerp(button_3x,128+bump,0.25);
        info_text = "Free Play!##Essensially you can screw around to your hearts content";
        }
    if !ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(512,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false)
        {
        button_3x = lerp(button_3x,128,0.25);
        }
    //Clicking the button
    if ui_mouse_released(scale_ui_coordinate(128,1920),scale_ui_coordinate(512,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false,mb_left)
        {
        room_goto(rm_test_room);
        }  


//Button 4

    //Set position for button
    if ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(608,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false)
        {
        button_4x = lerp(button_4x,128+bump,0.25);
        }
    if !ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(608,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false)
        {
        button_4x = lerp(button_4x,128,0.25);
        }
    //Clicking the button
    if ui_mouse_released(scale_ui_coordinate(128,1920),scale_ui_coordinate(608,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false,mb_left)
        {
        room_goto(room_6);
        }
   
//Sets the info box to the default.
if !ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(320,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false)
&& !ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(416,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false)
&& !ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(512,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false)
&& !ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(608,1080),spr_button,window_get_width(),window_get_height(),1920,1080,false)
&& !ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(128,1080),spr_singleplayer_tab,window_get_width(),window_get_height(),1920,1080,false)
&& !ui_rollover(scale_ui_coordinate(544,1920),scale_ui_coordinate(128,1080),spr_multiplayer_tab,window_get_width(),window_get_height(),1920,1080,false)
&& !ui_rollover(scale_ui_coordinate(960,1920),scale_ui_coordinate(128,1080),spr_settings_tab,window_get_width(),window_get_height(),1920,1080,false)        
                        {
    info_text = "Welcome to RNG Racer!##Select a game mode to get started";
    }
   
draw_ui_element_ext(scale_ui_coordinate(button_1x,1920),scale_ui_coordinate(320,1080),spr_button,window_get_width(),window_get_height(),c_white, 0.9,"Campaign",fa_left,fa_middle,64,0,1920,1080)
draw_ui_element_ext(scale_ui_coordinate(button_2x,1920),scale_ui_coordinate(416,1080),spr_button,window_get_width(),window_get_height(),c_white, 0.9,"Time Trials",fa_left,fa_middle,64,0,1920,1080)
draw_ui_element_ext(scale_ui_coordinate(button_3x,1920),scale_ui_coordinate(512,1080),spr_button,window_get_width(),window_get_height(),c_white, 0.9,"Free Play",fa_left,fa_middle,64,0,1920,1080)   
draw_ui_element_ext(scale_ui_coordinate(button_4x,1920),scale_ui_coordinate(608,1080),spr_button,window_get_width(),window_get_height(),c_white, 0.9,"Placeholder Text",fa_left,fa_middle,64,0,1920,1080)
draw_ui_element_ext(scale_ui_coordinate(784,1920),scale_ui_coordinate(320,1080),spr_info_box,window_get_width(),window_get_height(),c_white, 0.9,info_text,fa_left,fa_top,32,32,1920,1080)
draw_ui_element(scale_ui_coordinate(0,1920),scale_ui_coordinate(674,1080),spr_gradient_overlay,window_get_width(),window_get_height(),c_white, 1)
