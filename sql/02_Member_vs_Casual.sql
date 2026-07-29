SELECT
  member_casual,
  COUNT(*) AS total_rides,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percent
FROM `cyclistic-capstone-503423.cyclistic.cyclistic_trips`
GROUP BY member_casual;