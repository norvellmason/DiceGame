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
	/// @DnDArgument : "x" "500"
	/// @DnDArgument : "y" "100"
	/// @DnDArgument : "xscale" "4"
	/// @DnDArgument : "yscale" "4"
	/// @DnDArgument : "caption" ""GAME OVER!""
	draw_text_transformed(500, 100, string("GAME OVER!") + "", 4, 4, 0);

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
		/// @DnDArgument : "x" "500"
		/// @DnDArgument : "y" "175"
		/// @DnDArgument : "xscale" "4"
		/// @DnDArgument : "yscale" "4"
		/// @DnDArgument : "caption" ""HIGH SCORE!""
		draw_text_transformed(500, 175, string("HIGH SCORE!") + "", 4, 4, 0);
	}
}