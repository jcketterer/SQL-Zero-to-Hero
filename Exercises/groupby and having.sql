SELECT staff_id,
	   COUNT(*)
FROM payment
GROUP BY staff_id;

SELECT rating,
	   ROUND(AVG(replacement_cost), 2)
FROM film
GROUP BY rating
ORDER BY rating;

SELECT customer_id,
	   SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY SUM(amount) DESC
LIMIT 5;

SELECT customer_id, COUNT(*) AS "Number of Transactions"
FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 40
ORDER BY 2 DESC

SELECT customer_id, SUM(amount)
FROM payment 
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) >= 100
ORDER BY SUM(amount) DESC