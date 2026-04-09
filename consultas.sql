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

-- Consultas com JOIN
SELECT u.nome, an.cod_pasta
FROM usuario u
INNER JOIN anotacao an 
    ON u.cod_usuario = an.cod_usuario


