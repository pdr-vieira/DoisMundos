//debug
//room_goto_next();

global.room_atual = "FASE TUTORIAL";

//cria a transição do início da fase
var _cam_xposition = camera_get_view_x(view_camera[0])
var _transicao = instance_create_layer(_cam_xposition, 0, "Transicao", obj_transicao);
_transicao.tipo_transicao = "fade_in";

//define o lugar que o player começa o jogo
if global.checkpoint = false
{
	obj_control.restart_x = 192;
	obj_control.restart_y = 576;
}

//mouse
window_set_cursor(cr_none);
cursor_sprite = spr_mouse;