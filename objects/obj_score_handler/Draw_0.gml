/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 2A1C9F62
/// @DnDArgument : "font" "Font_small"
/// @DnDSaveInfo : "font" "Font_small"
draw_set_font(Font_small);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 3F79D72D
draw_set_colour($FFFFFFFF & $ffffff);
var l3F79D72D_0=($FFFFFFFF >> 24);
draw_set_alpha(l3F79D72D_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2E605CC4
/// @DnDArgument : "x" "80"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "caption" ""Current: ""
/// @DnDArgument : "text" "score"
draw_text_transformed(x + 80, y + 0, string("Current: ") + string(score), image_xscale + 1, image_yscale + 1, 0);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 662972C4
/// @DnDArgument : "x" "80"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "50"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "caption" ""High: ""
/// @DnDArgument : "text" "global.highest_score"
draw_text_transformed(x + 80, y + 50, string("High: ") + string(global.highest_score), image_xscale + 1, image_yscale + 1, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00A73E6B
/// @DnDArgument : "var" "lives"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "3"
if(lives >= 3)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5F0A7190
	/// @DnDParent : 00A73E6B
	/// @DnDArgument : "x" "-20"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "200"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "heart"
	/// @DnDSaveInfo : "sprite" "heart"
	draw_sprite(heart, 0, x + -20, y + 200);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6793CC31
/// @DnDArgument : "var" "lives"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "2"
if(lives >= 2)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7540AA00
	/// @DnDParent : 6793CC31
	/// @DnDArgument : "x" "60"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "200"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "heart"
	/// @DnDSaveInfo : "sprite" "heart"
	draw_sprite(heart, 0, x + 60, y + 200);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D642BC2
/// @DnDArgument : "var" "lives"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1"
if(lives >= 1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 4A8C4282
	/// @DnDParent : 2D642BC2
	/// @DnDArgument : "x" "140"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "200"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "heart"
	/// @DnDSaveInfo : "sprite" "heart"
	draw_sprite(heart, 0, x + 140, y + 200);
}