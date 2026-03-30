insert into usuario (cod_usuario, nome, email, senha, grau_escolar, data_nasc, tipo_usuario) values 
(76554, 'Ana Ferreira', 'anaferreira@gmail.com', 'hylu', '2° ano', '2019-08-09', 'aluno'),
(43221, 'Pedro Torres', 'pedrotorres@gmail.com', 'ophj', '8° ano', '2013-07-10', 'aluno'),
(99530, 'Walesca Amaro', 'walesca@gmail.com', 'maqb', '9° ano', '2009-06-07', 'administrador'),
(10267, 'Rayssa Priscila', 'rayssa@gmail.com', 'iikjr', '9° ano', '2009-03-29', 'administrador'),
(84721, 'Lucas Andrade', 'lucas@gmail.com', 'abc1', '7° ano', '2012-04-15', 'aluno'),
(59384, 'Marina Souza', 'marina@gmail.com', 'def2', '6° ano', '2013-09-22', 'aluno'),
(21097, 'Carlos Henrique', 'carlos@gmail.com', 'ghi3', '9° ano', '2009-11-30', 'administrador'),
(77652, 'Juliana Lima', 'juliana@gmail.com', 'jkl4', '8° ano', '2011-01-08', 'aluno'),
(43890, 'Bruno Martins', 'bruno@gmail.com', 'mno5', '9° ano', '2018-06-19', 'administrador'),
(65928, 'Fernanda Alves', 'fernanda@gmail.com', 'fna1', '8° ano', '2011-07-25', 'aluno');

insert into disciplina (cod_disc, nome_disc) values
(82211, 'Matemática'),
(44457, 'Português'),
(90021, 'Ciências'),
(57713, 'Inglês'),
(76326, 'História'),
(98743, 'Geografia'),
(34512, 'Artes');

insert into conteudo (cod_conteudo, cod_disc, descricao) values
(54411, 82211, 'Operações Básicas'),
(11356, 44457, 'Países da América do Sul'),
(98334, 90021, 'História do Brasil'),
(12298, 57713, 'Simple Past'),
(66542, 82211, 'Porcentagem'),
(77891, 82211, 'Equações do 1º grau'),
(33478, 44457, 'Interpretação de texto'),
(91234, 44457, 'Ortografia'),
(55667, 90021, 'Sistema solar'),
(22345, 57713, 'Verbo to be');

insert into questao (cod_quest, cod_disc, enunciado, alternativa_a, alternativa_b, alternativa_c, alternativa_d, alternativa_correta, dificuldade) values
(11154, 82211, 'Quanto é 8 + 7?', '13', '14', '15', '16', 'c', 'fácil'),
(26667, 44457, 'Qual palavra está escrita corretamente?', 'Excessão', 'Exceção', 'Excesssão', 'Exeção', 'b', 'médio'),
(96514, 98743, 'Qual é o maior país da América do Sul?', 'Argentina', 'Chile', 'Brasil', 'Peru', 'c', 'fácil'),
(13579, 76326, 'Quem foi o primeiro presidente do Brasil?', 'Getúlio Vargas', 'Deodoro da Fonseca', 'Juscelino Kubitschek', 'Dom Pedro II', 'b', 'médio'),
(22468, 82211, 'Quanto é 50% de 200?', '50', '100', '150', '200', 'b', 'fácil'),
(33791, 82211, 'Resolva: x + 3 = 7', '2', '3', '4', '5', 'c', 'fácil'),
(44902, 44457, 'Qual alternativa apresenta erro de ortografia?', 'Casa', 'Mesa', 'Caza', 'Livro', 'c', 'fácil'),
(55813, 44457, 'Leia: "O menino correu." Isso é um exemplo de:', 'Frase nominal', 'Frase verbal', 'Interjeição', 'Pergunta', 'b', 'médio'),
(66924, 90021, 'Qual planeta é o mais próximo do Sol?', 'Terra', 'Marte', 'Mercúrio', 'Júpiter', 'c', 'fácil'),
(77035, 57713, 'Complete: I ___ a student.', 'am', 'is', 'are', 'be', 'a', 'fácil');

insert into historico (cod_resposta, cod_usuario, cod_quest, data_resposta, status) values
(121, 76554, 11154, '2024-07-14', 'Acertou'),
(156, 43221, 26667, '2025-12-30', 'Acertou'),
(458, 76554, 96514, '2025-06-09', 'Acertou'),
(239, 43221, 13579, '2023-09-01', 'Errou'),
(310, 84721, 22468, '2025-01-10', 'Acertou'),
(421, 59384, 33791, '2025-02-15', 'Acertou'),
(532, 77652, 44902, '2025-03-20', 'Errou'),
(643, 65928, 55813, '2025-04-05', 'Acertou'),
(754, 76554, 66924, '2025-05-18', 'Errou'),
(865, 43221, 77035, '2025-06-22', 'Acertou');

insert into pasta (cod_pasta, cod_usuario, data_criacao, nome_pasta) values
(33441, 76554, '2023-12-06', 'minha_anot'),
(11667, 43221, '2025-05-13', 'anot_mat'),
(39001, 76554, '2026-02-10', 'anot_mendel'),
(12785, 43221, '2023-05-16', 'english_anot'),
(55234, 84721, '2024-03-12', 'anot_portugues'),
(78129, 59384, '2025-07-21', 'resumos_ciencias'),
(66478, 77652, '2024-11-05', 'ingles_basico'),
(99821, 65928, '2025-09-14', 'historia_brasil'),
(44567, 84721, '2024-06-30', 'exercicios_mat'),
(73210, 59384, '2025-01-18', 'geografia_estudos');

insert into suporte (cod_suporte, email, tipo_problema, descricao) values
(11456, 'anaferreira@gmail.com', 'Dúvidas', 'Não entendi como funciona o sistema de metas'),
(78231, 'pedrotorres@gmail.com', 'Erros', 'A página de exercícios não carrega'),
(45987, 'lucas@gmail.com', 'Dúvidas', 'Como selecionar disciplinas para estudar?'),
(90321, 'marina@gmail.com', 'Outros', 'Sugestão de adicionar mais exercícios'),
(66745, 'juliana@gmail.com', 'Erros', 'Erro ao salvar anotação'),
(23890, 'fernanda@gmail.com', 'Dúvidas', 'Como ver meu relatório de desempenho?'),
(55129, 'anaferreira@gmail.com', 'Denúncias', 'Questão com alternativa errada'),
(87412, 'pedrotorres@gmail.com', 'Outros', 'Melhorar organização das questões'),
(39658, 'lucas@gmail.com', 'Erros', 'Sistema travando durante exercício'),
(72014, 'marina@gmail.com', 'Denúncias', 'Questão repetida várias vezes');

insert into relatorio (cod_relatorio, meta, total_acertos, percentual_acertos, pontos_fortes, areas_melhorias) values
(84521, 10, 8, 80, 'Identificação de frações equivalentes', 'Resolução de operações com frações'),
(19347, 15, 9, 60, 'Reconhecimento de regência verbal', 'Aplicação correta em frases'),
(67230, 20, 17, 85, 'Uso do Simple Past em frases afirmativas', 'Formação de frases negativas'),
(50891, 12, 6, 50, 'Identificação de planetas do sistema solar', 'Compreensão dos movimentos da Terra'),
(73164, 10, 10, 100, 'Cálculo de porcentagem simples', 'Nenhuma'),
(26489, 18, 11, 61, 'Resolução de equações simples', 'Isolamento de incógnitas'),
(99012, 15, 14, 93, 'Interpretação de ideias principais em textos', 'Identificação de inferências'),
(41736, 20, 13, 65, 'Identificação do sistema solar', 'Diferença entre planetas'),
(55820, 10, 4, 40, 'Reconhecimento de tempos verbais em inglês', 'Uso correto do verbo to be'),
(80673, 12, 9, 75, 'Aplicação de regras ortográficas', 'Uso correto de acentuação');

insert into possui (cod_quest, cod_resposta) values
(11154, 121),
(26667, 156),
(96514, 458),
(13579, 239),
(22468, 310),
(33791, 421),
(44902, 532),
(55813, 643),
(66924, 754),
(77035, 865);

INSERT INTO anotacao (cod_anota, cod_pasta, cod_usuario, titulo, texto_anota, data_anota) VALUES
(1001, 33441, 76554, 'Resumo de matemática', 'Anotei os principais conceitos de frações e porcentagem.', '2024-01-10'),
(1002, 11667, 43221, 'Equações básicas', 'Resolver exercícios de primeiro grau para a prova.', '2025-05-20'),
(1003, 39001, 76554, 'Leis de Mendel', 'Primeira lei: segregação dos fatores hereditários.', '2026-02-15'),
(1004, 12785, 43221, 'Vocabulary', 'Estudar verbos irregulares em inglês.', '2023-05-20'),
(1005, 55234, 84721, 'Análise sintática', 'Separar sujeito, verbo e predicado nas frases.', '2024-03-18'),
(1006, 78129, 59384, 'Sistema solar', 'Resumo sobre planetas rochosos e gasosos.', '2025-07-25'),
(1007, 66478, 77652, 'Simple Present', 'Usar do e does em frases negativas.', '2024-11-09'),
(1008, 99821, 65928, 'Brasil Colônia', 'Resumo sobre capitanias hereditárias.', '2025-09-18'),
(1009, 44567, 84721, 'Tabuada avançada', 'Praticar multiplicação e divisão.', '2024-07-02'),
(1010, 73210, 59384, 'Relevo brasileiro', 'Principais planaltos e planícies do Brasil.', '2025-01-22');
