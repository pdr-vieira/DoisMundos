

//fase atual
global.room_atual = "FASE 3";

//trilha sonora da fase
global.musica_fase = snd_Arcadia;

//define o lugar que o player começa o jogo
if global.checkpoint = false
{
	obj_control.restart_x = 3968;
	obj_control.restart_y = 128;
}

global.game_over = true;