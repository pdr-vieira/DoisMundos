//sala atual
global.room_atual = "FASE 1";

//trilha sonora da fase
global.musica_fase = snd_WaterPrelude;

//define o lugar que o player começa o jogo
if global.checkpoint = false
{
	obj_control.restart_x = 128;
	obj_control.restart_y = 224;
}