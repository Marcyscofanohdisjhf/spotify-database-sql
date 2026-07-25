-- Criar o banco de dados (caso ainda não tenha criado)
CREATE DATABASE IF NOT EXISTS spotify_db;
USE spotify_db;

-- 1. Tabela de Planos
CREATE TABLE planos (
                        id_plano INT AUTO_INCREMENT PRIMARY KEY,
                        nome VARCHAR(50) NOT NULL,
                        preco DECIMAL(10, 2) NOT NULL
);

-- 2. Tabela de Usuários
CREATE TABLE usuarios (
                          id_usuario INT AUTO_INCREMENT PRIMARY KEY,
                          nome VARCHAR(100) NOT NULL,
                          email VARCHAR(100) UNIQUE NOT NULL,
                          data_cadastro DATETIME DEFAULT CURRENT_TIMESTAMP,
                          id_plano INT NOT NULL,
                          FOREIGN KEY (id_plano) REFERENCES planos(id_plano)
);

-- 3. Tabela de Artistas
CREATE TABLE artistas (
                          id_artista INT AUTO_INCREMENT PRIMARY KEY,
                          nome VARCHAR(100) NOT NULL,
                          genero VARCHAR(50)
);

-- 4. Tabela de Álbuns
CREATE TABLE albuns (
                        id_album INT AUTO_INCREMENT PRIMARY KEY,
                        titulo VARCHAR(100) NOT NULL,
                        ano_lancamento INT,
                        id_artista INT NOT NULL,
                        FOREIGN KEY (id_artista) REFERENCES artistas(id_artista)
);

-- 5. Tabela de Músicas (Tracks)
CREATE TABLE musicas (
                         id_musica INT AUTO_INCREMENT PRIMARY KEY,
                         titulo VARCHAR(100) NOT NULL,
                         duracao_segundos INT NOT NULL,
                         id_album INT NOT NULL,
                         FOREIGN KEY (id_album) REFERENCES albuns(id_album)
);

-- 6. Tabela de Histórico de Reprodução
CREATE TABLE historico_reproducao (
                                      id_historico INT AUTO_INCREMENT PRIMARY KEY,
                                      id_usuario INT NOT NULL,
                                      id_musica INT NOT NULL,
                                      data_reproducao DATETIME DEFAULT CURRENT_TIMESTAMP,
                                      FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
                                      FOREIGN KEY (id_musica) REFERENCES musicas(id_musica)
);
