/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 11EFA235
/// @DnDArgument : "value" "-1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "player_lives"
global.player_lives += -1;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 18491E67
instance_destroy();

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 31A10891
/// @DnDArgument : "var" "global.player_lives"
/// @DnDArgument : "op" "3"
if(global.player_lives <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7350FA89
	/// @DnDApplyTo : 846ae1f9-0afa-4622-9740-286f59d6b0e1
	/// @DnDParent : 31A10891
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "gameover"
	with(obj_control) {
	gameover = true;
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40FE93E7
	/// @DnDParent : 31A10891
	/// @DnDArgument : "var" "global.player_score"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "global.high_score"
	if(global.player_score > global.high_score)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05880A28
		/// @DnDParent : 40FE93E7
		/// @DnDArgument : "expr" "global.player_score"
		/// @DnDArgument : "var" "global.high_score"
		global.high_score = global.player_score;
	}

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 37D0A946
	/// @DnDParent : 31A10891
	/// @DnDArgument : "room" "game_over_room"
	/// @DnDSaveInfo : "room" "8135dec7-ca75-4f7b-b236-7fbe8eb7dbfa"
	room_goto(game_over_room);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 75A2849E
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 64146116
	/// @DnDParent : 75A2849E
	/// @DnDArgument : "xpos" "xstart"
	/// @DnDArgument : "ypos" "xstart"
	/// @DnDArgument : "objectid" "obj_player"
	/// @DnDArgument : "layer" ""Layer_Player""
	/// @DnDSaveInfo : "objectid" "392a1993-0686-4b3c-8c7e-093f332a5417"
	instance_create_layer(xstart, xstart, "Layer_Player", obj_player);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37DE53AC
	/// @DnDApplyTo : 392a1993-0686-4b3c-8c7e-093f332a5417
	/// @DnDParent : 75A2849E
	/// @DnDArgument : "expr" "xstart"
	/// @DnDArgument : "var" "x"
	with(obj_player) {
	x = xstart;
	
	}
}