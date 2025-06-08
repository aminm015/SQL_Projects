-- Select all companies that went bankrupt.
SELECT *
FROM bankruptcy_data
WHERE Y = 1;

-- Select all companies with Liability-Assets Flag set to 1.
SELECT Y, X85
FROM bankruptcy_data
WHERE X85 = 1;

--  Find companies with Net Income Flag set to 1 (negative net income for 2 years).
SELECT Y, X94
FROM bankruptcy_data
WHERE X94 = 1;

--  Select companies with high Debt Ratio (Liability/Assets > 0.5).
SELECT Y, X37 AS Debt_Ratio_Percentage
FROM bankruptcy_data
WHERE X37 > 0.5;

-- Show Return on Total Assets and Operating Gross Margin.
SELECT 
    Y AS Bankrupt,
    X1 AS ROA_C,
    X4 AS Operating_Gross_Margin
FROM bankruptcy_data;

--  Select companies with low Current Ratio (less than 1).
SELECT Y, X33 AS Current_Ratio
FROM bankruptcy_data
WHERE X33 < 1;

--  Find the average Cash Flow Rate.
SELECT AVG(X13) AS Average_Cash_Flow_Rate
FROM bankruptcy_data;

--  Show companies with negative Operating Profit Rate.
SELECT Y, X6 AS Operating_Profit_Rate
FROM bankruptcy_data
WHERE X6 < 0;

--  Select companies with high R&D Expense Rate (> 0.1).
SELECT Y, X12 AS RandD_Expense_Rate
FROM bankruptcy_data
WHERE X12 > 0.1;

--  Select companies with negative Total Asset Growth Rate.
SELECT Y, X29 AS Total_Asset_Growth_Rate
FROM bankruptcy_data
WHERE X29 < 0;



-- Company with the highest Debt Ratio.
SELECT *
FROM bankruptcy_data
ORDER BY X37 DESC
LIMIT 1;

--  Non-bankrupt company with the lowest Debt Ratio.
SELECT *
FROM bankruptcy_data
WHERE Y = 0
ORDER BY X37 ASC
LIMIT 1;

-- Key financial ratios, sorted by Net Worth / Assets.
SELECT 
    Y AS Bankrupt,
    X38 AS Net_Worth_Assets_Ratio,
    X33 AS Current_Ratio,
    X37 AS Debt_Ratio
FROM bankruptcy_data
ORDER BY X38 DESC;

--  Top 10 most profitable companies by Operating Profit Rate.
SELECT 
    Y AS Bankrupt,
    X6 AS Operating_Profit_Rate
FROM bankruptcy_data
ORDER BY X6 DESC
LIMIT 10;

-- Bottom 5 non-bankrupt companies by Operating Profit Rate.
SELECT 
    Y AS Bankrupt,
    X6 AS Operating_Profit_Rate
FROM bankruptcy_data
WHERE Y = 0
ORDER BY X6 ASC
LIMIT 5;

-- Average Debt Ratio by Bankruptcy Status.
SELECT 
    Y AS Bankrupt_Status,
    AVG(X37) AS Average_Debt_Ratio
FROM bankruptcy_data
GROUP BY Y;

--  Company count by Current Ratio (Liquidity Risk categories).
SELECT 
    CASE 
        WHEN X33 < 1 THEN 'High Risk (<1)'
        WHEN X33 BETWEEN 1 AND 2 THEN 'Moderate Risk (1-2)'
        ELSE 'Low Risk (>2)'
    END AS Liquidity_Risk_Category,
    COUNT(*) AS Number_of_Companies
FROM bankruptcy_data
GROUP BY Liquidity_Risk_Category;

-- Bankruptcy rate for companies with Liability-Assets Flag set to 1.
SELECT 
    (SUM(CASE WHEN Y = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS bankruptcy_rate_percentage
FROM bankruptcy_data
WHERE X85 = 1;

--  Average ROA by Degree of Financial Leverage.
SELECT 
    X92 AS Degree_of_Financial_Leverage, 
    AVG(X1) AS Average_ROA_C
FROM bankruptcy_data
GROUP BY X92
ORDER BY X92;

--  Identify high-risk but not yet bankrupt companies (high debt, negative income).
SELECT *
FROM bankruptcy_data
WHERE 
    Y = 0 AND
    X37 > 0.6 AND 
    X94 = 1;
