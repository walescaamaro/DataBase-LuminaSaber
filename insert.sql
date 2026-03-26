insert into usuario (cod_usuario, nome, email, senha, grau_escolar, data_nasc, tipo_usuario) values 
(76554, 'Ana Ferreira', 'anaferreira@gmail.com', 'hylu', '2° ano', '2019-08-09', 'aluno'),
(43221, 'Pedro Torres', 'pedrotorres@gmail.com', 'ophj', '8° ano', '2013-07-10', 'aluno'),
(99530, 'Walesca Amaro', 'walesca@gmail.com', 'maqb', '9° ano', '2009-06-07', 'administrador')
(10267, 'Rayssa Priscila', 'rayssa@gmail.com', 'iikjr', '9° ano', '2009-03-29', 'administrador')

insert into disciplina (cod_disc, nome_disc) values
(82211, 'Matemática')
(44457, 'Português')
(90021, 'Ciências')
(57713, 'Inglês')
(76326, 'História')
(98743, 'Geografia')
(34512, 'Artes')

insert into conteudo (cod_conteudo, cod_disc, descricao) values
(82211, 54411, 'Operações com Fração')
(44457, 11356, 'Regência')
(90021, 98334, 'Genética')
(57713, 12298, 'Simple Past')

insert into questao (cod_quest, cod_disc, enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_correta)
