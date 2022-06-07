SELECT U.usuario AS 'usuario', COUNT(H.cancao_id) AS 'qtde_musicas_ouvidas',
ROUND(SUM(D.segundos / 60), 2) AS 'total_minutos'
FROM SpotifyClone.usuarios AS U
INNER JOIN SpotifyClone.historico AS H
ON U.usuario_id = H.usuario_id
INNER JOIN SpotifyClone.cancoes AS D
ON D.cancao_id = H.cancao_id
GROUP BY U.usuario
ORDER BY U.usuario;