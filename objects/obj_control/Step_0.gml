
#region função para trocar de mundo
var _switch_world = keyboard_check_released(vk_enter);

if (_switch_world)
{
	global.mundo_atual = !global.mundo_atual;
}

if (global.mundo_atual = false) 
{
	layer_set_visible("Mundo_A2", true);
	layer_set_visible("Mundo_B2", false);
	instance_activate_layer("Mundo_A");
	instance_activate_layer("Mundo_A2");
	instance_deactivate_layer("Mundo_B");
	instance_deactivate_layer("Mundo_B2");
} 
else 
{
	layer_set_visible("Mundo_A2", false);
	layer_set_visible("Mundo_B2", true);
	instance_activate_layer("Mundo_B");
	instance_activate_layer("Mundo_B2");
	instance_deactivate_layer("Mundo_A");
	instance_deactivate_layer("Mundo_A2");
}
#endregion

#region definir tela cheia (ou sair da tela cheia) ao apertar o botão
var _full_screen = keyboard_check_released(vk_f11);

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