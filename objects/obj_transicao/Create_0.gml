/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//debug
//tipo_transicao = "fade_in";

if audio_is_playing(snd_transicao1)
{
	audio_stop_sound(snd_transicao1);
	audio_play_sound(snd_transicao1,2,0);
}
else
{
	audio_play_sound(snd_transicao1,2,0);
}