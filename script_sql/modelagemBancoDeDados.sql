CREATE DATABASE got;
USE got;
CREATE TABLE personagens (
    id_personagem INTEGER PRIMARY KEY,
    nome_personagem VARCHAR(255),
    ator VARCHAR(255),
    quantidade_aparicao INTEGER,
    primeiro_ano INT4,
    ultimo_ano INT4,
    id_familias VARCHAR(255),
    FOREIGN KEY (id_familias)
        REFERENCES casas (id_familias)
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
    id_familias INT PRIMARY KEY,
    nome_familias VARCHAR(255),
    regiao VARCHAR(200),
    id_personagem INT,
    id_episodio INT,
    FOREIGN KEY (id_personagem)
        REFERENCES personagens (id_personagem),
    FOREIGN KEY (id_episodio)
        REFERENCES episodios (id_episodio)
);