# Write your MySQL query statement below
# Write your MySQL query statement below
SELECT s.score, r.rank
FROM Scores s
JOIN (
    SELECT s1.score, COUNT(DISTINCT s2.score) AS 'rank'
    FROM Scores s1
    JOIN Scores s2
      ON s2.score >= s1.score
    GROUP BY s1.score
) r
ON s.score = r.score
ORDER BY s.score DESC;