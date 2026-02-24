

global.room_atual = "FASE 1";

//cria a transição do início da fase
var _cam_xposition = camera_get_view_x(view_camera[0])
var _transicao = instance_create_layer(_cam_xposition, 0, "Transicao", obj_transicao);
_transicao.tipo_transicao = "fade_in";

//mouse
window_set_cursor(cr_none);
cursor_sprite = spr_mouse;

//trilha sonora da fase
global.musica_fase = snd_Aquarium;




//if (audio_is_playing(global.musicas))
//{
//	audio_stop_sound(global.musicas);
//	audio_play
//}