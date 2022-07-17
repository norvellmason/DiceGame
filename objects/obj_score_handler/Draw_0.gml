/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3F79D72D
draw_set_colour($FFFFFFFF & $ffffff);
var l3F79D72D_0=($FFFFFFFF >> 24);
draw_set_alpha(l3F79D72D_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2C56CCF1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "score"
draw_text(x + 0, y + 0, string("") + string(score));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 152D6495
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "200"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "lives"
draw_text(x + 0, y + 200, string("") + string(lives));