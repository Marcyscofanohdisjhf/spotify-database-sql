
USE spotify_db;

-- 1. Inserir Planos
INSERT INTO planos (nome, preco) VALUES
                                     ('Free', 0.00),
                                     ('Premium Individual', 19.90),
                                     ('Premium Família', 34.90),
                                     ('Universitário', 9.90);

-- 2. Inserir Usuários
INSERT INTO usuarios (nome, email, id_plano) VALUES
                                                 ('Ana Silva', 'ana.silva@email.com', 2),
                                                 ('Carlos Oliveira', 'carlos.o@email.com', 1),
                                                 ('Beatriz Souza', 'bea.souza@email.com', 3),
                                                 ('Lucas Mendes', 'lucas.m@email.com', 4),
                                                 ('Mariana Costa', 'mari.costa@email.com', 2);

-- 3. Inserir Artistas
INSERT INTO artistas (nome, genero) VALUES
                                        ('Taylor Swift', 'Pop'),
                                        ('Daft Punk', 'Electronic'),
                                        ('Queen', 'Rock'),
                                        ('Jorge & Mateus', 'Sertanejo');

-- 4. Inserir Álbuns
INSERT INTO albuns (titulo, ano_lancamento, id_artista) VALUES
                                                            ('1989', 2014, 1),
                                                            ('Random Access Memories', 2013, 2),
                                                            ('A Night at the Opera', 1975, 3),
                                                            ('Os Anjos Cantam', 2015, 4);

-- 5. Inserir Músicas
INSERT INTO musicas (titulo, duracao_segundos, id_album) VALUES
                                                             ('Blank Space', 231, 1),
                                                             ('Shake It Off', 219, 1),
                                                             ('Get Lucky', 248, 2),
                                                             ('Instant Crush', 337, 2),
                                                             ('Bohemian Rhapsody', 354, 3),
                                                             ('Os Anjos Cantam', 194, 4);

-- 6. Inserir Histórico de Reprodução
INSERT INTO historico_reproducao (id_usuario, id_musica, data_reproducao) VALUES
                                                                              (1, 1, '2026-07-20 10:15:00'),
                                                                              (1, 3, '2026-07-20 10:20:00'),
                                                                              (2, 5, '2026-07-21 14:00:00'),
                                                                              (3, 2, '2026-07-22 18:30:00'),
                                                                              (4, 6, '2026-07-23 09:12:00'),
                                                                              (5, 4, '2026-07-24 21:45:00'),
                                                                              (1, 5, '2026-07-24 22:00:00');