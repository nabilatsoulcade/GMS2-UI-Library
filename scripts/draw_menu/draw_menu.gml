switch(main_tab)
    {
    case menu.singleplayer:
    draw_singleplayer_menu();
    break;
    
    case menu.multiplayer:
    draw_multiplayer_menu();
    break;
    
    case menu.settings:
    draw_settings_menu();
    break;
    
    default:
    draw_singleplayer_menu();
    break;
    }
draw_tabs();

