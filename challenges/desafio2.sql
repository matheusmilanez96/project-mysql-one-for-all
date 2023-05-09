SELECT COUNT(DISTINCT can.cancao_id) AS cancoes, COUNT(DISTINCT art.artista_id) AS artistas, COUNT(DISTINCT alb.album_id) AS albuns FROM SpotifyClone.cancoes AS can
INNER JOIN SpotifyClone.albuns AS alb
ON can.album_id = alb.album_id
INNER JOIN SpotifyClone.artistas AS art
ON alb.artista_id = art.artista_id;