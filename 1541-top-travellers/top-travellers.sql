-- prateek
Select u.name, SUM(CASE WHEN r.distance IS NOT NULL THEN r.distance ELSE 0 END) as travelled_distance
FROM Users u
LEFT JOIN Rides r
ON u.id = r.user_id
Group BY r.user_id
ORDER BY travelled_distance DESC, u.name;