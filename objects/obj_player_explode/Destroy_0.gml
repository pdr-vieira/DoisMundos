/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//pegar a posição da camera
var _cam_xposition = camera_get_view_x(view_camera[0])

//desenhar a transição na tela
instance_create_layer(_cam_xposition, 0, "Transicao", obj_transicao_morte);

