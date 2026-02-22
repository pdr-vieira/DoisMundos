
//movimento
var _chao = place_meeting(x, y+1, obj_colisao);
var _espinho = place_meeting(x, y+1, obj_espinho);

//debug
chao = _chao

var _jump = keyboard_check_pressed(ord("W"));
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


//verificando colisão com o espinho
if(_espinho)
{
	instance_destroy();
	room_restart();
}





