/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//tocar o sfx de power up
if (!audio_is_playing(snd_power_up1))
{
	audio_play_sound(snd_power_up1,1,0);
}
else
{
	audio_stop_sound(snd_power_up1);
	audio_play_sound(snd_power_up1,1,0);
}
	
instance_create_layer(x,y,layer,obj_powerup_explode);