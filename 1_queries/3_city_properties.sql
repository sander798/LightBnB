SELECT properties.id, title, cost_per_night, AVG(rating) as average_rating
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%ancouver'
GROUP BY properties.id
HAVING AVG(rating) >= 4
ORDER BY cost_per_night ASC
LIMIT 10;