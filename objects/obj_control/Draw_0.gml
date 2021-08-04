/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 659C241B
/// @DnDArgument : "font" "fnt_score"
/// @DnDSaveInfo : "font" "8ef67430-89b1-4ea5-8789-32f5ec5f09ca"
draw_set_font(fnt_score);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 49C04B7B
/// @DnDArgument : "color" "$FF0000C6"
draw_set_colour($FF0000C6 & $ffffff);
var l49C04B7B_0=($FF0000C6 >> 24);
draw_set_alpha(l49C04B7B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 239DF524
/// @DnDArgument : "x" "16"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "global.player_score"
draw_text(16, 8, string("Score: ") + string(global.player_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 06D04163
/// @DnDArgument : "halign" "fa_right"
draw_set_halign(fa_right);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 211382EA
/// @DnDArgument : "x" "room_width-8"
/// @DnDArgument : "y" "8"
/// @DnDArgument : "caption" ""High Score: ""
/// @DnDArgument : "var" "global.high_score"
draw_text(room_width-8, 8, string("High Score: ") + string(global.high_score));

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 5D2DE5EB
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
/// @DnDVersion : 1
/// @DnDHash : 5FD8F22D
/// @DnDArgument : "x" "(room_width/2)-((global.player_lives-1) * 32)"
/// @DnDArgument : "y" "room_height-48"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDArgument : "number" "global.player_lives"
/// @DnDSaveInfo : "sprite" "daeb87d5-18ab-40d4-9092-dc6a47ea0d5f"
var l5FD8F22D_0 = sprite_get_width(spr_lives);
var l5FD8F22D_1 = 0;
for(var l5FD8F22D_2 = global.player_lives; l5FD8F22D_2 > 0; --l5FD8F22D_2) {
	draw_sprite(spr_lives, 0, (room_width/2)-((global.player_lives-1) * 32) + l5FD8F22D_1, room_height-48);
	l5FD8F22D_1 += l5FD8F22D_0;
}