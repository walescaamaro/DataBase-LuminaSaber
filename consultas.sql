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

SELECT 
    u.nome,
    q.enunciado,
    d.nome_disc,
    h.status
FROM historico h
INNER JOIN usuario u 
    ON h.cod_usuario = u.cod_usuario
INNER JOIN questao q 
    ON h.cod_quest = q.cod_quest
INNER JOIN disciplina d 
    ON q.cod_disc = d.cod_disc;

-- Consulta com múltiplas condições
SELECT u.nome, d.nome_disc, h.status
FROM historico h
INNER JOIN usuario u 
    ON h.cod_usuario = u.cod_usuario
INNER JOIN questao q 
    ON h.cod_quest = q.cod_quest
INNER JOIN disciplina d 
    ON q.cod_disc = d.cod_disc
WHERE 
    h.status = 'Acertou'
    AND d.nome_disc = 'Matemática';


