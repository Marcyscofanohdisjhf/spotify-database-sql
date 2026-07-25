USE spotify_db;

-- Query 1: Listar todas as músicas com o nome do artista e do álbum (JOINs)
SELECT
    m.titulo AS musica,
    a.nome AS artista,
    al.titulo AS album,
    m.duracao_segundos
FROM musicas m
         JOIN albuns al ON m.id_album = al.id_album
         JOIN artistas a ON al.id_artista = a.id_artista;

-- Query 2: Contar quantos usuários existem por plano (Group By + Aggregate)
SELECT
    p.nome AS plano,
    COUNT(u.id_usuario) AS total_usuarios
FROM planos p
         LEFT JOIN usuarios u ON p.id_plano = u.id_plano
GROUP BY p.id_plano, p.nome;

-- Query 3: Ranking das músicas mais ouvidas (Histórico de reprodução)
SELECT
    m.titulo AS musica,
    art.nome AS artista,
    COUNT(h.id_historico) AS total_reproducoes
FROM historico_reproducao h
         JOIN musicas m ON h.id_musica = m.id_musica
         JOIN albuns al ON m.id_album = al.id_album
         JOIN artistas art ON al.id_artista = art.id_artista
GROUP BY m.id_musica, m.titulo, art.nome
ORDER BY total_reproducoes DESC;
