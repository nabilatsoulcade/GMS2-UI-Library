//Set draw settings
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_font(fnt_tall_dark_handsome);

//Draw the tabs

//Singleplayer
    //Set y position for tabs 
    if ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(128,1080),spr_singleplayer_tab,window_get_width(),window_get_height(),1920,1080,false)
        {
        tab1y = lerp(tab1y,128-bump_y,0.25);
        info_text = "Singleplayer:##Simply put, it\'s the singleplayer aspect of the game.";
        }

    if !ui_rollover(scale_ui_coordinate(128,1920),scale_ui_coordinate(128,1080),spr_singleplayer_tab,window_get_width(),window_get_height(),1920,1080,false)
        {
        tab1y = lerp(tab1y,128,0.25);
        }
    //Clicking the button
    if ui_mouse_released(scale_ui_coordinate(128,1920),scale_ui_coordinate(128,1080),spr_singleplayer_tab,window_get_width(),window_get_height(),1920,1080,false,mb_left)
        {
        main_tab = menu.singleplayer;
        current_menu = menu.main;
        }
 
//Multiplayer       
        //Set y position for tabs 
    if ui_rollover(scale_ui_coordinate(544,1920),scale_ui_coordinate(128,1080),spr_multiplayer_tab,window_get_width(),window_get_height(),1920,1080,false)
        {
        tab2y = lerp(tab2y,128-bump_y,0.25);
        info_text = "Multiplayer:##Simply put, it\'s the multiplayer aspect of the game.";
        }

    if !ui_rollover(scale_ui_coordinate(544,1920),scale_ui_coordinate(128,1080),spr_multiplayer_tab,window_get_width(),window_get_height(),1920,1080,false)
        {
        tab2y = lerp(tab2y,128,0.25);
        }
    //Clicking the button
    if ui_mouse_released(scale_ui_coordinate(544,1920),scale_ui_coordinate(128,1080),spr_multiplayer_tab,window_get_width(),window_get_height(),1920,1080,false,mb_left)
        {
        main_tab = menu.multiplayer;
        current_menu = menu.main;
        }
//Settings Tab
    //Set y position for tabs 
    if ui_rollover(scale_ui_coordinate(960,1920),scale_ui_coordinate(128,1080),spr_settings_tab,window_get_width(),window_get_height(),1920,1080,false)
        {
        tab3y = lerp(tab3y,128-bump_y,0.25);
        info_text = "Settings:##The settings for your game.";
        }

    if !ui_rollover(scale_ui_coordinate(960,1920),scale_ui_coordinate(128,1080),spr_settings_tab,window_get_width(),window_get_height(),1920,1080,false)
        {
        tab3y = lerp(tab3y,128,0.25);
        }
    //Clicking the button
    if ui_mouse_released(scale_ui_coordinate(960,1920),scale_ui_coordinate(128,1080),spr_settings_tab,window_get_width(),window_get_height(),1920,1080,false,mb_left)
        {
        //main_tab = menu.settings;
        //current_menu = menu.main;
        }
draw_ui_element_ext(scale_ui_coordinate(128,1920),scale_ui_coordinate(tab1y,1080),spr_singleplayer_tab,window_get_width(),window_get_height(),c_white, 0.9,"singleplayer",fa_center,fa_middle,0,0,1920,1080)
draw_ui_element_ext(scale_ui_coordinate(544,1920),scale_ui_coordinate(tab2y,1080),spr_multiplayer_tab,window_get_width(),window_get_height(),c_white, 0.9,"multiplayer",fa_center,fa_middle,0,0,1920,1080)
draw_ui_element_ext(scale_ui_coordinate(960,1920),scale_ui_coordinate(tab3y,1080),spr_settings_tab,window_get_width(),window_get_height(),c_white, 0.9,"settings",fa_center,fa_middle,0,0,1920,1080)
