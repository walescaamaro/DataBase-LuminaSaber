insert into usuario (cod_usuario, nome, email, senha, grau_escolar, data_nasc, tipo_usuario) values 
(76554, 'Ana Ferreira', 'anaferreira@gmail.com', 'hylu', '2° ano', '2019-08-09', 'aluno'),
(43221, 'Pedro Torres', 'pedrotorres@gmail.com', 'ophj', '8° ano', '2013-07-10', 'aluno'),
(99530, 'Walesca Amaro', 'walesca@gmail.com', 'maqb', '9° ano', '2009-06-07', 'administrador'),
(10267, 'Rayssa Priscila', 'rayssa@gmail.com', 'iikjr', '9° ano', '2009-03-29', 'administrador');

insert into disciplina (cod_disc, nome_disc) values
(82211, 'Matemática'),
(44457, 'Português'),
(90021, 'Ciências'),
(57713, 'Inglês'),
(76326, 'História'),
(98743, 'Geografia'),
(34512, 'Artes');

insert into conteudo (cod_conteudo, cod_disc, descricao) values
(82211, 54411, 'Operações com Fração'),
(44457, 11356, 'Regência'),
(90021, 98334, 'Genética'),
(57713, 12298, 'Simple Past');

insert into questao (cod_quest, cod_disc, enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_correta, dificuldade) values
(11154, 82211, 'Quanto é 8 + 7?', '13', '14', '15', '16', 'c', 'fácil'),
(26667, 44457, 'Qual palavra está escrita corretamente?', 'Excessão', 'Exceção', 'Excesssão', 'Exeção', 'b', 'médio'),
(96514, 90021, 'Qual é o maior país da América do Sul?', 'Argentina', 'Chile', 'Brasil', 'Peru', 'c', 'fácil'),
(13579, 57713, 'Quem foi o primeiro presidente do Brasil?', 'Getúlio Vargas', 'Deodoro da Fonseca', 'Juscelino Kubitschek', 'Dom Pedro II', 'b', 'médio');

insert into historico (cod_resposta, cod_usuario, cod_quest, data_resposta, status) values
(121, 76554, 11154, '2024-07-14', 'Acertou'),
(156, 43221, 26667, '2025-12-30', 'Acertou'),
(458, 76554, 96514, '2025-06-09', 'Acertou'),
(239, 43221, 13579, '2023-09-01', 'Errou');

insert into pasta (cod_pasta, cod_usuario, data_criacao, nome_pasta) values
(33441, 76554, '2023-12-06', 'minha_anot'),
(11667, 43221, '2025-05-13', 'anot_mat'),
(39001, 76554, '2026-02-10', 'anot_mendel'),
(12785, 43221, '2023-05-16', 'english_anot');
