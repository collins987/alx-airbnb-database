-- Query 1: Total number of bookings made by each user
SELECT 
    user_id,
    COUNT(*) AS total_bookings
FROM bookings
GROUP BY user_id;

-- Query 2: Ranking properties by total bookings using ROW_NUMBER
SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) AS row_num_rank
FROM bookings
GROUP BY property_id;

-- Query 3: Ranking properties by total bookings using RANK
SELECT 
    property_id,
    COUNT(*) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(*) DESC) AS rank_rank
FROM bookings
GROUP BY property_id;
