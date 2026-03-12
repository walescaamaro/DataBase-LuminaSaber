CREATE TABLE PASTA (
  cod_pasta INTEGER PRIMARY KEY,
  cod_usuario INTEGER REFERENCES USUARIO(cod_usuario),
  data_criacao DATE NOT NULL,
  nome_pasta VARCHAR(100) NOT NULL);

CREATE TABLE disciplina (
    cod_disc INTEGER NOT NULL,
    nome_disc VARCHAR(50) NOT NULL, 
    PRIMARY KEY (cod_disc));

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
    FOREIGN KEY (cod_resposta) REFERENCES resposta(cod_resposta));
