/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 68DE54B1
/// @DnDArgument : "font" "Font_small"
/// @DnDSaveInfo : "font" "Font_small"
draw_set_font(Font_small);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FAB7BD2
/// @DnDArgument : "var" "display_label"
/// @DnDArgument : "value" "tracking_type"
var display_label = tracking_type;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 752E889A
/// @DnDArgument : "var" "tracking_type"
/// @DnDArgument : "value" ""color""
if(tracking_type == "color")
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B3EB047
	/// @DnDParent : 752E889A
	/// @DnDArgument : "expr" "color_to_track"
	/// @DnDArgument : "var" "display_label"
	display_label = color_to_track;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55432E5B
	/// @DnDParent : 752E889A
	/// @DnDArgument : "expr" "" " + count_or_total"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "display_label"
	display_label += " " + count_or_total;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2C14278B
/// @DnDArgument : "var" "tracking_type"
/// @DnDArgument : "value" ""number""
if(tracking_type == "number")
{
	/// @DnDAction : YoYo Games.Types.Number_To_String
	/// @DnDVersion : 1
	/// @DnDHash : 6D904ED8
	/// @DnDParent : 2C14278B
	/// @DnDArgument : "var" "num_to_track_str"
	/// @DnDArgument : "value" "num_to_track"
	num_to_track_str = string(num_to_track);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25ED8458
	/// @DnDParent : 2C14278B
	/// @DnDArgument : "expr" "num_to_track_str"
	/// @DnDArgument : "var" "display_label"
	display_label = num_to_track_str;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23652DF3
	/// @DnDParent : 2C14278B
	/// @DnDArgument : "expr" "" count""
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "display_label"
	display_label += " count";
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35B92D6F
/// @DnDArgument : "expr" ""\n" + evaluator_type +"\n""
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "display_label"
display_label += "\n" + evaluator_type +"\n";

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1021C496
/// @DnDArgument : "var" "evaluator_type"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" ""even""
if(!(evaluator_type == "even"))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34B01005
	/// @DnDParent : 1021C496
	/// @DnDArgument : "var" "evaluator_type"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" ""odd""
	if(!(evaluator_type == "odd"))
	{
		/// @DnDAction : YoYo Games.Types.Number_To_String
		/// @DnDVersion : 1
		/// @DnDHash : 497CD463
		/// @DnDParent : 34B01005
		/// @DnDArgument : "var" "ev_val_str "
		/// @DnDArgument : "value" "evaluator_value"
		ev_val_str  = string(evaluator_value);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 100B8432
		/// @DnDParent : 34B01005
		/// @DnDArgument : "expr" "ev_val_str"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "display_label"
		display_label += ev_val_str;
	}
}

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 4094227C
/// @DnDDisabled : 1
/// @DnDArgument : "var" "should_be_pressed"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "button_should_be_pressed"


/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0C9692FF
/// @DnDDisabled : 1
/// @DnDArgument : "var" "should_be_pressed"
/// @DnDArgument : "value" "true"
/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 060A69B3
/// @DnDDisabled : 1
/// @DnDParent : 0C9692FF
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "90"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""SHOULD BE PRESSED""

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 66DAD711
/// @DnDDisabled : 1
/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6AC1ED36
/// @DnDDisabled : 1
/// @DnDParent : 66DAD711
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "90"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""DO NOT PRESS""

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 666409AD
draw_set_colour($FFFFFFFF & $ffffff);
var l666409AD_0=($FFFFFFFF >> 24);
draw_set_alpha(l666409AD_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4AFD3DF5
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "110"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""evaluator value: ""
/// @DnDArgument : "var" "evaluator_value"


/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4EB9A1FC
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "130"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""calculated value: ""
/// @DnDArgument : "var" "calculated_value"


/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4ADE2645
/// @DnDArgument : "expr" "is_pressed"
if(is_pressed)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 46D4C60F
	/// @DnDParent : 4ADE2645
	/// @DnDArgument : "var" "hover"
	/// @DnDArgument : "value" "1"
	if(hover == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 0848EECE
		/// @DnDParent : 46D4C60F
		/// @DnDArgument : "spriteind" "button_depressed_hover"
		/// @DnDSaveInfo : "spriteind" "button_depressed_hover"
		sprite_index = button_depressed_hover;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2AAADFF5
	/// @DnDParent : 4ADE2645
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5023E8E7
		/// @DnDParent : 2AAADFF5
		/// @DnDArgument : "spriteind" "button_depressed"
		/// @DnDSaveInfo : "spriteind" "button_depressed"
		sprite_index = button_depressed;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 652050C1
	/// @DnDParent : 4ADE2645
	draw_self();

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 05CB33B0
	/// @DnDParent : 4ADE2645
	/// @DnDArgument : "x" "190"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "125"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "display_label"
	draw_text_transformed(x + 190, y + 125, "" + string(display_label), image_xscale + 1, image_yscale + 1, 0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6F06C703
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31ECE14A
	/// @DnDParent : 6F06C703
	/// @DnDArgument : "var" "hover"
	/// @DnDArgument : "value" "1"
	if(hover == 1)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 5EE423EA
		/// @DnDParent : 31ECE14A
		/// @DnDArgument : "spriteind" "button_hover"
		/// @DnDSaveInfo : "spriteind" "button_hover"
		sprite_index = button_hover;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 66B9608A
	/// @DnDParent : 6F06C703
	else
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1C55E6D6
		/// @DnDParent : 66B9608A
		/// @DnDArgument : "spriteind" "button_default"
		/// @DnDSaveInfo : "spriteind" "button_default"
		sprite_index = button_default;
		image_index = 0;
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 70F12234
	/// @DnDParent : 6F06C703
	draw_self();

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 5E057B97
	/// @DnDParent : 6F06C703
	/// @DnDArgument : "x" "190"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "125"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale_relative" "1"
	/// @DnDArgument : "yscale_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "text" "display_label"
	draw_text_transformed(x + 190, y + 125, "" + string(display_label), image_xscale + 1, image_yscale + 1, 0);
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5034D7F8
/// @DnDDisabled : 1
/// @DnDArgument : "x" "190"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "110"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "display_label"