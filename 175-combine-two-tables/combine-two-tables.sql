# Write your MySQL query statement below
# Write your MySQL query statement below
SELECT p.firstName, p.lastName, a.city, a.state
FROM Person p
Left Join Address a
ON p.personId = a.personId;