SELECT a.nome AS artista, al.nome AS album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS al
ON al.id_artista = a.id
WHERE a.nome = "Walter Phoenix"
ORDER BY artista;