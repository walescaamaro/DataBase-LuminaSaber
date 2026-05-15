-- Uso básico do DELETE:
DELETE FROM anotacao WHERE cod_usuario = 59384;

DELETE FROM suporte WHERE cod_suporte = 11456;

--  Exclusão com condições: 
DELETE FROM suporte WHERE tipo_problema = 'Dúvidas' AND cod_suporte < 30000;

DELETE FROM relatorio WHERE percentual_acertos < 50;

-- Exclusões que façam sentido no sistema:

/*O objetivo é remover registros de sessões de estudo que não foram produtivas, como casos em que o aluno estabeleceu uma meta alta, mas não teve um bom desempenho, mantendo o 
banco de dados focado em relatórios que reflitam o progresso real e a eficácia do aprendizado */
DELETE FROM relatorio WHERE meta > 10 AND percentual_acertos <= 50;

/*A categoria "Outros" muitas vezes são testes ou mensagens irrelevantes que o suporte precisa limpar para manter o foco no que é importante.*/

DELETE FROM suporte WHERE tipo_problema = 'Outros';



