

#region função para trocar de mundo
var _switch_world = keyboard_check_released(ord("W"));

//debug
//var _teste_sfx_troca_mundo = keyboard_check_released(ord("K"));
//if(_teste_sfx_troca_mundo)
//{
//	if j < array_length(troca_mundo_sons)-1
//	{
//		j++;
//	}
//	else
//	{
//		j = 0;
//	}
	
//	show_debug_message(troca_mundo_sons[j])
//}

if (_switch_world)
{
	//tocar efeito sonoro
	var _sfx_switch_world = troca_mundo_sons[j];
	
	if (audio_is_playing(_sfx_switch_world))
	{
		audio_stop_sound(_sfx_switch_world);
		audio_play_sound(_sfx_switch_world, 2, 0);
	}
	else
	{
		audio_play_sound(_sfx_switch_world, 2, 0);
	}
	
	//troca o som --> caso queira deixar mais de um efeito
	if j < array_length(troca_mundo_sons)-1
	{
		j++;
	}
	else
	{
		j = 0;
	}
	
	//debug
	//show_debug_message(troca_mundo_sons[j])
	
	//troca o mundo
	global.mundo_atual = !global.mundo_atual;
}

//configura para aparecerem e funcionarem apenas as layers corretas da fase (do mundo atual)
if (global.mundo_atual = false) 
{
	if(layer_exists("Mundo_A2")) layer_set_visible("Mundo_A2", true);
	if(layer_exists("Mundo_B2")) layer_set_visible("Mundo_B2", false);
	
	if(layer_exists("Mundo_A3")) layer_set_visible("Mundo_A3", true);
	if(layer_exists("Mundo_B3")) layer_set_visible("Mundo_B3", false);
	
	if(layer_exists("Background_Mundo_A")) layer_set_visible("Background_Mundo_A", true);
	if(layer_exists("Background_Mundo_B")) layer_set_visible("Background_Mundo_B", false);

	if(layer_exists("Mundo_A")) instance_activate_layer("Mundo_A");
	if(layer_exists("Mundo_A2")) instance_activate_layer("Mundo_A2");
	
	if(layer_exists("Mundo_B")) instance_deactivate_layer("Mundo_B");
	if(layer_exists("Mundo_B2")) instance_deactivate_layer("Mundo_B2");
} 
else 
{
	if(layer_exists("Mundo_A2")) layer_set_visible("Mundo_A2", false);
	if(layer_exists("Mundo_B2")) layer_set_visible("Mundo_B2", true);
	
	if(layer_exists("Mundo_A3")) layer_set_visible("Mundo_A3", false);
	if(layer_exists("Mundo_B3")) layer_set_visible("Mundo_B3", true);
	
	if(layer_exists("Background_Mundo_A")) layer_set_visible("Background_Mundo_A", false);
	if(layer_exists("Background_Mundo_B")) layer_set_visible("Background_Mundo_B", true);
	
	if(layer_exists("Mundo_B")) instance_activate_layer("Mundo_B");
	if(layer_exists("Mundo_B2")) instance_activate_layer("Mundo_B2");
	
	if(layer_exists("Mundo_A")) instance_deactivate_layer("Mundo_A");
	if(layer_exists("Mundo_A2")) instance_deactivate_layer("Mundo_A2");
}
#endregion

#region definir tela cheia (ou sair da tela cheia) ao apertar o botão
var _full_screen = keyboard_check_released(vk_f11);
var _esc =  keyboard_check_released(vk_escape);

//presionar esc para sair da tela cheia 
if (window_get_fullscreen() = 1)
{
	if (_esc)
	{
		window_set_fullscreen(0);
	}
}

if (_full_screen)
{
	if (window_get_fullscreen() = 0)
	{
		window_set_fullscreen(1);
	}
	else
	{
		window_set_fullscreen(0);
	}
}
#endregion

#region botão restart
var _restart = keyboard_check_released(ord("R"));
if (_restart)
{
	room_restart();
}
#endregion

