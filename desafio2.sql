SELECT COUNT(DISTINCT(cancoes.cancao_id)) AS 'cancoes',
COUNT(DISTINCT(artistas.artista_id)) AS 'artistas',
COUNT(DISTINCT(albuns.album_id)) AS 'albuns'
FROM SpotifyClone.cancoes, SpotifyClone.artistas, SpotifyClone.albuns;