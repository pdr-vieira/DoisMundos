/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//passar para o próximo cenário
if (place_meeting(x,y,obj_player))
{
	//pegar a posição da camera
	var _cam_xposition = camera_get_view_x(view_camera[0])
	instance_create_layer(_cam_xposition, 0, "Transicao", obj_transicao_next_stage);
	
	global.checkpoint = false;
}



