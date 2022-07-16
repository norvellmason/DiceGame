/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1E4C7481
/// @DnDArgument : "expr" "-1 * (delta_time / 1000000)"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "time_remaining"
time_remaining += -1 * (delta_time / 1000000);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A4F4B25
/// @DnDArgument : "var" "time_remaining"
/// @DnDArgument : "op" "3"
if(time_remaining <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4983524E
	/// @DnDParent : 5A4F4B25
	/// @DnDArgument : "expr" "5"
	/// @DnDArgument : "var" "time_remaining"
	time_remaining = 5;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 100597F3
	/// @DnDApplyTo : {obj_dice}
	/// @DnDParent : 5A4F4B25
	/// @DnDArgument : "function" "reroll_dice"
	with(obj_dice) {
		reroll_dice();
	}
}