draw_set_font(fnt_menu); 
var _gui_width = display_get_gui_width();
var _gui_height = display_get_gui_height();
var _x1 = _gui_width / 2;
var _y1 = _gui_height / 2;
var _margin = 50;


draw_set_halign(fa_center); 
draw_set_valign(fa_middle); 

// draw menu options
for (var _i = 0; _i < op_max; _i++) {
    var _y2 = _y1 + (_margin * _i); // get options position
    var _string_w = string_width(options[_i]);
    var _string_h = string_height(options[_i]);

    if (_i == selected_index) {
        draw_set_color(c_purple); // highlight selection 
    } else {
        draw_set_color(c_yellow); // default color
    }

    draw_text(_x1, _y2, options[_i]); // options text
}
