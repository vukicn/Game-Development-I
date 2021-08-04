/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 52681203
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "392a1993-0686-4b3c-8c7e-093f332a5417"
var l52681203_0 = false;
l52681203_0 = instance_exists(obj_player);
if(l52681203_0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4CC4EE84
	/// @DnDParent : 52681203
	/// @DnDArgument : "x" "obj_player.x"
	/// @DnDArgument : "y" "obj_player.y"
	direction = point_direction(x, y, obj_player.x, obj_player.y);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 408AB99F
	/// @DnDParent : 52681203
	/// @DnDArgument : "speed" "spd"
	speed = spd;
}

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 386D4751
/// @DnDArgument : "angle" "direction"
image_angle = direction;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0361D5DB
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 305A36C7
	/// @DnDApplyTo : 846ae1f9-0afa-4622-9740-286f59d6b0e1
	/// @DnDParent : 0361D5DB
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.player_score"
	with(obj_control) {
	global.player_score += 10;
	
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 141C4CD6
	/// @DnDParent : 0361D5DB
	instance_destroy();
}