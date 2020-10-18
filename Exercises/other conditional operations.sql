SELECT 
SUM(CASE rating
	WHEN 'R' THEN 1
	ELSE 0
END) AS "R",
SUM(CASE rating
	WHEN 'PG' THEN 1
	ELSE 0
END) AS "PG",
SUM(CASE rating
	WHEN 'PG-13' THEN 1
	ELSE 0
END) AS "PG-13"
FROM film

SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental

CREATE VIEW customer_info AS 
SELECT first_name, last_name, address
FROM customer
INNER JOIN address
	ON customer.address_id = address.address_id

CREATE OR REPLACE VIEW customer_info AS 
SELECT first_name, last_name, address, district
FROM customer
INNER JOIN address
	ON customer.address_id = address.address_id