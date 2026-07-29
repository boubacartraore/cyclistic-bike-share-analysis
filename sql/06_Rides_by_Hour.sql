SELECT
  hour,
  member_casual,
  COUNT(*) AS total_rides
FROM `cyclistic-capstone-503423.cyclistic.cyclistic_trips`
GROUP BY hour, member_casual
ORDER BY hour, member_casual;