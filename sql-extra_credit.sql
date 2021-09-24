-------Artist Table-------
----------------PROBLEM 1----------------
SELECT *
FROM artist
ORDER BY name DESC
LIMIT 10;
----------------PROBLEM 2----------------
SELECT *
FROM artist
WHERE name LIKE 'Black%';
----------------PROBLEM 3----------------
SELECT *
FROM artist
WHERE name LIKE '%Black%';

-------Employee Table-------
----------------PROBLEM 1----------------
SELECT birth_date
FROM employee
ORDER BY birth_date DESC
LIMIT 1;
----------------PROBLEM 2----------------
SELECT birth_date
FROM employee
ORDER BY birth_date ASC
LIMIT 1;

-------Invoice Table-------
----------------PROBLEM 1----------------
SELECT COUNT(*)
FROM invoice
WHERE billing_state IN ('CA','TX','AZ');
----------------PROBLEM 2----------------
SELECT AVG(total)
FROM invoice;

-------JOIN Queries-------
----------------PROBLEM 1----------------
SELECT pt.track_id
FROM playlist_track pt
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.name = 'Music';
----------------PROBLEM 2----------------
SELECT t.name, pt.playlist_id
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
WHERE pt.playlist_id = 5;
----------------PROBLEM 3----------------
SELECT t.name, p.name
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p on p.playlist_id = pt.playlist_id
----------------PROBLEM 4----------------
SELECT t.name AS Track_name, a.title AS Album_title
FROM track t
JOIN album a ON a.album_id = t.album_id
JOIN genre g on g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';