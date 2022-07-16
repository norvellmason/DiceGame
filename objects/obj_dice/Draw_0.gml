/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 6F95A71B
/// @DnDArgument : "assignee" "new_color"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "color_map"
/// @DnDArgument : "key" "dice_color"
var new_color = ds_map_find_value(color_map, dice_color);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 212DDED6
/// @DnDArgument : "color" "new_color"
/// @DnDArgument : "alpha" "false"
draw_set_colour(new_color & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 54AB60AB
/// @DnDArgument : "x" "10"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "dice_num"
draw_text(x + 10, y + 10, string("") + string(dice_num));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4325C7D4
/// @DnDArgument : "x" "10"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "70"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "dice_color"
draw_text(x + 10, y + 70, string("") + string(dice_color));

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 43FE7F43
draw_self();