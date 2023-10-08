
-- Display top 5 row from dataset

SELECT TOP 5 * 
FROM Cyclisticdb..cyclisticfinal;

-- Calculate the mean of ride_length.

SELECT ROUND(AVG(ride_length), 2) as 'Average of Ride Length' 
FROM Cyclisticdb..cyclisticfinal;

-- Calculate the maximum ride_length.

SELECT MAX(ride_length) as 'the maximum ride_length'
FROM Cyclisticdb..cyclisticfinal;

-- Calculate the mode of day_of_week.


SELECT TOP 1 day_of_week as Weekdays,
            COUNT(day_of_week) AS 'Number of Trip'
FROM Cyclisticdb..cyclisticfinal
GROUP BY day_of_week
ORDER BY COUNT(day_of_week) DESC;

-- Calculate the average ride_length for members and casual riders.

SELECT member_casual,
	ROUND(AVG(ride_length),2) as 'Average Ride Length'
FROM Cyclisticdb..cyclisticfinal
GROUP BY member_casual;

--Calculate the average ride_length for users per day (day_of_week)

SELECT member_casual,
day_of_week,
ROUND(AVG(ride_length),2) as 'Average Ride Length'
FROM Cyclisticdb..cyclisticfinal
GROUP BY member_casual, day_of_week
ORDER BY member_casual;

--  Calculate the number of trips for users per day (day_of_week).

SELECT member_casual,
day_of_week,
COUNT(ride_id) as 'Number of Ride'
FROM Cyclisticdb..cyclisticfinal
GROUP BY member_casual, day_of_week
ORDER BY member_casual, COUNT(ride_id) DESC;

-- The top 10 stations visited by users

SELECT TOP 10 end_station_name,
COUNT(ride_id) as 'Number of Ride'
FROM Cyclisticdb..cyclisticfinal
GROUP BY end_station_name
ORDER BY COUNT(ride_id) DESC;

-- Types of bikes used by users

SELECT member_casual,
rideable_type,
COUNT(ride_id) as 'Number of Ride'
FROM Cyclisticdb..cyclisticfinal
GROUP BY member_casual, rideable_type
ORDER BY member_casual, COUNT(ride_id) DESC;

