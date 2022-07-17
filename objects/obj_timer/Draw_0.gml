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
/// @DnDArgument : "y2" "((time_remaining / level_time) * 713)*-1"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "fill" "1"
draw_rectangle(x + 0, y + 0, x + 66, y + ((time_remaining / level_time) * 713)*-1, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4F1BF672
/// @DnDArgument : "var" "global.game_has_started"
/// @DnDArgument : "value" "false"
if(global.game_has_started == false)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 6B477260
	/// @DnDParent : 4F1BF672
	draw_set_colour($FFFFFFFF & $ffffff);
	var l6B477260_0=($FFFFFFFF >> 24);
	draw_set_alpha(l6B477260_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 10EF465E
	/// @DnDParent : 4F1BF672
	/// @DnDArgument : "x" "700"
	/// @DnDArgument : "y" "400"
	/// @DnDArgument : "xscale" "8"
	/// @DnDArgument : "yscale" "8"
	/// @DnDArgument : "caption" ""GET READY...""
	draw_text_transformed(700, 400, string("GET READY...") + "", 8, 8, 0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3480D8B5
/// @DnDArgument : "var" "is_resetting"
/// @DnDArgument : "value" "true"
if(is_resetting == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2BAA6E2E
	/// @DnDParent : 3480D8B5
	/// @DnDArgument : "var" "buttons_correct"
	/// @DnDArgument : "value" "true"
	if(buttons_correct == true)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 22E765D8
		/// @DnDParent : 2BAA6E2E
		/// @DnDArgument : "x" "-300"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-500"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "7"
		/// @DnDArgument : "xscale_relative" "1"
		/// @DnDArgument : "yscale" "7"
		/// @DnDArgument : "yscale_relative" "1"
		/// @DnDArgument : "caption" ""GOOD JOB!!!""
		draw_text_transformed(x + -300, y + -500, string("GOOD JOB!!!") + "", image_xscale + 7, image_yscale + 7, 0);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 1740E48D
	/// @DnDParent : 3480D8B5
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 61C4CB87
		/// @DnDParent : 1740E48D
		/// @DnDArgument : "x" "-300"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-500"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "7"
		/// @DnDArgument : "xscale_relative" "1"
		/// @DnDArgument : "yscale" "7"
		/// @DnDArgument : "yscale_relative" "1"
		/// @DnDArgument : "caption" ""YOU SUCK!!!!""
		draw_text_transformed(x + -300, y + -500, string("YOU SUCK!!!!") + "", image_xscale + 7, image_yscale + 7, 0);
	}
}