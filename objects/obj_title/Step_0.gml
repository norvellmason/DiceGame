/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 07B93DE2
/// @DnDArgument : "soundid" "music"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "soundid" "music"
var l07B93DE2_0 = music;
if (!audio_is_playing(l07B93DE2_0))
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 18FA3787
	/// @DnDParent : 07B93DE2
	/// @DnDArgument : "soundid" "music"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "music"
	audio_play_sound(music, 0, 1);
}