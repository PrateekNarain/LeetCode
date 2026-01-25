# Write your MySQL query statement below
SELECT Distinct num AS ConsecutiveNums
FROM (
    SELECT num,
    LAG(num, 1) OVER (ORDER BY id) AS prev1,
    LAG(num, 2) OVER (ORDER BY id) AS prev2
    FROM Logs
) t
WHERE num = t.prev1
AND num = t.prev2;