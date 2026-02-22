/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

var _switch_world = keyboard_check_released(vk_enter);

if (_switch_world)
{
	global.mundo_atual = !global.mundo_atual;
}

if (global.mundo_atual = false) 
{
	//layer_set_visible("Mundo_A", true);
	layer_set_visible("Mundo_A2", true);
	//layer_set_visible("Mundo_B", false);
	layer_set_visible("Mundo_B2", false);
	instance_activate_layer("Mundo_A");
	instance_activate_layer("Mundo_A2");
	instance_deactivate_layer("Mundo_B");
	instance_deactivate_layer("Mundo_B2");
} 
else 
{
	//layer_set_visible("Mundo_A", false);
	layer_set_visible("Mundo_A2", false);
	//layer_set_visible("Mundo_B", true);
	layer_set_visible("Mundo_B2", true);
	instance_activate_layer("Mundo_B");
	instance_activate_layer("Mundo_B2");
	instance_deactivate_layer("Mundo_A");
	instance_deactivate_layer("Mundo_A2");

}