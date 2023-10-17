--Question 1
SELECT	*
FROM actor
WHERE	last_name LIKE 'Wahlberg';
--Answer: 2

--Question 2
SELECT COUNT(*)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--Answer: 5,607

--Question 3
SELECT film_id, COUNT(*)  
FROM inventory
GROUP BY film_id 
HAVING count(*)=7;
--Answer: See Table

--Question 4
SELECT *
FROM customer
WHERE first_name = 'Willie';
--Answer: 2

--Question 5
SELECT staff_id, count(*) 
FROM rental
GROUP BY staff_id 
ORDER BY count(staff_id) DESC;
--Answer: Staff I.D. 1

--Question 6
SELECT count(DISTINCT district)
FROM address
--Answer 378

--Question 7
SELECT film_id, count(DISTINCT actor_id) 
FROM film_actor
GROUP BY film_id 
ORDER BY count(actor_id)  DESC;
--Answer: film I.D. 508

--Question 8
SELECT count(*)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';
--Answer: 13

--Question 9 INCOMPLETE
SELECT amount, COUNT(*)
FROM payment
WHERE  customer_id BETWEEN  380 AND 430
GROUP BY amount
HAVING count(*)>250;
--Answer: See table
 

--Question 10
SELECT rating, count(rating)
FROM film  
GROUP BY rating 
ORDER BY count(rating) DESC;
--Answer: See table


