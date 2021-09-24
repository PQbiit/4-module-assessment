-------Artist Table-------
----------------PROBLEM 1----------------
INSERT INTO artist (name)
VALUES ('Imagine Dragons'),
('The Weeknd'),
('Ed Sheeran');
----------------PROBLEM 2----------------
SELECT *
FROM artist
ORDER BY name ASC
LIMIT 5;

-------Employee Table-------
----------------PROBLEM 1----------------
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';
----------------PROBLEM 2----------------
SELECT *
FROM employee
WHERE reports_to IN
(SELECT employee_id FROM employee WHERE first_name = 'Nancy' AND last_name = 'Edwards');
----------------PROBLEM 3----------------
SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';

-------Invoice Table-------
----------------PROBLEM 1----------------
SELECT COUNT(*)
FROM invoice
WHERE billing_country = 'USA';
----------------PROBLEM 2----------------
SELECT *
FROM invoice
ORDER BY total DESC
LIMIT 1;
----------------PROBLEM 3----------------
SELECT *
FROM invoice
ORDER BY total ASC
LIMIT 1;
----------------PROBLEM 4----------------
SELECT *
FROM invoice
WHERE total > 5;
----------------PROBLEM 5----------------
SELECT COUNT(*)
FROM invoice
WHERE total < 5;
----------------PROBLEM 6----------------
SELECT SUM(total)
FROM invoice;

-------JOIN Queries-------
----------------PROBLEM 1----------------
SELECT i.*
FROM invoice i
JOIN invoice_line il ON i.invoice_id = il.invoice_id
WHERE il.unit_price > 0.99;
----------------PROBLEM 2----------------
SELECT i.invoice_date, c.first_name, c.last_name, i.total
FROM invoice i
JOIN customer c ON c.customer_id = i.customer_id;
----------------PROBLEM 3----------------
SELECT c.first_name, c.last_name, e.first_name, e.last_name
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;
----------------PROBLEM 4----------------
SELECT al.title, a.name
FROM album al
JOIN artist a ON a.artist_id = al.artist_id;