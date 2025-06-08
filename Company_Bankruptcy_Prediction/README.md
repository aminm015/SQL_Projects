SQL Query Analysis of Taiwanese Bankruptcy Data

This project contains a collection of SQL queries designed for the analysis of a financial dataset concerning company bankruptcy in Taiwan. The queries are used to identify key financial indicators, compare bankrupt and non-bankrupt companies, and flag firms that may be at financial risk.


Dataset
The queries are written for the "Taiwanese Bankruptcy Prediction" dataset from the UCI Machine Learning Repository. The data was collected from the Taiwan Economic Journal from 1999 to 2009. It is assumed that the data is loaded into a SQL table named bankruptcy_data.

The dataset contains 96 attributes. For clarity and ease of use in SQL, the queries use the following mapping:

Y: The class label (Bankrupt?: 1 if bankrupt, 0 otherwise).

X1 through X95: The input features, which are various financial ratios.

Key Features Referenced in Queries:

X1: ROA(C) before interest and depreciation before interest

X4: Operating Gross Margin

X6: Operating Profit Rate

X12: Research and development expense rate

X13: Cash flow rate

X29: Total Asset Growth Rate

X33: Current Ratio

X37: Debt ratio %

X38: Net worth/Assets

X85: Liability-Assets Flag (1 if Total Liability > Total Assets)

X92: Degree of Financial Leverage (DFL)

X94: Net Income Flag (1 if Net Income is Negative for the last two years)

SQL Queries questions 

Select all companies that went bankrupt.

Select all companies where Total Liabilities exceed Total Assets.

Find all companies with negative net income for the last two years.

Select companies with a Debt Ratio greater than 50%.

Show the ROA and Operating Gross Margin for all companies.

Select companies with a Current Ratio less than 1.

Find the average Cash Flow Rate for all companies.

Show all companies with a negative Operating Profit Rate.

Select companies with a high R&D Expense Rate (>10%).

Select companies with a negative Total Asset Growth Rate.

Which company has the highest Debt Ratio?

Which non-bankrupt company has the lowest Debt Ratio?

Select key financial ratios, sorted by the Net Worth/Assets ratio.

Select the top 10 most profitable companies by Operating Profit Rate.

Select the 5 non-bankrupt companies with the worst Operating Profit Rate.

Find the average Debt Ratio for bankrupt vs. non-bankrupt companies.

Count companies in different risk categories based on their Current Ratio.

What is the bankruptcy rate for companies where Liabilities exceed Assets?

Calculate the average ROA for each Degree of Financial Leverage category.

Identify potentially troubled (but not bankrupt) companies based on high debt and negative income flags.