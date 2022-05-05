SELECT properties.id, title, cost_per_night, AVG(property_reviews.rating) AS average_rating
FROM properties
LEFT JOIN property_reviews ON properties.id = property_id -- Left join because we want all property reviews
WHERE city LIKE '%ancouv%' -- Want to write LIKE because spelling and capitalization can vary in the data
GROUP BY properties.id
HAVING AVG(property_reviews.rating) >= 4
ORDER BY cost_per_night
LIMIT 10;


-- return to this because I have 4 rows but not the same results. I have nature bite and present tlebision 
-- but NOT asife age or  build they