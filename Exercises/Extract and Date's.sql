SELECT 
	COUNT(*)
FROM payment
WHERE EXTRACT(dow FROM payment_date)=1

SELECT film_id, title
FROM film
WHERE film_id IN
(SELECT inventory.film_id 
FROM rental
INNER JOIN inventory
	ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2009-05-30')

SELECT first_name, last_name
FROM customer AS c
WHERE EXISTS 
(SELECT * FROM payment as p 
WHERE p.customer_id = c.customer_id
AND amount > 11)

SELECT f1.title, f2.title, f1.length
FROM film AS f1
INNER JOIN film AS f2
	ON f1.film_id != f2.film_id
	AND f1.length = f2.length