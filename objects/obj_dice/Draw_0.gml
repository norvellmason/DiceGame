/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
/// @DnDVersion : 1
/// @DnDHash : 6F95A71B
/// @DnDArgument : "assignee" "new_color"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "color_map"
/// @DnDArgument : "key" "dice_color"
var new_color = ds_map_find_value(color_map, dice_color);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 212DDED6
/// @DnDArgument : "color" "new_color"
/// @DnDArgument : "alpha" "false"
draw_set_colour(new_color & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12435172
/// @DnDArgument : "var" "dice_num"
/// @DnDArgument : "value" "1"
if(dice_num == 1)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 563AD8D9
	/// @DnDParent : 12435172
	/// @DnDArgument : "spriteind" "die_1"
	/// @DnDSaveInfo : "spriteind" "die_1"
	sprite_index = die_1;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0FC958ED
/// @DnDArgument : "var" "dice_num"
/// @DnDArgument : "value" "2"
if(dice_num == 2)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7E8C4186
	/// @DnDParent : 0FC958ED
	/// @DnDArgument : "spriteind" "die_2"
	/// @DnDSaveInfo : "spriteind" "die_2"
	sprite_index = die_2;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 253E2707
/// @DnDArgument : "var" "dice_num"
/// @DnDArgument : "value" "3"
if(dice_num == 3)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 25FAB17C
	/// @DnDParent : 253E2707
	/// @DnDArgument : "spriteind" "die_3"
	/// @DnDSaveInfo : "spriteind" "die_3"
	sprite_index = die_3;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A80716E
/// @DnDArgument : "var" "dice_num"
/// @DnDArgument : "value" "4"
if(dice_num == 4)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 124EF0DE
	/// @DnDParent : 5A80716E
	/// @DnDArgument : "spriteind" "die_4"
	/// @DnDSaveInfo : "spriteind" "die_4"
	sprite_index = die_4;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3166C6C8
/// @DnDArgument : "var" "dice_num"
/// @DnDArgument : "value" "5"
if(dice_num == 5)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 10F63394
	/// @DnDParent : 3166C6C8
	/// @DnDArgument : "spriteind" "die_5"
	/// @DnDSaveInfo : "spriteind" "die_5"
	sprite_index = die_5;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6CAE998B
/// @DnDArgument : "var" "dice_num"
/// @DnDArgument : "value" "6"
if(dice_num == 6)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 3DE00895
	/// @DnDParent : 6CAE998B
	/// @DnDArgument : "spriteind" "die_6"
	/// @DnDSaveInfo : "spriteind" "die_6"
	sprite_index = die_6;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Drawing.Draw_Rectangle
/// @DnDVersion : 1
/// @DnDHash : 1C7671BD
/// @DnDArgument : "x1" "3"
/// @DnDArgument : "x1_relative" "1"
/// @DnDArgument : "y1" "3"
/// @DnDArgument : "y1_relative" "1"
/// @DnDArgument : "x2" "98"
/// @DnDArgument : "x2_relative" "1"
/// @DnDArgument : "y2" "98"
/// @DnDArgument : "y2_relative" "1"
/// @DnDArgument : "fill" "1"
draw_rectangle(x + 3, y + 3, x + 98, y + 98, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 35E080F8
/// @DnDArgument : "alpha" "false"
draw_set_colour($FFFFFFFF & $ffffff);draw_set_alpha(1);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 72CD495B
/// @DnDArgument : "halign" "fa_center"
draw_set_halign(fa_center);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 77D102CD
/// @DnDArgument : "x" "50"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "110"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "dice_color"
draw_text(x + 50, y + 110, string("") + string(dice_color));

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 3FFB7D07
/// @DnDArgument : "xscale" ".65"
/// @DnDArgument : "yscale" ".65"
image_xscale = .65;
image_yscale = .65;

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 5F3DE20A
draw_self();