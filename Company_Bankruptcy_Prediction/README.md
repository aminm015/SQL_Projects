# Company Bankruptcy Prediction SQL 📉🏦

Hey there! Welcome to my SQL project for analyzing company bankruptcy data in Taiwan.

This set of queries is all about digging into financial data to spot what might signal a company heading for trouble. If you love data, finance, and SQL, you’ll enjoy poking around!

---

## 📊 What’s This All About?

This project uses the “Taiwanese Bankruptcy Prediction” dataset from the UCI Machine Learning Repository (collected from 1999–2009). With 96 attributes for each company, there’s a ton to explore!

- **Y** = Is the company bankrupt? (1 = Yes, 0 = No)
- **X1 – X95** = All sorts of financial ratios and indicators

---

## 🔑 Key Features Highlighted in the Queries

- **ROA (X1):** Return on Assets, before interest & depreciation
- **Operating Gross Margin (X4)**
- **Operating Profit Rate (X6)**
- **R&D Expense Rate (X12)**
- **Cash Flow Rate (X13)**
- **Total Asset Growth Rate (X29)**
- **Current Ratio (X33)**
- **Debt Ratio % (X37)**
- **Net Worth/Assets (X38)**
- **Liability-Assets Flag (X85):** 1 if liabilities > assets
- **Degree of Financial Leverage (X92)**
- **Net Income Flag (X94):** 1 if net income is negative for last 2 years

---

## ❓ What Questions Can You Answer?

With the provided SQL scripts, you can easily:

- Find all bankrupt companies
- Spot companies where liabilities are bigger than assets
- See who’s had negative net income for two years
- List companies with high debt or low current ratio
- Get averages of important financial ratios
- Compare bankrupt vs. non-bankrupt company stats
- Find the most (and least) profitable companies
- …and more!

---

## 🚦 Example Queries

- Who has the highest debt ratio?
- What’s the bankruptcy rate when liabilities exceed assets?
- Which non-bankrupt companies have the worst profit rate?
- What’s the average ROA in different leverage categories?
- Show risky companies based on certain financial red flags

---
