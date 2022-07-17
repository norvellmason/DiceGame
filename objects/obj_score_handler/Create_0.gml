/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6A6BC7D1
/// @DnDArgument : "expr" "3"
/// @DnDArgument : "var" "lives"
lives = 3;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6BB1E1A2
/// @DnDArgument : "var" "score"
score = 0;

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1E529667
/// @DnDArgument : "funcName" "handle_score"
/// @DnDArgument : "arg" "win"
function handle_score(win) 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62240FC7
	/// @DnDParent : 1E529667
	/// @DnDArgument : "var" "win"
	/// @DnDArgument : "value" "true"
	if(win == true)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4EDB2FAC
		/// @DnDParent : 62240FC7
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "score"
		score += 1;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 101FF85F
		/// @DnDParent : 62240FC7
		/// @DnDArgument : "expr" "score > global.highest_score"
		if(score > global.highest_score)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 081964AC
			/// @DnDParent : 101FF85F
			/// @DnDArgument : "expr" "score"
			/// @DnDArgument : "var" "global.highest_score"
			global.highest_score = score;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4E3F88CA
	/// @DnDParent : 1E529667
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1728811F
		/// @DnDParent : 4E3F88CA
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "lives"
		lives += -1;
	}
}