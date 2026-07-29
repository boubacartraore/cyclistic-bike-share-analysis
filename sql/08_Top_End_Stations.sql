SELECT
  end_station_name,
  member_casual,
  COUNT(*) AS total_rides
FROM `cyclistic-capstone-503423.cyclistic.cyclistic_trips`
WHERE end_station_name IS NOT NULL
GROUP BY end_station_name, member_casual
ORDER BY total_rides DESC
LIMIT 20;