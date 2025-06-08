About The Project
This project contains a collection of SQL queries designed to analyze a bank marketing dataset. The queries are used to extract insights and answer key business questions about client demographics, campaign interactions, and subscription outcomes.

This set of queries serves as a practical example of how SQL can be used for data exploration and analysis on a real-world dataset.

Dataset
The SQL queries in this project are written for a dataset based on the "Bank Marketing" data from the UCI Machine Learning Repository.

The data is in a single table, assumed to be named bank_data, and contains information on bank clients, including:

Demographics (age, job, marital status, education)

Loan information (housing, personal loan)

Marketing campaign details (contact type, month, duration, number of contacts)

Previous campaign outcomes

The target variable (y), indicating whether the client subscribed to a term deposit.

SQL Queries
The following section lists the questions that can be answered using the provided SQL scripts. The queries themselves are available in the sql_bank_queries file.

Select the age and job of all clients who have a housing loan.

Select the job, marital status, and education of clients who were contacted in May.

Select clients who have not subscribed to a term deposit.

Show the contact duration and campaign outcome for each client.

Find all unique job titles present in the dataset.

Select all clients who are married and have a university degree.

Find the average age of clients for each marital status.

Show all information for clients who were contacted via telephone.

Select clients younger than 30 who successfully subscribed to a term deposit.

Select clients who are entrepreneurs or self-employed.


What is the longest contact duration recorded?

Who is the second oldest client that subscribed to a term deposit?

Select the job and age of all clients, sorted by age in descending order.

Select the 10 clients with the longest contact durations.

Select the top 5 youngest clients, excluding the absolute youngest.

Find the average age of clients whose job title starts with 'blue'.

Count the number of clients for each education level and sort the result.

What is the total number of contacts made across all campaigns?

For each job type, what is the total number of successful subscriptions ('yes')? Order the result to show which jobs are most promising.

Which marital status has the highest average campaign contact duration?

Find the average consumer confidence index for clients who took a loan versus those who didn't.

What is the success rate (percentage of 'yes') of the marketing campaign for clients who were previously contacted and had a 'success' outcome?

