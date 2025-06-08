
--  Select the age and job of all clients who have a housing loan.
SELECT age, job, housing
FROM bank_data
WHERE housing = 'yes';

--  Select the job, marital status, and education of clients who were contacted in May.
SELECT job, marital, education, month
FROM bank_data
WHERE month = 'may';

--  Select clients who have not subscribed to a term deposit.
SELECT *
FROM bank_data
WHERE y = 'no';

-- Show the contact duration and campaign outcome for each client.
SELECT duration, poutcome, y
FROM bank_data;

--  Find all unique job titles present in the dataset.
SELECT DISTINCT job
FROM bank_data
ORDER BY job;

-- Select all clients who are married and have a university degree.
SELECT *
FROM bank_data
WHERE marital = 'married' AND education = 'university.degree';

-- Find the average age of clients for each marital status.
SELECT marital, AVG(age) AS average_age
FROM bank_data
GROUP BY marital;

--  Show all information for clients who were contacted via telephone.
SELECT *
FROM bank_data
WHERE contact = 'telephone';

--  Select clients younger than 30 who successfully subscribed to a term deposit.
SELECT age, job, marital, education, y
FROM bank_data
WHERE age < 30 AND y = 'yes';

--  Select clients who are entrepreneurs or self-employed.
SELECT age, job, education
FROM bank_data
WHERE job IN ('entrepreneur', 'self-employed');



--  What is the longest contact duration recorded?
SELECT MAX(duration) AS longest_duration
FROM bank_data;

--  Who is the second oldest client that subscribed to a term deposit?
SELECT *
FROM bank_data
WHERE y = 'yes'
ORDER BY age DESC
LIMIT 1 OFFSET 1;

--  Select the job and age of all clients, sorted by age in descending order.
SELECT job, age
FROM bank_data
ORDER BY age DESC;

--  Select the 10 clients with the longest contact durations.
SELECT age, job, duration
FROM bank_data
ORDER BY duration DESC
LIMIT 10;

--  Select the top 5 youngest clients, excluding the absolute youngest.
SELECT age, job, education
FROM bank_data
ORDER BY age ASC
LIMIT 4 OFFSET 1;

--  Find the average age of clients whose job title starts with 'blue'.
SELECT AVG(age) AS average_age
FROM bank_data
WHERE job LIKE 'blue%';

-- Count the number of clients for each education level and sort the result.
SELECT education, COUNT(*) AS number_of_clients
FROM bank_data
GROUP BY education
ORDER BY number_of_clients DESC;

--  What is the total number of contacts made across all campaigns?
SELECT SUM(campaign) AS total_contacts
FROM bank_data;

--  For each job type, what is the total number of successful subscriptions ('yes')?
SELECT job, COUNT(*) AS successful_subscriptions
FROM bank_data
WHERE y = 'yes'
GROUP BY job
ORDER BY successful_subscriptions DESC;

--  Which marital status has the highest average campaign contact duration?
SELECT marital, AVG(duration) AS avg_duration
FROM bank_data
GROUP BY marital
ORDER BY avg_duration DESC
LIMIT 1;

--  Find the average consumer confidence index for clients who took a loan versus those who didn't.
SELECT loan, AVG(cons_conf_idx) AS avg_confidence_index
FROM bank_data
GROUP BY loan;

--  What is the success rate (percentage of 'yes') of the marketing campaign for clients who were previously contacted and had a 'success' outcome?
SELECT 
    (SUM(CASE WHEN y = 'yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS success_rate_percentage
FROM bank_data
WHERE poutcome = 'success';
