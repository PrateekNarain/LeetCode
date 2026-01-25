# Write your MySQL query statement below
SELECT
    s1.id as id,
    (CASE
        WHEN s1.id%2 = 0 
            THEN (SELECT s2.student FROM Seat s2 WHERE s2.id = s1.id - 1)
        WHEN s1.id%2 = 1 AND s1.id < (SELECT Max(id) FROM Seat)
            THEN(SELECT s2.student FROM Seat s2 WHERE s2.id = s1.id+1)
        ELSE s1.student
    END) AS student
FROM Seat s1

