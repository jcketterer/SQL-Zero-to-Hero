SELECT first_name, 
	   last_name, 
	   email 
FROM customer;

SELECT DISTINCT release_year FROM film;

SELECT DISTINCT rating,
	COUNT(*)
FROM film
GROUP BY rating;

SELECT email 
FROM customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

SELECT description 
FROM film
WHERE title = 'Outlaw Hanky';

SELECT phone 
FROM address
WHERE address = '259 Ipoh Drive';

SELECT customer_id
FROM payment
ORDER BY payment_date
LIMIT 10;

SELECT COUNT(*)
FROM film
WHERE length <= 50;

SELECT COUNT(amount)
FROM payment
WHERE amount > 5.00;

SELECT COUNT(*)
FROM actor
WHERE first_name LIKE 'P%';

SELECT DISTINCT district
FROM address;

SELECT COUNT(*) 
FROM film
WHERE rating = 'R' 
AND replacement_cost BETWEEN 5 AND 15;

SELECT COUNT(*) 
FROM film
WHERE title LIKE '%Truman%';