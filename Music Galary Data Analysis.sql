SET - 1

Q1. Who is the senior most employee basd on job title?

SELECT * FROM employee
ORDER BY levels desc
LIMIT 1;

Q2. Which countries has the mos invoices?

SELECT COUNT(*) AS Count, billing_country
FROM invoice
GROUP BY billing_country
ORDER BY Count desc ;

SELECT COUNT(customer_id) AS Customers, billing_country
FROM invoice
GROUP BY billing_country
ORDER BY Customers desc ;

Q3. What are top 3 values of total invoice

SELECT total, customer_id FROM invoice
ORDER BY total desc
LIMIT 3;

Q4.Which city has the best customers? We would like to throw a promotional 
Music Festival in the city we made the most money.Write a query that 
returns one city that has the highest sum of invoice totals. Retulr both the city name & sum of all invoice total.

SELECT SUM(total) as Invoice_Total, billing_city FROM invoice
GROUP BY billing_city
ORDER BY Invoice_Total DESC;

Q5. Who is the best customer? Write a query that resturns the person who has spent the most money.

SELECT c.customer_id, c.first_name, c.last_name, SUM(invoice.total) as Total
FROM customer c
JOIN invoice ON c.customer_id = invoice.customer_id
GROUP BY c.customer_id
ORDER BY Total DESC
LIMIT 1 ;

SET- 2

Q1. Write query to return the email,first name, last name & Genre of all
Rock Music listeners. Return your list ordered alphabetically by email starting with A.

SELECT DISTINCT email, first_name, last_name
FROM customer c
JOIN invoice ON c.customer_id = invoice.customer_id
JOIN invoice_line ON invoice.invoice_id = invoice_line.invoice_id
WHERE track_id IN(
      SELECT track_id FROM track
	  join genre ON track.genre_id = genre.genre_id
	  WHERE genre.name LIKE 'Rock'
)
ORDER BY email;