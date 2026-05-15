-- Update básico
UPDATE usuario
set senha = 'kklu'
Where nome like 'Ana Ferreira';

UPDATE PASTA 
SET nome_pasta = 'Anotações de Biologia' 
WHERE cod_pasta = 39001;

--  Alterar mais de um campo ao mesmo tempo
UPDATE relatorio 
SET total_acertos = 12, 
    percentual_acertos = 100, 
    areas_melhorias = 'Nenhuma' 
WHERE cod_relatorio = 19347;

UPDATE USUARIO 
SET grau_escolar = '3° ano', 
    email = 'ana.ferreira.1234@gmail.com' 
WHERE cod_usuario = 76554;

-- Atualização com condições 
UPDATE estuda 
SET meta = 20, 
    tempo = '03:00:00' 
WHERE cod_usuario = 84721 AND cod_disc = 76326;

UPDATE suporte
SET tipo_problema = 'URGENTE - TÉCNICO'
WHERE (tipo_problema = 'Erros' OR tipo_problema = 'Denúncias');


