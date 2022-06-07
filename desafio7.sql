SELECT A.artista AS artista,
B.album AS album,
COUNT(S.artista_id) AS seguidores
FROM SpotifyClone.albuns AS B
INNER JOIN SpotifyClone.artistas AS A
ON A.artista_id = B.artista_id
INNER JOIN SpotifyClone.seguindo AS S
ON A.artista_id = S.artista_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;