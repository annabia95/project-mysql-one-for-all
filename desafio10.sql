SELECT m.nome AS nome, COUNT(h.id_usuario) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historicoUsuario AS h
ON m.id = h.id_musica
INNER JOIN SpotifyClone.usuarios AS u
ON u.id = h.id_usuario
WHERE u.id_plano = 1 OR u.id_plano = 4
GROUP BY nome
ORDER BY reproducoes DESC, nome ASC;