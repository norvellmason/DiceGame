/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 6C1F86E0
/// @DnDArgument : "var" "tracking_types"
tracking_types = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 20F87260
/// @DnDInput : 3
/// @DnDArgument : "var" "tracking_types"
/// @DnDArgument : "value" ""color""
/// @DnDArgument : "value_1" ""number""
/// @DnDArgument : "value_2" ""sum""
ds_list_add(tracking_types, "color", "number", "sum");

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 19C384FC
/// @DnDArgument : "var" "evaluator_types"
evaluator_types = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 46620ED8
/// @DnDInput : 6
/// @DnDArgument : "var" "evaluator_types"
/// @DnDArgument : "value" ""less than""
/// @DnDArgument : "value_1" ""greater than""
/// @DnDArgument : "value_2" ""equal""
/// @DnDArgument : "value_3" ""not equal""
/// @DnDArgument : "value_4" ""even""
/// @DnDArgument : "value_5" ""odd""
ds_list_add(evaluator_types, "less than", "greater than", "equal", "not equal", "even", "odd");

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 28914B3E
/// @DnDArgument : "var" "count_or_total_list"
count_or_total_list = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.List_Add
/// @DnDVersion : 1
/// @DnDHash : 7D4C1398
/// @DnDInput : 2
/// @DnDArgument : "var" "count_or_total_list"
/// @DnDArgument : "value" ""count""
/// @DnDArgument : "value_1" ""total""
ds_list_add(count_or_total_list, "count", "total");

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 706459A3
/// @DnDArgument : "funcName" "get_random_value"
/// @DnDArgument : "arg" "list"
function get_random_value(list) 
{
	/// @DnDAction : YoYo Games.Data Structures.List_Count
	/// @DnDVersion : 1
	/// @DnDHash : 73913100
	/// @DnDParent : 706459A3
	/// @DnDArgument : "assignee" "count"
	/// @DnDArgument : "assignee_temp" "1"
	var count = ds_list_size(list);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 04635552
	/// @DnDParent : 706459A3
	/// @DnDArgument : "var" "index"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "count - 1"
	var index = floor(random_range(0, count - 1 + 1));

	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 172384EE
	/// @DnDParent : 706459A3
	/// @DnDArgument : "assignee" "return_value"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "index" "index"
	var return_value = ds_list_find_value(list, index);

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 3AAB7FFA
	/// @DnDParent : 706459A3
	/// @DnDArgument : "value" "return_value"
	return return_value;
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0653DEE3
/// @DnDArgument : "funcName" "randomize_button"
function randomize_button() 
{
	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 47A4696C
	/// @DnDParent : 0653DEE3
	/// @DnDArgument : "var" "num_to_track"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "1"
	/// @DnDArgument : "max" "6"
	num_to_track = floor(random_range(1, 6 + 1));

	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 3AD4A8CF
	/// @DnDInput : 3
	/// @DnDParent : 0653DEE3
	/// @DnDArgument : "var" "color_to_track"
	/// @DnDArgument : "option" ""Red""
	/// @DnDArgument : "option_1" ""Blue""
	/// @DnDArgument : "option_2" ""Green""
	color_to_track = choose("Red", "Blue", "Green");

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 105B2504
	/// @DnDParent : 0653DEE3
	/// @DnDArgument : "var" "count_or_total"
	/// @DnDArgument : "function" "get_random_value"
	/// @DnDArgument : "arg" "count_or_total_list"
	count_or_total = get_random_value(count_or_total_list);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5A6006F5
	/// @DnDParent : 0653DEE3
	/// @DnDArgument : "var" "evaluator_type"
	/// @DnDArgument : "function" "get_random_value"
	/// @DnDArgument : "arg" "evaluator_types"
	evaluator_type = get_random_value(evaluator_types);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 640BA0A4
	/// @DnDParent : 0653DEE3
	/// @DnDArgument : "var" "evaluator_value"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "min" "5"
	/// @DnDArgument : "max" "25"
	evaluator_value = floor(random_range(5, 25 + 1));

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 5D55F178
	/// @DnDParent : 0653DEE3
	/// @DnDArgument : "var" "tracking_type"
	/// @DnDArgument : "function" "get_random_value"
	/// @DnDArgument : "arg" "tracking_types"
	tracking_type = get_random_value(tracking_types);
}

/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 48BFD554
randomize();

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6A4F5BA0
/// @DnDArgument : "function" "randomize_button"
randomize_button();

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E63E977
/// @DnDArgument : "var" "new_button"
/// @DnDArgument : "value" "self"
var new_button = self;

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0DC9428D
/// @DnDApplyTo : {obj_button_manager}
/// @DnDArgument : "function" "add_button"
/// @DnDArgument : "arg" "new_button"
with(obj_button_manager) {
	add_button(new_button);
}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0DD5DCBD
/// @DnDArgument : "funcName" "button_should_be_pressed"
function button_should_be_pressed() 
{
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 266500E6
	/// @DnDParent : 0DD5DCBD
	/// @DnDArgument : "var" "calculated_value"
	/// @DnDArgument : "value" "0"
	var calculated_value = 0;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 1AC5C72B
	/// @DnDParent : 0DD5DCBD
	/// @DnDArgument : "expr" "tracking_type"
	var l1AC5C72B_0 = tracking_type;
	switch(l1AC5C72B_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 0007B7B4
		/// @DnDParent : 1AC5C72B
		/// @DnDArgument : "const" ""sum""
		case "sum":
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 0D3FDEFE
			/// @DnDApplyTo : {obj_dice_manager}
			/// @DnDParent : 0007B7B4
			/// @DnDArgument : "var" "calculated_value"
			/// @DnDArgument : "function" "get_sum"
			with(obj_dice_manager) {
				calculated_value = get_sum();
			}
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6194FF89
		/// @DnDParent : 1AC5C72B
		/// @DnDArgument : "const" ""color""
		case "color":
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1D66EECE
			/// @DnDParent : 6194FF89
			/// @DnDArgument : "var" "count_or_total"
			/// @DnDArgument : "value" ""count""
			if(count_or_total == "count")
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 26433133
				/// @DnDApplyTo : {obj_dice_manager}
				/// @DnDParent : 1D66EECE
				/// @DnDArgument : "var" "calculated_value"
				/// @DnDArgument : "function" "color_count"
				/// @DnDArgument : "arg" "color_to_track"
				with(obj_dice_manager) {
					calculated_value = color_count(color_to_track);
				}
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 3D104942
			/// @DnDParent : 6194FF89
			else
			{
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 7374EE32
				/// @DnDApplyTo : {obj_dice_manager}
				/// @DnDParent : 3D104942
				/// @DnDArgument : "var" "calculated_value"
				/// @DnDArgument : "function" "color_sum"
				/// @DnDArgument : "arg" "color_to_track"
				with(obj_dice_manager) {
					calculated_value = color_sum(color_to_track);
				}
			}
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 29CB10E9
		/// @DnDParent : 1AC5C72B
		/// @DnDArgument : "const" ""number""
		case "number":
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 7E87FD84
			/// @DnDApplyTo : {obj_dice_manager}
			/// @DnDParent : 29CB10E9
			/// @DnDArgument : "var" "calculated_value"
			/// @DnDArgument : "function" "number_count"
			/// @DnDArgument : "arg" "num_to_track"
			with(obj_dice_manager) {
				calculated_value = number_count(num_to_track);
			}
			break;
	}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DB6645B
	/// @DnDParent : 0DD5DCBD
	/// @DnDArgument : "var" "should_be_pressed"
	/// @DnDArgument : "value" "false"
	var should_be_pressed = false;

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 45912843
	/// @DnDParent : 0DD5DCBD
	/// @DnDArgument : "expr" "evaluator_type"
	var l45912843_0 = evaluator_type;
	switch(l45912843_0)
	{
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 16B6EDC8
		/// @DnDParent : 45912843
		/// @DnDArgument : "const" ""even""
		case "even":
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6E28621A
			/// @DnDParent : 16B6EDC8
			/// @DnDArgument : "expr" "(calculated_value % 2) == 0"
			/// @DnDArgument : "var" "should_be_pressed"
			should_be_pressed = (calculated_value % 2) == 0;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 5D56CF71
		/// @DnDParent : 45912843
		/// @DnDArgument : "const" ""odd""
		case "odd":
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2611DD74
			/// @DnDParent : 5D56CF71
			/// @DnDArgument : "expr" "(calculated_value % 2) == 1"
			/// @DnDArgument : "var" "should_be_pressed"
			should_be_pressed = (calculated_value % 2) == 1;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 020CA79B
		/// @DnDParent : 45912843
		/// @DnDArgument : "const" ""less than""
		case "less than":
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 25796F1A
			/// @DnDParent : 020CA79B
			/// @DnDArgument : "expr" "calculated_value < evaluator_value"
			/// @DnDArgument : "var" "should_be_pressed"
			should_be_pressed = calculated_value < evaluator_value;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 222E5CFD
		/// @DnDParent : 45912843
		/// @DnDArgument : "const" ""greater than""
		case "greater than":
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3CA3F6DC
			/// @DnDParent : 222E5CFD
			/// @DnDArgument : "expr" "calculated_value > evaluator_value"
			/// @DnDArgument : "var" "should_be_pressed"
			should_be_pressed = calculated_value > evaluator_value;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 67031CE3
		/// @DnDParent : 45912843
		/// @DnDArgument : "const" ""equal""
		case "equal":
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6714E271
			/// @DnDParent : 67031CE3
			/// @DnDArgument : "expr" "calculated_value == evaluator_value"
			/// @DnDArgument : "var" "should_be_pressed"
			should_be_pressed = calculated_value == evaluator_value;
			break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6978692E
		/// @DnDParent : 45912843
		/// @DnDArgument : "const" ""not equal""
		case "not equal":
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 216C72B7
			/// @DnDParent : 6978692E
			/// @DnDArgument : "expr" "calculated_value != evaluator_value"
			/// @DnDArgument : "var" "should_be_pressed"
			should_be_pressed = calculated_value != evaluator_value;
			break;
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 1D2C8B26
	/// @DnDParent : 0DD5DCBD
	/// @DnDArgument : "value" "calculated_value"
	return calculated_value;
}