/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 51578490
/// @DnDArgument : "xpos" "random_range(0,1280)"
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "random_range(0,720) "
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_enemy"
/// @DnDArgument : "layer" ""Layer_Player""
/// @DnDSaveInfo : "objectid" "7bd8c74d-e0f1-4474-970e-6b45bc12aa79"
instance_create_layer(x + random_range(0,1280), y + random_range(0,720) , "Layer_Player", obj_enemy);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 6386B51F
/// @DnDArgument : "steps" "random(150)"
alarm_set(0, random(150));