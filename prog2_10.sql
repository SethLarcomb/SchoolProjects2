SELECT email_address, COUNT(*) AS orders, (item_price-discount_amount)*quantity AS total_amount
FROM customers c JOIN orders o
	ON c.customer_id = o.customer_id
	JOIN order_items i 
	ON o.order_id =  i.order_id
GROUP BY email_address
HAVING orders > 1
ORDER BY total_amount DESC;