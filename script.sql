SELECT s.last_name, s.first_name,c.city, COUNT(c2.first_name)
FROM staff s
JOIN address a ON a.address_id = s.address_id
JOIN city c ON c.city_id = a.city_id
JOIN customer c2 ON s.store_id = c2.store_id
GROUP BY s.last_name , c.city ,s.first_name
HAVING COUNT(c2.customer_id) > 300;


SELECT COUNT(`length`) film_id
FROM film f
WHERE `length` > (SELECT AVG(`length`) FROM film)

SELECT DATE_FORMAT(`payment_date`, '%M %Y'), COUNT(rental_id), SUM(amount)
FROM payment
GROUP BY DATE_FORMAT(`payment_date`, '%M %Y')
ORDER BY SUM(amount) DESC
LIMIT 1

