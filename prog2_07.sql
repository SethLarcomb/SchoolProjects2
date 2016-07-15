SELECT 'SHIPPED' AS ship_status, order_id, order_date
FROM orders
WHERE ship_date !=  null
UNION
SELECT 'NOT SHIPPED' AS ship_status, order_id, order_date
FROM orders
WHERE ship_date IS null
ORDER BY order_date;