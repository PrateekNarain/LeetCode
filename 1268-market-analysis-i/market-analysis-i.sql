# Write your MySQL query statement below
SELECT u.user_id AS buyer_id, u.join_date AS join_date, IFNULL(o.orders_19,0) AS orders_in_2019
FROM Users u
LEFT JOIN (
    SELECT buyer_id, (SUM(CASE WHEN order_date BETWEEN '2019-01-01' AND '2019-12-31' THEN 1 ELSE 0 END)) AS orders_19
    FROM Orders
    GROUP BY buyer_id
) o
ON u.user_id = o.buyer_id
ORDER BY u.user_id;