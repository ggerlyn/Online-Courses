CREATE VIEW category_rentals AS
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
	GROUP BY CONCAT(first_name, ' ', last_name), customer.email
	ORDER BY "Total Rental";
