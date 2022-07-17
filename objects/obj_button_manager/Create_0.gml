/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 15237B87
/// @DnDArgument : "var" "all_buttons"
all_buttons = ds_list_create();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6F1DF10D
/// @DnDArgument : "funcName" "add_button"
/// @DnDArgument : "arg" "new_button"
function add_button(new_button) 
{
	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 0555E27A
	/// @DnDParent : 6F1DF10D
	/// @DnDArgument : "var" "all_buttons"
	/// @DnDArgument : "value" "new_button"
	ds_list_add(all_buttons, new_button);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6FE5B071
/// @DnDArgument : "funcName" "randomize_buttons"
function randomize_buttons() 
{
	/// @DnDAction : YoYo Games.Data Structures.List_Count
	/// @DnDVersion : 1
	/// @DnDHash : 2C46BB3F
	/// @DnDParent : 6FE5B071
	/// @DnDArgument : "assignee" "all_buttons_count"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "all_buttons"
	var all_buttons_count = ds_list_size(all_buttons);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 01C1D07E
	/// @DnDParent : 6FE5B071
	/// @DnDArgument : "var" "i"
	/// @DnDArgument : "value" "0"
	var i = 0;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 38EDF999
	/// @DnDParent : 6FE5B071
	/// @DnDArgument : "times" "all_buttons_count"
	repeat(all_buttons_count)
	{
		/// @DnDAction : YoYo Games.Data Structures.List_Get_At
		/// @DnDVersion : 1
		/// @DnDHash : 7A5B63BF
		/// @DnDParent : 38EDF999
		/// @DnDArgument : "assignee" "selected_button"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "var" "all_buttons"
		/// @DnDArgument : "index" "i"
		var selected_button = ds_list_find_value(all_buttons, i);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 11A632FD
		/// @DnDParent : 38EDF999
		/// @DnDArgument : "function" "selected_button.randomize_button"
		selected_button.randomize_button();
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6AC12218
		/// @DnDParent : 38EDF999
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "i"
		i += 1;
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4128530D
/// @DnDArgument : "funcName" "buttons_are_correct"
function buttons_are_correct() 
{
	/// @DnDAction : YoYo Games.Data Structures.List_Count
	/// @DnDVersion : 1
	/// @DnDHash : 0EC3A4A5
	/// @DnDParent : 4128530D
	/// @DnDArgument : "assignee" "all_buttons_count"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "all_buttons"
	var all_buttons_count = ds_list_size(all_buttons);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D9041B4
	/// @DnDParent : 4128530D
	/// @DnDArgument : "var" "all_buttons_correct"
	/// @DnDArgument : "value" "true"
	var all_buttons_correct = true;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3BAA340A
	/// @DnDParent : 4128530D
	/// @DnDArgument : "var" "i"
	/// @DnDArgument : "value" "0"
	var i = 0;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 7E95004C
	/// @DnDParent : 4128530D
	/// @DnDArgument : "times" "all_buttons_count"
	repeat(all_buttons_count)
	{
		/// @DnDAction : YoYo Games.Data Structures.List_Get_At
		/// @DnDVersion : 1
		/// @DnDHash : 607C6CE9
		/// @DnDParent : 7E95004C
		/// @DnDArgument : "assignee" "selected_button"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "var" "all_buttons"
		/// @DnDArgument : "index" "i"
		var selected_button = ds_list_find_value(all_buttons, i);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 43E08BE8
		/// @DnDParent : 7E95004C
		/// @DnDArgument : "var" "correct"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "function" "selected_button.button_is_correct"
		var correct = selected_button.button_is_correct();
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 645EC325
		/// @DnDParent : 7E95004C
		/// @DnDArgument : "var" "correct"
		/// @DnDArgument : "value" "false"
		if(correct == false)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 728F5BE3
			/// @DnDParent : 645EC325
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "all_buttons_correct"
			all_buttons_correct = false;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 14BC0A6D
		/// @DnDParent : 7E95004C
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "i"
		i += 1;
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 133D0579
	/// @DnDParent : 4128530D
	/// @DnDArgument : "value" "all_buttons_correct"
	return all_buttons_correct;
}