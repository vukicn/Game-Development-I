/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 03C734DC
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 44D059DE
draw_set_colour($FFFFFFFF & $ffffff);
var l44D059DE_0=($FFFFFFFF >> 24);
draw_set_alpha(l44D059DE_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 6F727A58
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "room_height/2"
/// @DnDArgument : "caption" ""GAME OVER""
draw_text(room_width/2, room_height/2, string("GAME OVER") + "");

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 5F7F2EAF
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "room_height/2+46"
/// @DnDArgument : "caption" ""Press SPACE to restart""
draw_text(room_width/2, room_height/2+46, string("Press SPACE to restart") + "");

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 7F5C6F5D
var l7F5C6F5D_0;
l7F5C6F5D_0 = keyboard_check_pressed(vk_space);
if (l7F5C6F5D_0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 556EC7ED
	/// @DnDParent : 7F5C6F5D
	/// @DnDArgument : "room" "gm_room"
	/// @DnDSaveInfo : "room" "c8e23edd-32f2-4983-9231-3373456d7388"
	room_goto(gm_room);
}