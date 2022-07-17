/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7902EE0D
/// @DnDArgument : "expr" "is_pressed"
if(is_pressed)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 31041092
	/// @DnDParent : 7902EE0D
	/// @DnDArgument : "spriteind" "button_pressed"
	/// @DnDSaveInfo : "spriteind" "button_pressed"
	sprite_index = button_pressed;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 75A9909D
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 6777DE42
	/// @DnDParent : 75A9909D
	/// @DnDArgument : "spriteind" "button_unpressed"
	/// @DnDSaveInfo : "spriteind" "button_unpressed"
	sprite_index = button_unpressed;
	image_index = 0;
}

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
/// @DnDArgument : "expr" "" " + evaluator_type"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "display_label"
display_label += " " + evaluator_type;

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
		/// @DnDArgument : "var" "ev_val_str"
		/// @DnDArgument : "value" "evaluator_value"
		ev_val_str = string(evaluator_value);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 100B8432
		/// @DnDParent : 34B01005
		/// @DnDArgument : "expr" "" " + ev_val_str"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "display_label"
		display_label += " " + ev_val_str;
	}
}

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 6EE80A06
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6AC1ED36
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "70"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "display_label"
draw_text(x + 0, y + 70, string("") + string(display_label));

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 6F06426B
draw_self();