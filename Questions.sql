--Question 1
SELECT	*
FROM actor
WHERE	last_name LIKE 'Wahlberg';

--Question 2
SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

--Question 3
SELECT film_id, COUNT(*)  
FROM inventory
GROUP BY film_id 
HAVING count(*)=7;

--Question 4
SELECT *
FROM customer
WHERE first_name = 'Willie';

--Question 5
SELECT staff_id 
FROM rental
GROUP BY staff_id 
ORDER BY count(staff_id);

--Question 6
SELECT count(DISTINCT district)
FROM address

--Question 7
SELECT film_id, count(DISTINCT actor_id) 
FROM film_actor
GROUP BY film_id 
ORDER BY count(actor_id)  DESC;

--Question 8
SELECT count(*)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

--Question 9 INCOMPLETE
SELECT amount
FROM payment
GROUP BY count(DISTINCT amount)>250
HAVING customer_id >= 380 AND customer_id <= 430 ;
 

--Question 10
SELECT rating, count(rating)
FROM film  
GROUP BY rating 
ORDER BY count(rating) DESC;


SELECT amount, customer_id, count(*)
FROM	payment 
GROUP	BY	amount, customer_id
ORDER BY customer_id;