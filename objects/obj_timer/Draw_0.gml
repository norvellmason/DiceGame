/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 15318C52
/// @DnDArgument : "color" "$FFFFE41E"
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFE41E & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 3BB75C6D
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "66"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "(time_remaining * 143)*-1"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "fill" "1"
draw_rectangle(x + 0, y + 0, x + 66, y + (time_remaining * 143)*-1, 0);