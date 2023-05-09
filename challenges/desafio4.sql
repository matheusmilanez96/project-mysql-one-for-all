SELECT p.nome AS pessoa_usuaria, IF(MAX(YEAR(r.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria FROM SpotifyClone.reproducoes AS r
INNER JOIN SpotifyClone.pessoa_usuaria AS p
ON r.pessoa_usuaria_id = p.pessoa_usuaria_id
GROUP BY p.nome
ORDER BY pessoa_usuaria;