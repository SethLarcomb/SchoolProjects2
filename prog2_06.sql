SELECT category_name, product_id
FROM categories c LEFT JOIN products p
ON p.product_id = null;