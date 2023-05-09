SELECT c.nome AS cancao, COUNT(*) AS reproducoes FROM SpotifyClone.reproducoes AS r
INNER JOIN SpotifyClone.cancoes AS c
ON r.cancao_id = c.cancao_id
GROUP BY c.nome
ORDER BY reproducoes DESC, cancao
LIMIT 2;