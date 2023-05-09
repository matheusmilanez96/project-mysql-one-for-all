SELECT COUNT(r.cancao_id) AS musicas_no_historico FROM SpotifyClone.reproducoes AS r
INNER JOIN SpotifyClone.pessoa_usuaria AS p
ON r.pessoa_usuaria_id = p.pessoa_usuaria_id
WHERE p.nome = 'Barbara Liskov';