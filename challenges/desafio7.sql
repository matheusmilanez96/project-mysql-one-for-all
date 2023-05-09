SELECT art.nome AS artista, alb.nome AS album, COUNT(*) AS pessoas_seguidoras FROM SpotifyClone.albuns AS alb
INNER JOIN SpotifyClone.artistas AS art
ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.pessoa_seguindo AS p
ON art.artista_id = p.artista_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;