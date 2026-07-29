SELECT
  member_casual,
  ROUND(AVG(ride_length), 2) AS avg_ride_minutes,
  ROUND(MIN(ride_length), 2) AS min_ride,
  ROUND(MAX(ride_length), 2) AS max_ride
FROM `cyclistic-capstone-503423.cyclistic.cyclistic_trips`
GROUP BY member_casual;