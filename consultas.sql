-- Consultas básicas 
select nome_disc as "Nome da disciplina"
from disciplina;

select * from usuario;

-- Consultas com WHERE
select enunciado, dificuldade from questao
where dificuldade = 'fácil'

select meta from relatorio
where meta > 10;

select cod_usuario, nome from usuario
where nome like 'A%';

-- Ordenação dos dados 
select cod_usuario, nome from usuario
order by nome;

select cod_usuario, nome from usuario
order by nome DESC;
