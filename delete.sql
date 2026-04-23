-- Uso básico do DELETE:
DELETE FROM anotacao WHERE cod_usuario = 59384;

DELETE FROM suporte WHERE cod_suporte = 11456;

--  Exclusão com condições: 
DELETE FROM suporte WHERE tipo_problema = 'Dúvidas' AND cod_suporte < 30000;

DELETE FROM relatorio WHERE percentual_acertos < 50;

-- Exclusões que façam sentido no sistema:

