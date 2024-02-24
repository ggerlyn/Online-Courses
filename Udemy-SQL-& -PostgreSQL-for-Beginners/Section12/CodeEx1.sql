CREATE VIEW movie_rentals_final AS
SELECT CONCAT(first_name, ' ', last_name) AS "Customer Name", customer.email AS "Email", SUM(payment.amount) AS "Total Rental" FROM payment
JOIN customer
ON payment.customer_id =  customer.customer_id
GROUP BY CONCAT(first_name, ' ', last_name), customer.email;

SELECT "Customer Name", "Email", "Total Rental",
CASE
	WHEN "Total Rental" > 200 THEN 'Elite'
	WHEN "Total Rental" > 150 THEN 'Platinum'
	WHEN "Total Rental" > 100 THEN 'Gold'
	WHEN "Total Rental" > 0 THEN 'Silver'
END AS "Customer Category"
FROM movie_rentals_final
;

-- Alternative solution
SELECT CONCAT(first_name, ' ', last_name) AS "Customer Name", customer.email AS "Email", SUM(payment.amount) AS "Total Rental",
CASE
	WHEN SUM(payment.amount) >= 200 THEN 'Elite'
	WHEN SUM(payment.amount) >= 150 THEN 'Platinum'
	WHEN SUM(payment.amount) >= 100 THEN 'Gold'
	WHEN SUM(payment.amount) >= 0 THEN 'Silver'
END AS "Customer Category"
FROM payment
JOIN customer
ON payment.customer_id =  customer.customer_id
GROUP BY CONCAT(first_name, ' ', last_name), customer.email;
