/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7EE13F5A
/// @DnDArgument : "funcName" "reroll_dice"
function reroll_dice() 
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 35EB648E
	/// @DnDParent : 7EE13F5A
	/// @DnDArgument : "var" "new_value"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "6"
	var new_value = floor(random_range(1, 6 + 1));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58367901
	/// @DnDParent : 7EE13F5A
	/// @DnDArgument : "expr" "new_value"
	/// @DnDArgument : "var" "dice_num"
	dice_num = new_value;
}