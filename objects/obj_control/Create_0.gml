
//iniciando variáveis globais
global.musica_fase = noone;
global.mundo_atual = false;

//acessar o script generic
scr_generic();
scr_checkpoint();

//função para tocar a trilha sonora de cada fase
function tocar_trilha_sonora()
{
	musicas_qtd = array_length(global.musicas)

	for (i = 0; i < musicas_qtd; i+=1)
	{
		if ((audio_is_playing(global.musicas[i])) && (global.musicas[i] = global.musica_fase))
		{
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