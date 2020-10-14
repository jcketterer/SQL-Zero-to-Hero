SELECT 
	first_name,
	last_name,
	customer.email,
	address.district
FROM customer 
INNER JOIN address 
	ON customer.address_id = address.address_id
WHERE address.district = 'California'
	
SELECT 
	title,
	first_name,
	last_name
FROM film
JOIN film_actor
	ON film_actor.film_id = film.film_id 
JOIN actor 
	ON actor.actor_id = film_actor.actor_id
WHERE first_name = 'Nick' AND last_name = 'Wahlberg'