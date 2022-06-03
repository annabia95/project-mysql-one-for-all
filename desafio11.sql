SELECT
    nome AS nome_musica,
    CASE
        WHEN nome LIKE '%Her Own' THEN REPLACE('Dance With Her Own', 'Her Own', 'Trybe')
        WHEN nome LIKE '%Streets' THEN REPLACE('Without My Streets', 'Streets', 'Code Review')
        WHEN nome LIKE '%Inner Fire' THEN REPLACE('Troubles Of My Inner Fire', 'Inner Fire', 'Project')
        WHEN nome LIKE '%Silly' THEN REPLACE("Let's Be Silly", 'Silly', 'Nice')
        WHEN nome LIKE '%Circus' THEN REPLACE('Magic Circus', 'Circus', 'Pull Request')
    END AS 'novo_nome'
FROM SpotifyClone.musicas
WHERE id IN(3,18, 4, 15, 6)
ORDER BY nome;