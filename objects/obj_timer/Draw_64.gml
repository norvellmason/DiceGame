/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16BB5303
/// @DnDArgument : "var" "is_resetting"
/// @DnDArgument : "value" "true"
if(is_resetting == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 70495982
	/// @DnDParent : 16BB5303
	/// @DnDArgument : "var" "buttons_correct"
	/// @DnDArgument : "value" "true"
	if(buttons_correct == true)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3743950B
		/// @DnDParent : 70495982
		/// @DnDArgument : "x" "-400"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-400"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "checkmark"
		/// @DnDSaveInfo : "sprite" "checkmark"
		draw_sprite(checkmark, 0, x + -400, y + -400);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 1A5D4E96
		/// @DnDParent : 70495982
		/// @DnDArgument : "color" "$FF22FF00"
		/// @DnDArgument : "alpha" "false"
		draw_set_colour($FF22FF00 & $ffffff);draw_set_alpha(1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 64AD1619
		/// @DnDParent : 70495982
		/// @DnDArgument : "x" "-300"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-500"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "4"
		/// @DnDArgument : "xscale_relative" "1"
		/// @DnDArgument : "yscale" "4"
		/// @DnDArgument : "yscale_relative" "1"
		/// @DnDArgument : "caption" ""CORRECT!""
		draw_text_transformed(x + -300, y + -500, string("CORRECT!") + "", image_xscale + 4, image_yscale + 4, 0);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 5BA55B82
	/// @DnDParent : 16BB5303
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3C310D1B
		/// @DnDParent : 5BA55B82
		/// @DnDArgument : "x" "-400"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-400"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "failmark"
		/// @DnDSaveInfo : "sprite" "failmark"
		draw_sprite(failmark, 0, x + -400, y + -400);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Color
		/// @DnDVersion : 1
		/// @DnDHash : 016D58BF
		/// @DnDParent : 5BA55B82
		/// @DnDArgument : "color" "$FF0000FF"
		/// @DnDArgument : "alpha" "false"
		draw_set_colour($FF0000FF & $ffffff);draw_set_alpha(1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 5B36FA97
		/// @DnDParent : 5BA55B82
		/// @DnDArgument : "x" "-300"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-500"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "4"
		/// @DnDArgument : "xscale_relative" "1"
		/// @DnDArgument : "yscale" "4"
		/// @DnDArgument : "yscale_relative" "1"
		/// @DnDArgument : "caption" ""WRONG!""
		draw_text_transformed(x + -300, y + -500, string("WRONG!") + "", image_xscale + 4, image_yscale + 4, 0);
	}
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7F35EDD8
/// @DnDArgument : "var" "global.game_has_started"
/// @DnDArgument : "value" "false"
if(global.game_has_started == false)
{
	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 0F6AAD19
	/// @DnDParent : 7F35EDD8
	draw_set_colour($FFFFFFFF & $ffffff);
	var l0F6AAD19_0=($FFFFFFFF >> 24);
	draw_set_alpha(l0F6AAD19_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 254248B6
	/// @DnDParent : 7F35EDD8
	/// @DnDArgument : "x" "700"
	/// @DnDArgument : "y" "400"
	/// @DnDArgument : "xscale" "8"
	/// @DnDArgument : "yscale" "8"
	/// @DnDArgument : "caption" ""GET READY...""
	draw_text_transformed(700, 400, string("GET READY...") + "", 8, 8, 0);
}