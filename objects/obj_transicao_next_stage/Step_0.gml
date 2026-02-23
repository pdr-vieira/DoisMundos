/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

//define qual sprite usar com base no tipo de transição
if (tipo_transicao = "fade_in")
{
	sprite_index = spr_transicao_fin;
}
else
{
	sprite_index = spr_transicao_fout;
}

//destroi a transição quando a animação acabar
if (image_index > image_number-1)
{
	instance_destroy();
}