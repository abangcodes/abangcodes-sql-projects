SELECT *
FROM cars
ORDER BY trips_completed DESC
LIMIT 2;

--

SELECT *
FROM cars;

--

SELECT COUNT(status) AS 'Active Cars'
FROM cars
WHERE status = 'active';

--

WITH all_riders AS (
  SELECT *
  FROM riders
  UNION
  SELECT *
  FROM riders2
)
SELECT *
FROM all_riders
WHERE total_trips <= 500;

--

SELECT *
FROM riders
WHERE total_trips < 500
UNION
SELECT *
FROM riders2
WHERE total_trips < 500;