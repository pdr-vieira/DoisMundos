

#region função para trocar de mundo
var _switch_world = keyboard_check_released(vk_enter);

if (_switch_world)
{
	global.mundo_atual = !global.mundo_atual;
}

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

