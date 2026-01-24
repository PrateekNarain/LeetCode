# Write your MySQL query statement below
SELECT s.name AS name
FROM SalesPerson s
LEFT JOIN (
    SELECT o.com_id AS com_id, o.sales_id as sales_id
    FROM Company c
    JOIN Orders o
    ON c.com_id = o.com_id
    WHERE c.name = 'RED'
) t
ON s.sales_id  = t.sales_id
WHERE t.sales_id IS NULL;
