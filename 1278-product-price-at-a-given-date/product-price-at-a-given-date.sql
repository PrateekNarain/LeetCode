SELECT
    p.product_id,
    CASE
        WHEN t.new_price IS NULL THEN 10
        ELSE t.new_price
    END AS price
FROM
    (SELECT DISTINCT product_id FROM Products) p
LEFT JOIN (
    SELECT product_id, new_price
    FROM Products
    WHERE (product_id, change_date) IN (
        SELECT product_id, MAX(change_date)
        FROM Products
        WHERE change_date <= '2019-08-16'
        GROUP BY product_id
    )
) t
ON p.product_id = t.product_id;
