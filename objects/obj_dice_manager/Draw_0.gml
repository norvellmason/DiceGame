/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 662E4BFB
draw_set_colour($FFFFFFFF & $ffffff);
var l662E4BFB_0=($FFFFFFFF >> 24);
draw_set_alpha(l662E4BFB_0 / $ff);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0B03A9CE
/// @DnDArgument : "var" "sum"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "get_sum"
var sum = get_sum();

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 47EB279B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Sum: ""
/// @DnDArgument : "var" "sum"
draw_text(x + 0, y + 0, string("Sum: ") + string(sum));

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 6D3C05B1
/// @DnDArgument : "var" "count_red"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "color_count"
/// @DnDArgument : "arg" ""Red""
var count_red = color_count("Red");

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 0A41D605
/// @DnDArgument : "var" "count_blue"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "color_count"
/// @DnDArgument : "arg" ""Blue""
var count_blue = color_count("Blue");

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 555DD7DC
/// @DnDArgument : "var" "count_green"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "color_count"
/// @DnDArgument : "arg" ""Green""
var count_green = color_count("Green");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 08C4E909
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "30"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Count Red: ""
/// @DnDArgument : "var" "count_red"
draw_text(x + 0, y + 30, string("Count Red: ") + string(count_red));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 07777DD4
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "60"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Count Blue: ""
/// @DnDArgument : "var" "count_blue"
draw_text(x + 0, y + 60, string("Count Blue: ") + string(count_blue));

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 2D08D556
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "90"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Count Green: ""
/// @DnDArgument : "var" "count_green"
draw_text(x + 0, y + 90, string("Count Green: ") + string(count_green));

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 52C95169
/// @DnDArgument : "var" "count_one"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "number_count"
/// @DnDArgument : "arg" "1"
var count_one = number_count(1);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 323F869F
/// @DnDArgument : "var" "count_two"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "number_count"
/// @DnDArgument : "arg" "2"
var count_two = number_count(2);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 1C203AA1
/// @DnDArgument : "var" "count_three"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "number_count"
/// @DnDArgument : "arg" "3"
var count_three = number_count(3);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 50DC1FBD
/// @DnDArgument : "var" "count_four"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "number_count"
/// @DnDArgument : "arg" "4"
var count_four = number_count(4);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 678D9E50
/// @DnDArgument : "var" "count_five"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "number_count"
/// @DnDArgument : "arg" "5"
var count_five = number_count(5);

/// @DnDAction : YoYo Games.Common.Function_Call
/// @DnDVersion : 1
/// @DnDHash : 255C1DCA
/// @DnDArgument : "var" "count_six"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "function" "number_count"
/// @DnDArgument : "arg" "6"
var count_six = number_count(6);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 37B7E3BB
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "120"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Count One: ""
/// @DnDArgument : "var" "count_one"
draw_text(x + 0, y + 120, string("Count One: ") + string(count_one));