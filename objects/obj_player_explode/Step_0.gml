/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

if (image_index > image_number - 1)
{
	image_alpha = 0;
	image_speed = 0;
	
	delay_restart_room--;
}

if (delay_restart_room <= 0)
{
	room_restart();
}