/* Source: https://www.kaggle.com/datasets/uom190346a/sleep-health-and-lifestyle-dataset */
SELECT *
FROM freelancer_earnings_bd;



/* Which freelancing platform generates the highest average earnings per freelancer? */
SELECT 
    Platform, 
    ROUND(AVG(Earnings_USD), 2) AS avg_earnings
FROM freelancer_earnings_bd
GROUP BY Platform
ORDER BY avg_earnings DESC
LIMIT 5;

/* What is the distribution of freelancers across different platforms? */
SELECT 
    Platform,
    COUNT(Freelancer_ID) AS Freelancer_Count,
    CONCAT(ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM freelancer_earnings_bd), 1), '%') AS Distribution
FROM freelancer_earnings_bd
GROUP BY Platform
ORDER BY Freelancer_Count DESC;

/*  Which platform has the highest job success rate on average? */
SELECT Platform ,ROUND(AVG(Job_Success_Rate),2) AS Average_Job_Success_Rate
FROM freelancer_earnings_bd
GROUP BY Platform
ORDER BY Average_Job_Success_Rate ASC
LIMIT 5;


/* What are the top 10 highest earning freelancers in the dataset?  */
SELECT 
    Freelancer_ID,
    Job_Category, 
    Platform,
    Earnings_USD
FROM freelancer_earnings_bd
ORDER BY Earnings_USD DESC
LIMIT 10;

/*  What is the average earnings by job category? */
SELECT Job_Category , round(AVG(Earnings_USD)) Average_Earning
FROM freelancer_earnings_bd
GROUP BY Job_Category
ORDER BY Average_Earning DESC
LIMIT 5;


/* How do earnings correlate with experience level (Beginner/Intermediate/Expert)? */
SELECT Experience_Level , round(AVG(Earnings_USD)) Average_Earning
FROM freelancer_earnings_bd
GROUP BY Experience_Level
ORDER BY Average_Earning DESC 
LIMIT 5;

/*What's the relationship between hourly rate and total earnings? */
SELECT 
    ROUND(Hourly_Rate/10)*10 AS hourly_rate_range,
    ROUND(AVG(Earnings_USD)) AS avg_earnings,
    COUNT(*) AS freelancer_count
FROM freelancer_earnings_bd
GROUP BY hourly_rate_range
ORDER BY hourly_rate_range;

/*Which client regions pay freelancers the highest average earnings? */
SELECT  Client_Region , round(AVG(Earnings_USD)) Average_Earning
FROM freelancer_earnings_bd
GROUP BY Client_Region
ORDER BY  Average_Earning DESC 
LIMIT 10;

/*What are the most common payment methods by region? */
SELECT 
    Client_Region,
    Payment_Method,
    COUNT(*) AS payment_count
FROM freelancer_earnings_bd
GROUP BY Client_Region, Payment_Method
ORDER BY Client_Region, payment_count DESC;

/* Which job categories are most popular in each region? */
WITH ranked_categories AS (
    SELECT 
        Client_Region,
        Job_Category,
        COUNT(*) AS job_count,
        ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY Client_Region), 1) AS percentage,
        RANK() OVER (PARTITION BY Client_Region ORDER BY COUNT(*) DESC) AS popularity_rank
    FROM freelancer_earnings_bd
    GROUP BY Client_Region, Job_Category
)
SELECT 
    Client_Region,
    Job_Category AS most_popular_category,
    job_count,
    CONCAT(percentage, '%') AS region_percentage
FROM ranked_categories
WHERE popularity_rank = 1
ORDER BY job_count DESC;

/* What's the average job duration for different project types? */
SELECT 
    Project_Type,
    ROUND(AVG(Job_Duration_Days), 1) AS avg_duration_days
FROM freelancer_earnings_bd
GROUP BY Project_Type
ORDER BY avg_duration_days DESC;


/*  Which job categories have the highest rehire rates? */
SELECT 
    Job_Category,
    ROUND(AVG(Rehire_Rate), 1) AS avg_rehire_rate
FROM freelancer_earnings_bd
GROUP BY Job_Category
ORDER BY avg_rehire_rate DESC
LIMIT 5;

/* How do key metrics vary by experience level? */
SELECT 
    Experience_Level,
    ROUND(AVG(Earnings_USD)) AS avg_earnings,
    ROUND(AVG(Job_Success_Rate), 1) AS avg_success_rate,
    ROUND(AVG(Client_Rating), 1) AS avg_rating,
    ROUND(AVG(Rehire_Rate), 1) AS avg_rehire_rate
FROM freelancer_earnings_bd
GROUP BY Experience_Level
ORDER BY avg_earnings DESC;

/* What's the distribution of experience levels across job categories? */
SELECT 
    Job_Category,
    Experience_Level,
    COUNT(*) AS count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY Job_Category), 1) AS percentage
FROM freelancer_earnings_bd
GROUP BY Job_Category, Experience_Level
ORDER BY Job_Category, count DESC;



/* How does marketing spend vary by platform or job category? */
-- By Platform
SELECT 
    Platform,
    ROUND(AVG(Marketing_Spend)) AS avg_marketing_spend
FROM freelancer_earnings_bd
GROUP BY Platform
ORDER BY avg_marketing_spend DESC;

-- By Job Category
SELECT 
    Job_Category,
    ROUND(AVG(Marketing_Spend)) AS avg_marketing_spend
FROM freelancer_earnings_bd
GROUP BY Job_Category
ORDER BY avg_marketing_spend DESC;


/* Do longer jobs tend to have higher client ratings? */
SELECT 
    CASE 
        WHEN Job_Duration_Days <= 7 THEN '1. 1 Week or less'
        WHEN Job_Duration_Days <= 14 THEN '2. 1-2 Weeks'
        WHEN Job_Duration_Days <= 30 THEN '3. 2-4 Weeks'
        ELSE '4. Over 4 Weeks'
    END AS duration_category,
    ROUND(AVG(Client_Rating), 2) AS avg_rating,
    COUNT(*) AS job_count
FROM freelancer_earnings_bd
GROUP BY duration_category
ORDER BY duration_category;

/* Which payment methods are associated with the highest earnings? */
SELECT 
    Payment_Method,
    ROUND(AVG(Earnings_USD)) AS avg_earnings,
    COUNT(*) AS transaction_count
FROM freelancer_earnings_bd
GROUP BY Payment_Method
ORDER BY avg_earnings DESC;


/*How do payment methods vary by client region? */
SELECT 
    Client_Region,
    Payment_Method,
    COUNT(*) AS count,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY Client_Region), 1) AS percentage
FROM freelancer_earnings_bd
GROUP BY Client_Region, Payment_Method
ORDER BY Client_Region, count DESC;

/* What's the average number of jobs completed by experience level? */
SELECT 
    Experience_Level,
    ROUND(AVG(Job_Completed)) AS avg_jobs_completed
FROM freelancer_earnings_bd
GROUP BY Experience_Level
ORDER BY avg_jobs_completed DESC;










































