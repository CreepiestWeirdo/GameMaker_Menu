// user input
// keyboard selection
if (keyboard_check_pressed(vk_up)) {
    selected_index--;
} 
if (keyboard_check_pressed(vk_down)) {
    selected_index++;
}
selected_index = clamp(index, 0, op_max - 1); // Asegura que selected_index esté dentro de los límites

// mouse detection
var _m_x = device_mouse_x_to_gui(0);
var _m_y = device_mouse_y_to_gui(0);

//update menu state
for (var _i = 0; _i < op_max; _i++) {
    var _x1 = display_get_gui_width() / 2;
    var _y1 = display_get_gui_height() / 2 + (50 * _i);
    var _string_w = string_width(options[_i]);
    var _string_h = string_height(options[_i]);

    if (point_in_rectangle(_m_x, _m_y, _x1 - _string_w / 2, _y1 - _string_h / 2, 
                                _x1 + _string_w / 2, _y1 + _string_h / 2)) {
        selected_index = _i; // update mouse selection

        if (mouse_check_button_pressed(mb_left)) {
            switch(selected_index) {
                case 0: room_goto(1); break;
                case 1: break;
                case 2: game_end(); break;                  
            }
        }
    }
}

// keyboard selection pressing enter
if (keyboard_check_pressed(vk_enter)) {
    switch(selected_index){
        case 0: room_goto(1); break;
        case 1:  break;
        case 2: game_end(); break;
    }
}
