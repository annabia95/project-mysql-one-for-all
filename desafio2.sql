SELECT 
	COUNT(c.id) AS cancoes, 
    COUNT(DISTINCT a.id) AS artistas, 
    COUNT(DISTINCT al.id) AS albuns
FROM SpotifyClone.musicas AS c
INNER JOIN SpotifyClone.albuns AS al
ON c.id_album = al.id
INNER JOIN  SpotifyClone.artistas AS a
ON a.id = al.id_artista;