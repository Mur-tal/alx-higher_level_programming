-- script that lists all shows contained in the database hbtn_0d_tvshows.
-- Each record should display: tv_shows.title - tv_show_genres.genre_id
-- Results must be sorted in ascending order by tv_shows.title and tv_show_genres.genre_id
-- If a show doesn’t have a genre, display NULL
-- You can use only one SELECT statement
SELECT a.title, b.genre_id
FROM tv_shows a
LEFT JOIN tv_show_genres b ON a.id = b.show_id
ORDER BY a.title ASC, b.genre_id ASC;
