SELECT category_name, COUNT(*) AS total,
MAX(list_price) AS greatist
FROM categories c JOIN products p
ON c.category_id = p.category_id
GROUP BY category_name DESC;
