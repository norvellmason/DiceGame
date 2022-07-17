/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4DDFB8C8
/// @DnDArgument : "var" "start_time_remaining"
/// @DnDArgument : "op" "2"
if(start_time_remaining > 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03903493
	/// @DnDParent : 4DDFB8C8
	/// @DnDArgument : "expr" "-1 * (delta_time / 1000000)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "start_time_remaining"
	start_time_remaining += -1 * (delta_time / 1000000);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 57E787B8
else
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 79CAFC34
	/// @DnDParent : 57E787B8
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "game_has_started"
	global.game_has_started = true;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50247493
	/// @DnDParent : 57E787B8
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
	/// @DnDParent : 57E787B8
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
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 75728BA7
		/// @DnDParent : 5A4F4B25
		/// @DnDArgument : "var" "handled_score"
		/// @DnDArgument : "value" "false"
		if(handled_score == false)
		{
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 060ED175
			/// @DnDApplyTo : {obj_score_handler}
			/// @DnDParent : 75728BA7
			/// @DnDArgument : "function" "handle_score"
			/// @DnDArgument : "arg" "correct_return"
			with(obj_score_handler) {
				handle_score(correct_return);
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2E6E70F6
			/// @DnDParent : 75728BA7
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "handled_score"
			handled_score = true;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57D051D2
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
			/// @DnDApplyTo : {obj_dice_manager}
			/// @DnDParent : 49B07742
			/// @DnDArgument : "function" "reroll_all_dice"
			with(obj_dice_manager) {
				reroll_all_dice();
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
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 45BD2E96
			/// @DnDParent : 49B07742
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "handled_score"
			handled_score = false;
		}
	}
}