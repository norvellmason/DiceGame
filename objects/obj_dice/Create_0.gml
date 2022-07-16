/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 25EEC39E
/// @DnDArgument : "var" "possible_colors"
possible_colors = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 47E4B55E
/// @DnDInput : 3
/// @DnDArgument : "var" "possible_colors"
/// @DnDArgument : "value" ""Red""
/// @DnDArgument : "value_1" ""Blue""
/// @DnDArgument : "value_2" ""Green""
ds_list_add(possible_colors, "Red", "Blue", "Green");

/// @DnDAction : YoYo Games.Data Structures.Create_Map
/// @DnDVersion : 1
/// @DnDHash : 183BDB45
/// @DnDArgument : "var" "color_map"
color_map = ds_map_create();

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 5C18C28A
/// @DnDInput : 3
/// @DnDArgument : "var" "color_map"
/// @DnDArgument : "key" ""Red""
/// @DnDArgument : "value" "c_red"
/// @DnDArgument : "key_1" ""Blue""
/// @DnDArgument : "value_1" "c_blue"
/// @DnDArgument : "key_2" ""Green""
/// @DnDArgument : "value_2" "c_green"
ds_map_replace(color_map, "Red", c_red);
ds_map_replace(color_map, "Blue", c_blue);
ds_map_replace(color_map, "Green", c_green);

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

	/// @DnDAction : YoYo Games.Data Structures.List_Count
	/// @DnDVersion : 1
	/// @DnDHash : 4F105B16
	/// @DnDParent : 7EE13F5A
	/// @DnDArgument : "assignee" "color_count"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "possible_colors"
	var color_count = ds_list_size(possible_colors);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 758CDAC7
	/// @DnDParent : 7EE13F5A
	/// @DnDArgument : "var" "temp_index"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "color_count - 1"
	var temp_index = floor(random_range(0, color_count - 1 + 1));

	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 5B488774
	/// @DnDParent : 7EE13F5A
	/// @DnDArgument : "assignee" "dice_color"
	/// @DnDArgument : "var" "possible_colors"
	/// @DnDArgument : "index" "temp_index"
	dice_color = ds_list_find_value(possible_colors, temp_index);
}