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