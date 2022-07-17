/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 6F8DA5DD
/// @DnDArgument : "var" "all_dice"
all_dice = ds_list_create();

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 632179C0
/// @DnDArgument : "funcName" "add_dice"
/// @DnDArgument : "arg" "dice_to_add"
function add_dice(dice_to_add) 
{
	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 1BB4B0F8
	/// @DnDParent : 632179C0
	/// @DnDArgument : "var" "all_dice"
	/// @DnDArgument : "value" "dice_to_add"
	ds_list_add(all_dice, dice_to_add);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3228D0CC
/// @DnDArgument : "funcName" "reroll_all_dice"
function reroll_all_dice() 
{
	/// @DnDAction : YoYo Games.Data Structures.List_Count
	/// @DnDVersion : 1
	/// @DnDHash : 4BB6DA3B
	/// @DnDParent : 3228D0CC
	/// @DnDArgument : "assignee" "all_dice_count"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "all_dice"
	var all_dice_count = ds_list_size(all_dice);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 76BB4249
	/// @DnDParent : 3228D0CC
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "i < all_dice_count"
	for(var i = 0; i < all_dice_count; i += 1) {
		/// @DnDAction : YoYo Games.Data Structures.List_Get_At
		/// @DnDVersion : 1
		/// @DnDHash : 6FF83FAC
		/// @DnDParent : 76BB4249
		/// @DnDArgument : "assignee" "current_dice"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "var" "all_dice"
		/// @DnDArgument : "index" "i"
		var current_dice = ds_list_find_value(all_dice, i);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 49B07344
		/// @DnDParent : 76BB4249
		/// @DnDArgument : "function" "current_dice.reroll_dice"
		current_dice.reroll_dice();
	}
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4EAD2068
/// @DnDArgument : "funcName" "get_sum"
function get_sum() 
{
	/// @DnDAction : YoYo Games.Data Structures.List_Count
	/// @DnDVersion : 1
	/// @DnDHash : 738137B0
	/// @DnDParent : 4EAD2068
	/// @DnDArgument : "assignee" "dice_count"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "all_dice"
	var dice_count = ds_list_size(all_dice);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 31E2A100
	/// @DnDParent : 4EAD2068
	/// @DnDArgument : "var" "sum"
	/// @DnDArgument : "value" "0"
	var sum = 0;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30083615
	/// @DnDParent : 4EAD2068
	/// @DnDArgument : "var" "i"
	/// @DnDArgument : "value" "0"
	var i = 0;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 74F4227D
	/// @DnDParent : 4EAD2068
	/// @DnDArgument : "times" "dice_count"
	repeat(dice_count)
	{
		/// @DnDAction : YoYo Games.Data Structures.List_Get_At
		/// @DnDVersion : 1
		/// @DnDHash : 435F8D36
		/// @DnDParent : 74F4227D
		/// @DnDArgument : "assignee" "dice"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "var" "all_dice"
		/// @DnDArgument : "index" "i"
		var dice = ds_list_find_value(all_dice, i);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5CCF8B9D
		/// @DnDParent : 74F4227D
		/// @DnDArgument : "expr" "dice.dice_num"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "sum"
		sum += dice.dice_num;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 59755A08
		/// @DnDParent : 74F4227D
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "i"
		i += 1;
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 7C01FDDE
	/// @DnDParent : 4EAD2068
	/// @DnDArgument : "value" "sum"
	return sum;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 601ABFAA
/// @DnDArgument : "funcName" "color_count"
/// @DnDArgument : "arg" "color_str"
function color_count(color_str) 
{
	/// @DnDAction : YoYo Games.Data Structures.List_Count
	/// @DnDVersion : 1
	/// @DnDHash : 713F0025
	/// @DnDParent : 601ABFAA
	/// @DnDArgument : "assignee" "dice_count"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "all_dice"
	var dice_count = ds_list_size(all_dice);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FE79B03
	/// @DnDParent : 601ABFAA
	/// @DnDArgument : "var" "total"
	/// @DnDArgument : "value" "0"
	var total = 0;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3760CEE7
	/// @DnDParent : 601ABFAA
	/// @DnDArgument : "var" "i"
	/// @DnDArgument : "value" "0"
	var i = 0;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 0636DABD
	/// @DnDParent : 601ABFAA
	/// @DnDArgument : "times" "dice_count"
	repeat(dice_count)
	{
		/// @DnDAction : YoYo Games.Data Structures.List_Get_At
		/// @DnDVersion : 1
		/// @DnDHash : 377A08C4
		/// @DnDParent : 0636DABD
		/// @DnDArgument : "assignee" "dice"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "var" "all_dice"
		/// @DnDArgument : "index" "i"
		var dice = ds_list_find_value(all_dice, i);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5100E5D6
		/// @DnDParent : 0636DABD
		/// @DnDArgument : "var" "dice.dice_color"
		/// @DnDArgument : "value" "color_str"
		if(dice.dice_color == color_str)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5F217E95
			/// @DnDParent : 5100E5D6
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "total"
			total += 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B11F9C0
		/// @DnDParent : 0636DABD
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "i"
		i += 1;
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 35D68A3A
	/// @DnDParent : 601ABFAA
	/// @DnDArgument : "value" "total"
	return total;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 365A670D
/// @DnDArgument : "funcName" "color_sum"
/// @DnDArgument : "arg" "color_str"
function color_sum(color_str) 
{
	/// @DnDAction : YoYo Games.Data Structures.List_Count
	/// @DnDVersion : 1
	/// @DnDHash : 042202A5
	/// @DnDParent : 365A670D
	/// @DnDArgument : "assignee" "dice_count"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "all_dice"
	var dice_count = ds_list_size(all_dice);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C37AA78
	/// @DnDParent : 365A670D
	/// @DnDArgument : "var" "sum"
	/// @DnDArgument : "value" "0"
	var sum = 0;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B15255A
	/// @DnDParent : 365A670D
	/// @DnDArgument : "var" "i"
	/// @DnDArgument : "value" "0"
	var i = 0;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 75E489EC
	/// @DnDParent : 365A670D
	/// @DnDArgument : "times" "dice_count"
	repeat(dice_count)
	{
		/// @DnDAction : YoYo Games.Data Structures.List_Get_At
		/// @DnDVersion : 1
		/// @DnDHash : 0635EC43
		/// @DnDParent : 75E489EC
		/// @DnDArgument : "assignee" "dice"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "var" "all_dice"
		/// @DnDArgument : "index" "i"
		var dice = ds_list_find_value(all_dice, i);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 094438DD
		/// @DnDParent : 75E489EC
		/// @DnDArgument : "var" "dice.dice_color"
		/// @DnDArgument : "value" "color_str"
		if(dice.dice_color == color_str)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 72D92897
			/// @DnDParent : 094438DD
			/// @DnDArgument : "expr" "dice.dice_num"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "sum"
			sum += dice.dice_num;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1F2349CF
		/// @DnDParent : 75E489EC
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "i"
		i += 1;
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 52B47147
	/// @DnDParent : 365A670D
	/// @DnDArgument : "value" "sum"
	return sum;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1FC18975
/// @DnDArgument : "funcName" "number_count"
/// @DnDArgument : "arg" "num_to_count"
function number_count(num_to_count) 
{
	/// @DnDAction : YoYo Games.Data Structures.List_Count
	/// @DnDVersion : 1
	/// @DnDHash : 4D8AC807
	/// @DnDParent : 1FC18975
	/// @DnDArgument : "assignee" "dice_count"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "all_dice"
	var dice_count = ds_list_size(all_dice);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 55388B61
	/// @DnDParent : 1FC18975
	/// @DnDArgument : "var" "total"
	/// @DnDArgument : "value" "0"
	var total = 0;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B21AA82
	/// @DnDParent : 1FC18975
	/// @DnDArgument : "var" "i"
	/// @DnDArgument : "value" "0"
	var i = 0;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 286B9FB9
	/// @DnDParent : 1FC18975
	/// @DnDArgument : "times" "dice_count"
	repeat(dice_count)
	{
		/// @DnDAction : YoYo Games.Data Structures.List_Get_At
		/// @DnDVersion : 1
		/// @DnDHash : 16FB66E6
		/// @DnDParent : 286B9FB9
		/// @DnDArgument : "assignee" "dice"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "var" "all_dice"
		/// @DnDArgument : "index" "i"
		var dice = ds_list_find_value(all_dice, i);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7615DB9A
		/// @DnDParent : 286B9FB9
		/// @DnDArgument : "var" "dice.dice_num"
		/// @DnDArgument : "value" "num_to_count"
		if(dice.dice_num == num_to_count)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 78819701
			/// @DnDParent : 7615DB9A
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "total"
			total += 1;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5A2A8828
		/// @DnDParent : 286B9FB9
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "i"
		i += 1;
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 54F950EE
	/// @DnDParent : 1FC18975
	/// @DnDArgument : "value" "total"
	return total;
}