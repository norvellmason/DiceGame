/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 0C4F3E39
/// @DnDArgument : "soundid" "music"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "music"
var l0C4F3E39_0 = music;
if (!audio_is_playing(l0C4F3E39_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 03190EBD
	/// @DnDParent : 0C4F3E39
	/// @DnDArgument : "soundid" "music"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "music"
	audio_play_sound(music, 0, 1);
}