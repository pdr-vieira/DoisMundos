global.room_atual = "FASE 2";

//cria a transição de fase
var _cam_xposition = camera_get_view_x(view_camera[0])
var _transicao = instance_create_layer(_cam_xposition, 0, "Transicao", obj_transicao);
_transicao.tipo_transicao = "fade_in";

//mouse
window_set_cursor(cr_none);
cursor_sprite = spr_mouse;