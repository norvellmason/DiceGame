/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3142A6B9
/// @DnDArgument : "var" "lives"
/// @DnDArgument : "op" "3"
if(lives <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5128B330
	/// @DnDParent : 3142A6B9
	/// @DnDArgument : "expr" "-1 * (delta_time / 1000000)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "lose_timer_remaining"
	lose_timer_remaining += -1 * (delta_time / 1000000);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 184AC388
	/// @DnDParent : 3142A6B9
	/// @DnDArgument : "var" "lose_timer_remaining"
	/// @DnDArgument : "op" "3"
	if(lose_timer_remaining <= 0)
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 12946AB3
		/// @DnDParent : 184AC388
		/// @DnDArgument : "room" "Room2"
		/// @DnDSaveInfo : "room" "Room2"
		room_goto(Room2);
	}
}