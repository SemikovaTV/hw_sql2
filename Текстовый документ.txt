SELECT s.last_name, s.first_name,c.city, COUNT(c2.first_name)
FROM staff s
JOIN address a ON a.address_id = s.address_id
JOIN city c ON c.city_id = a.city_id
JOIN customer c2 ON c2.customer_id =c2.customer_id
GROUP BY s.last_name , c.city ,s.first_name
HAVING COUNT(c2.customer_id) > 300;

SELECT COUNT(`length`) film_id
FROM film f
WHERE `length` > (SELECT AVG(`length`) FROM film)

SELECT MONTH(payment_date), COUNT(rental_id), SUM(amount)
FROM payment
GROUP BY MONTH(payment_date)
ORDER BY SUM(amount) DESC
LIMIT 1
