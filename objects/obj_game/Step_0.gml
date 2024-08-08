// mouse position
var _m_x = device_mouse_x_to_gui(0);
var _m_y = device_mouse_y_to_gui(0);

// mouse selection
for (var _i = 0; _i < op_max; _i++) {
    var _x1 = display_get_gui_width() / 2;
    var _y1 = display_get_gui_height() / 2 + (50 * _i);
    var _string_w = string_width(options[_i]);
    var _string_h = string_height(options[_i]);

    if (point_in_rectangle(_m_x, _m_y, _x1 - _string_w / 2, _y1 - _string_h / 2, 
                                _x1 + _string_w / 2, _y1 + _string_h / 2)) {
        if (mouse_check_button_pressed(mb_left)) {
            room_goto(0); 
        }
    }
}

// keyboard selection
if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_escape)) {
    room_goto(0); 
}
