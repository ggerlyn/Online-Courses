SELECT customer.first_name, customer.last_name, customer.email, rental.rental_date, rental.return_date, AGE(return_date, rental_date) AS "Rent Duration" FROM rental
JOIN customer
ON rental.customer_id = rental.customer_id
WHERE return_date IS NOT NULL AND AGE(return_date, rental_date) >= interval '7 days'
ORDER BY "Rent Duration" DESC;
