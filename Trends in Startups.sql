SELECT location, ROUND(AVG(employees), 2)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;