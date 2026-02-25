/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
global.mundo_atual = false;

tocar_trilha_sonora();

//criar o player
if (room != rm_menu && !instance_exists(obj_player))
{
	instance_create_layer(restart_x, restart_y, "Player", obj_player)
}

//efeito de transição de fase
if(global.checkpoint = false)
{
	//cria a transição do início da fase
	var _cam_xposition = camera_get_view_x(view_camera[0])
	var _transicao = instance_create_layer(_cam_xposition, 0, "Transicao", obj_transicao);
	_transicao.tipo_transicao = "fade_in";
}


//desenhar a sprite obrigado quando o jogador zerar o jogo
if (global.game_over = true && room = rm_menu)
{
	//debug
	show_debug_message("ESCREVE");
	instance_create_layer(room_width/2, 200, layer, obj_obrigado);
	global.game_over = false;
}
//debug
//show_debug_message(global.game_over);


//mouse
window_set_cursor(cr_none);
cursor_sprite = spr_mouse;


