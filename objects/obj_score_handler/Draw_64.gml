/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2561A1EF
/// @DnDArgument : "var" "lives"
/// @DnDArgument : "op" "3"
if(lives <= 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 30FF5C13
	/// @DnDParent : 2561A1EF
	/// @DnDArgument : "x" "700"
	/// @DnDArgument : "y" "300"
	/// @DnDArgument : "caption" ""GAME OVER!""
	draw_text_transformed(700, 300, string("GAME OVER!") + "", 1, 1, 0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39132F47
	/// @DnDParent : 2561A1EF
	/// @DnDArgument : "var" "score"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "global.highest_score"
	if(score >= global.highest_score)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 721A1D5B
		/// @DnDParent : 39132F47
		/// @DnDArgument : "x" "700"
		/// @DnDArgument : "y" "500"
		/// @DnDArgument : "caption" ""HIGH SCORE!""
		draw_text_transformed(700, 500, string("HIGH SCORE!") + "", 1, 1, 0);
	}
}