/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor


//movimento
var _chao = place_meeting(x, y+1, obj_colisao);
//debug
chao = _chao

var _jump = keyboard_check_pressed(vk_space);
var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));

//resetar a quantidade de pulos
if(_chao)
{
	max_jump = qtd_jump;
}
else
{
	//aplica a gavidade
	velv += gravidade;
}

//movimentação
velh = (_right - _left) * max_velh;


//pulando
if (_jump && max_jump > 0)
{
	velv = -max_velv/1.5;
	max_jump--;
}

//limitando a velocidade máxima da queda
velv = clamp(velv, -max_velv, max_velv);






