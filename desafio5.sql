SELECT C.cancao AS "cancao", COUNT(H.usuario_id) AS "reproducoes"
FROM SpotifyClone.cancoes AS C
INNER JOIN SpotifyClone.historico AS H
ON C.cancao_id = H.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;