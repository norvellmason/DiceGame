/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6442B2AD
/// @DnDArgument : "expr" "!is_pressed"
/// @DnDArgument : "var" "is_pressed"
is_pressed = !is_pressed;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 63DECC64
/// @DnDArgument : "soundid" "Sound3"
/// @DnDSaveInfo : "soundid" "Sound3"
audio_play_sound(Sound3, 0, 0);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44570A6C
/// @DnDDisabled : 1
/// @DnDArgument : "var" "is_pressed"


/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1871E99C
/// @DnDDisabled : 1
/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 6312CE84
/// @DnDDisabled : 1
/// @DnDParent : 1871E99C
/// @DnDArgument : "spriteind" "button_depressed"
/// @DnDSaveInfo : "spriteind" "button_depressed"

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 662DFD7C
/// @DnDDisabled : 1
/// @DnDArgument : "spriteind" "button_default"
/// @DnDSaveInfo : "spriteind" "button_default"