SELECT strftime('%H', timestamp) AS 'Hour',
  ROUND(AVG(score), 2) AS 'Avg Score',
  COUNT(*) AS 'No. of Stories'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;