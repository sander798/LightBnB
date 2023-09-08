SELECT reservations.id,
  properties.title,
  properties.cost_per_night,
  reservations.start_date,
  AVG(property_reviews.rating) as average_rating
FROM reservations
JOIN properties ON properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.title, cost_per_night
ORDER BY start_date ASC
LIMIT 10;