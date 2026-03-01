//debug
troca_mundo_sons = [snd_troca_mundo3, snd_troca_mundo8]; //snd_troca_mundo2, snd_troca_mundo5, snd_troca_mundo7, 
j = 0;

//iniciando variáveis globais
global.musica_fase = noone;
global.mundo_atual = false;
//debug
global.game_over = false;

//acessar o script generic
scr_generic();
scr_checkpoint();

//função para tocar a trilha sonora de cada fase
function tocar_trilha_sonora()
{
	musicas_qtd = array_length(global.musicas)
	//debug
	show_debug_message(musicas_qtd)
	
	for (i = 0; i < musicas_qtd; i++)
	{
		//se a música do [i] estiver tocando E a música do [i] for igual a da fase
		if ((audio_is_playing(global.musicas[i])) && (global.musicas[i] = global.musica_fase))
		{
			//debug
			show_debug_message(global.musicas[i])
			break;
		}
		else
		{
			audio_stop_sound(global.musicas[i]);
		
			if (!audio_is_playing(global.musica_fase))
			{
				if (global.musica_fase != noone)
				{
					audio_play_sound(global.musica_fase, 1, 1);
				}
				else
				{
					break;
				}
			}
			else
			{
				break;
			}
		}
	}
}

restart_x = 0;
restart_y = 0;

keyboard_set_map(vk_up, ord("W"));