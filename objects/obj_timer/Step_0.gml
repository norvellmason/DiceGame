/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 50247493
/// @DnDArgument : "var" "time_remaining"
/// @DnDArgument : "op" "2"
if(time_remaining > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E4C7481
	/// @DnDParent : 50247493
	/// @DnDArgument : "expr" "-1 * (delta_time / 1000000)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "time_remaining"
	time_remaining += -1 * (delta_time / 1000000);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A4F4B25
/// @DnDArgument : "var" "time_remaining"
/// @DnDArgument : "op" "3"
if(time_remaining <= 0)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1C38B640
	/// @DnDApplyTo : {obj_button_manager}
	/// @DnDParent : 5A4F4B25
	/// @DnDArgument : "var" "correct_return"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "buttons_are_correct"
	with(obj_button_manager) {
		var correct_return = buttons_are_correct();
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 57D051D2
	/// @DnDBreak : 1

	/// @DnDParent : 5A4F4B25
	/// @DnDArgument : "expr" "correct_return"
	/// @DnDArgument : "var" "buttons_correct"
	buttons_correct = correct_return;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4983524E
	/// @DnDParent : 5A4F4B25
	/// @DnDArgument : "var" "time_remaining"
	time_remaining = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65B013B6
	/// @DnDParent : 5A4F4B25
	/// @DnDArgument : "expr" "-1 * (delta_time / 1000000)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "reset_time_remaining"
	reset_time_remaining += -1 * (delta_time / 1000000);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 20B834FF
	/// @DnDParent : 5A4F4B25
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "is_resetting"
	is_resetting = true;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49B07742
	/// @DnDParent : 5A4F4B25
	/// @DnDArgument : "var" "reset_time_remaining"
	/// @DnDArgument : "op" "3"
	if(reset_time_remaining <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 100597F3
		/// @DnDApplyTo : {obj_dice}
		/// @DnDParent : 49B07742
		/// @DnDArgument : "function" "reroll_dice"
		with(obj_dice) {
			reroll_dice();
		}
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 1BC44709
		/// @DnDApplyTo : {obj_button_manager}
		/// @DnDParent : 49B07742
		/// @DnDArgument : "function" "randomize_buttons"
		with(obj_button_manager) {
			randomize_buttons();
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 014CE3BE
		/// @DnDParent : 49B07742
		/// @DnDArgument : "expr" "reset_time"
		/// @DnDArgument : "var" "reset_time_remaining"
		reset_time_remaining = reset_time;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3521D7AA
		/// @DnDParent : 49B07742
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "is_resetting"
		is_resetting = false;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 04FEEEC9
		/// @DnDParent : 49B07742
		/// @DnDArgument : "expr" "level_time"
		/// @DnDArgument : "var" "time_remaining"
		time_remaining = level_time;
	}
}