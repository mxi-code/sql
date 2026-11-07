--View the structure of the product table.
PRAGMA table_info(product);

--View the structure of the customer_purchases table.
PRAGMA table_info(customer_purchases);

--View the first 10 records in customer_purchases.
SELECT *
	FROM customer_purchases
	LIMIT 10;

--View the first 10 records in product.
SELECT *
	FROM product
	LIMIT 10;

--Join product and customer_purchases using their shared product_id column.
SELECT
    p.product_id,
    p.product_name,
    cp.customer_id,
    cp.market_date,
    cp.quantity
FROM product AS p
LEFT JOIN customer_purchases AS cp
    ON p.product_id = cp.product_id
LIMIT 10;