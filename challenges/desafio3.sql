SELECT p.nome AS pessoa_usuaria, COUNT(c.nome) AS musicas_ouvidas, CAST(SUM(c.duracao_segundos) / 60 AS DECIMAL(5, 2)) AS total_minutos FROM SpotifyClone.reproducoes as r
INNER JOIN SpotifyClone.pessoa_usuaria AS p
ON r.pessoa_usuaria_id = p.pessoa_usuaria_id
INNER JOIN SpotifyClone.cancoes AS c
ON r.cancao_id = c.cancao_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;