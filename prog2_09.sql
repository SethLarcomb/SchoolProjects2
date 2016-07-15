SELECT email_address, i.item_price*quantity AS sum_item_price,
	discount_amount*quantity AS sum_discount_amount
FROM customers c JOIN orders o
	ON c.customer_id = o.customer_id
	JOIN order_items i 
	ON o.order_id =  i.order_id
ORDER BY sum_item_price - sum_discount_amount DESC;