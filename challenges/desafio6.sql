SELECT MIN(pl.valor) AS faturamento_minimo, MAX(pl.valor) AS faturamento_maximo, CAST(AVG(pl.valor) AS DECIMAL(5, 2)) AS faturamento_medio, SUM(pl.valor) AS faturamento_total FROM SpotifyClone.pessoa_usuaria AS pes
INNER JOIN SpotifyClone.planos AS pl
ON pes.plano_id = pl.plano_id;