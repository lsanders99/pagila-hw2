/*
 * Select the titles of all films that the customer with customer_id=1 has rented more than 1 time.
 *
 * HINT:
 * It's possible to solve this problem both with and without subqueries.
 */

-- which movies have been rented more than 1 time by customer 1?
-- which movies have been rented more than 1 time?
-- how many times have each movie been rented?

-- How many times has customer 1 rented each movie?
SELECT film_id, title, count(*)
FROM film
INNER JOIN inventory
USING (film_id)
INNER JOIN rental
USING (inventory_id)
INNER JOIN customer
USING (customer_id)
WHERE customer_id = 1 --AND count(*) > 1
GROUP BY film_id, title
ORDER BY count(*) DESC;

