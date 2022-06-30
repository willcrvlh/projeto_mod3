CREATE DATABASE got;
USE got;

CREATE TABLE personagens (
	id_personagem INT PRIMARY KEY,
    nome_personagem VARCHAR(255),
    id_familias INT,
	ator VARCHAR(255),
    quantidade_aparicao INT,
	primeiro_ano INT,
	ultimo_ano INT,
     FOREIGN KEY (id_familias)
        REFERENCES familias (id_familias)
);

CREATE TABLE episodios (
    id_episodio INTEGER PRIMARY KEY,
    id_personagem INT,
    temporada INT,
    episodio INT,
    titulo VARCHAR(200),
    estreia VARCHAR(15),
    nota DECIMAL,
    votos INT,
    sinopse VARCHAR(255),
    roterista_1 VARCHAR(200),
    roterista_2 VARCHAR(200),
    star VARCHAR(100),
    users_reviews INTEGER,
    critics_reviews INTEGER,
    audiencia_USA INTEGER,
    duracao INTEGER,
    diretor VARCHAR(100),
    FOREIGN KEY (id_personagem)
        REFERENCES personagens (id_personagem)
);

CREATE TABLE casas (
    id_casas INT PRIMARY KEY,
    nome_casas VARCHAR(255),
    regiao VARCHAR(200),
    id_personagem INT,
    id_episodio INT
);

CREATE TABLE familias(
	id_familias INT PRIMARY KEY,
	familias VARCHAR(255)
);