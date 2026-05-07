CREATE TYPE tipo_usuario AS ENUM ('administrador', 'aluno');

CREATE TABLE USUARIO (
	cod_usuario INTEGER PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	email VARCHAR(100) NOT NULL,
	senha VARCHAR(20) UNIQUE NOT NULL,
	grau_escolar VARCHAR(70),
	data_nasc DATE NOT NULL,
	tipo tipo_usuario NOT NULL);

ALTER TABLE USUARIO
ADD CONSTRAINT check_grau_escolar_aluno
CHECK (
    (tipo = 'aluno' AND grau_escolar IS NOT NULL) OR 
    (tipo = 'administrador')
);

CREATE TABLE PASTA (
  cod_pasta INTEGER PRIMARY KEY,
  cod_usuario INTEGER REFERENCES USUARIO(cod_usuario),
  data_criacao DATE NOT NULL,
  nome_pasta VARCHAR(100) NOT NULL);

CREATE TABLE disciplina (
    cod_disc INTEGER NOT NULL,
    nome_disc VARCHAR(50) NOT NULL, 
    PRIMARY KEY (cod_disc));

 CREATE TABLE suporte (
    cod_suporte INTEGER PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    tipo_problema VARCHAR(40) NOT NULL,
    descricao TEXT NOT NULL
    );

CREATE TABLE relatorio (
    cod_relatorio INTEGER PRIMARY KEY,
    meta INTEGER NOT NULL,
    total_acertos INTEGER NOT NULL,
    percentual_acertos INTEGER NOT NULL,
    pontos_fortes VARCHAR(100) NOT NULL,
    areas_melhorias VARCHAR(100) NOT NULL
    );
 
 CREATE TABLE questao (
	cod_quest INTEGER PRIMARY KEY,
    cod_disc INTEGER NOT NULL,
    enunciado VARCHAR(700) NOT NULL,
    alternativa_A VARCHAR(100) NOT NULL,
    alternativa_B VARCHAR(100) NOT NULL,
    alternativa_C VARCHAR(100) NOT NULL,
    alternativa_D VARCHAR(100) NOT NULL,
    alternativa_correta CHAR(1) NOT NULL,
    dificuldade VARCHAR(20) NOT NULL,
    FOREIGN KEY (cod_disc) REFERENCES disciplina(cod_disc));
 
  CREATE TABLE historico (
    cod_resposta INTEGER PRIMARY KEY,
    cod_usuario INTEGER NOT NULL,
    cod_quest INTEGER NOT NULL,
    data_resposta DATE NOT NULL,
    status VARCHAR(20) NOT NULL,
    FOREIGN KEY (cod_usuario) REFERENCES usuario(cod_usuario),
    FOREIGN KEY (cod_quest) REFERENCES questao(cod_quest)
    );
  
  CREATE TABLE conteudo (
    cod_conteudo INTEGER NOT NULL,
    cod_disc INTEGER NOT NULL,
    descricao VARCHAR(70) NOT NULL,
    PRIMARY KEY (cod_conteudo),
    FOREIGN KEY (cod_disc) REFERENCES disciplina(cod_disc));

CREATE TABLE estuda (
    cod_usuario INTEGER NOT NULL,
    cod_disc INTEGER NOT NULL,
    meta INTEGER NOT NULL,
    tempo TIME NOT NULL,
    PRIMARY KEY (cod_usuario, cod_disc),
    FOREIGN KEY (cod_usuario) REFERENCES usuario(cod_usuario),
    FOREIGN KEY (cod_disc) REFERENCES disciplina(cod_disc));

CREATE TABLE contem (
    cod_pasta INTEGER NOT NULL,
    cod_resposta INTEGER NOT NULL,
    PRIMARY KEY (cod_pasta, cod_resposta),
    FOREIGN KEY (cod_pasta) REFERENCES pasta(cod_pasta),
    FOREIGN KEY (cod_resposta) REFERENCES historico(cod_resposta));
    
CREATE TABLE anotacao (
    cod_anota INTEGER PRIMARY KEY,
    cod_pasta INTEGER NOT NULL,
    cod_usuario INTEGER NOT NULL,
    titulo VARCHAR(100) NOT NULL,
    texto_anota TEXT NOT NULL,
    data_anota DATE NOT NULL,
    FOREIGN KEY (cod_pasta) REFERENCES pasta(cod_pasta),
    FOREIGN KEY (cod_usuario) REFERENCES usuario(cod_usuario)
    );

CREATE TABLE possui (
    cod_quest INTEGER,
    cod_resposta INTEGER,
    PRIMARY KEY (cod_quest, cod_resposta),
    FOREIGN KEY (cod_quest) REFERENCES questao(cod_quest),
    FOREIGN KEY (cod_resposta) REFERENCES historico(cod_resposta)
    );
