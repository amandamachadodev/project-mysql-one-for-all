SELECT A.artista AS 'artista', B.album AS 'album' FROM SpotifyClone.artistas AS A
INNER JOIN SpotifyClone.albuns AS B
ON A.artista_id = B.artista_id
WHERE A.artista = 'Walter Phoenix';