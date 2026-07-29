SELECT
  CASE
    WHEN ride_length < 5 THEN 'Under 5 min'
    WHEN ride_length < 15 THEN '5-15 min'
    WHEN ride_length < 30 THEN '15-30 min'
    WHEN ride_length < 60 THEN '30-60 min'
    ELSE '60+ min'
  END AS ride_duration,
  member_casual,
  COUNT(*) AS total_rides
FROM `cyclistic-capstone-503423.cyclistic.cyclistic_trips`
GROUP BY ride_duration, member_casual
ORDER BY
  CASE ride_duration
    WHEN 'Under 5 min' THEN 1
    WHEN '5-15 min' THEN 2
    WHEN '15-30 min' THEN 3
    WHEN '30-60 min' THEN 4
    ELSE 5
  END,
  member_casual;