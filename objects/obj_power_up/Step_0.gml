/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if (place_meeting(x,y,obj_player))
{
	with(obj_player)
	{
		max_jump++;
	}
	instance_destroy();
}