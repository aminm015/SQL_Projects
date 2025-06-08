-- Wines with a great rating (over 4.5)
SELECT wine, year, rating
FROM spanish_wines
WHERE rating > 4.5;

--  Unique wineries in the 'Toro' region
SELECT DISTINCT winery
FROM spanish_wines
WHERE region = 'Toro';

--  Wines under 10 euros, sorted from cheapest
SELECT *
FROM spanish_wines
WHERE price < 10
ORDER BY price ASC;

--  Tempranillo wines made before 2010
SELECT winery, wine, year, type
FROM spanish_wines
WHERE type = 'Tempranillo' AND year < 2010;

--  Ratings, body, and acidity from 'Bodegas Muga'
SELECT wine, rating, body, acidity
FROM spanish_wines
WHERE winery = 'Bodegas Muga';

--  Wines with more than 1,000 reviews
SELECT winery, wine, num_reviews
FROM spanish_wines
WHERE num_reviews > 1000;



--  Average price by region (most to least expensive)
SELECT region, AVG(price) AS average_price
FROM spanish_wines
GROUP BY region
ORDER BY average_price DESC;

--  Winery with the best average rating (minimum 10 wines)
SELECT winery, AVG(rating) AS average_rating
FROM spanish_wines
GROUP BY winery
HAVING COUNT(wine) >= 10
ORDER BY average_rating DESC
LIMIT 1;

--  Count of wine types and total reviews per type
SELECT 
    type, 
    COUNT(DISTINCT wine) AS number_of_wines, 
    SUM(num_reviews) AS total_reviews
FROM spanish_wines
GROUP BY type
ORDER BY total_reviews DESC;

-- Top 5 most expensive wines with full body score (5)
SELECT wine, winery, price, body
FROM spanish_wines
WHERE body = 5
ORDER BY price DESC
LIMIT 5;

--  Group wines by price tier
SELECT
    CASE
        WHEN price < 15 THEN 'Value'
        WHEN price BETWEEN 15 AND 40 THEN 'Mid-Range'
        WHEN price BETWEEN 40.01 AND 100 THEN 'Premium'
        ELSE 'Luxury'
    END AS price_tier,
    COUNT(*) AS number_of_wines
FROM spanish_wines
GROUP BY price_tier
ORDER BY number_of_wines DESC;

--  Top-rated wine in each region
SELECT t1.region, t1.wine, t1.rating
FROM spanish_wines AS t1
JOIN (
    SELECT region, MAX(rating) AS max_rating
    FROM spanish_wines
    GROUP BY region
) AS t2
ON t1.region = t2.region AND t1.rating = t2.max_rating
ORDER BY t1.region;