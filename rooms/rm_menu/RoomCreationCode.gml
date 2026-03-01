//debug
//room_goto_next();

//trilha sonora da fase
audio_stop_all();
global.musica_fase = noone;
global.room_atual = "MENU";

//define checkpoint como false
global.checkpoint = false


//agradecer se tiver zerado o jogo
//debug
//global.game_over = true;

//criar o obj_control
if (!instance_exists(obj_control))
{
	instance_create_layer(0, 0, "Control", obj_control);
}

//cria a transição do início da fase
var _cam_xposition = camera_get_view_x(view_camera[0])
var _transicao = instance_create_layer(_cam_xposition, 0, "Transicao", obj_transicao);
_transicao.tipo_transicao = "fade_in";

//mouse
window_set_cursor(cr_none);
cursor_sprite = spr_mouse;

