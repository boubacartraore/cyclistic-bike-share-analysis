SELECT
  day_of_week,
  member_casual,
  COUNT(*) AS total_rides
FROM `cyclistic-capstone-503423.cyclistic.cyclistic_trips`
GROUP BY day_of_week, member_casual
ORDER BY
  CASE day_of_week
    WHEN 'Sunday' THEN 1
    WHEN 'Monday' THEN 2
    WHEN 'Tuesday' THEN 3
    WHEN 'Wednesday' THEN 4
    WHEN 'Thursday' THEN 5
    WHEN 'Friday' THEN 6
    WHEN 'Saturday' THEN 7
  END,
  member_casual;