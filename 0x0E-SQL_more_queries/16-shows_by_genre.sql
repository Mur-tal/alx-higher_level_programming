-- script that lists all shows, and all genres linked to that show, from the database hbtn_0d_tvshows.
--  If a show doesn’t have a genre, display NULL in the genre column
--  Each record should display: tv_shows.title - tv_genres.name
SELECT a.title, n.name
FROM tv_shows a
LEFT JOIN tv_show_genres b ON a.id = b.show_id
LEFT JOIN tv_genres n ON b.genre_id = n.id
ORDER BY a.title ASC, n.name ASC;

