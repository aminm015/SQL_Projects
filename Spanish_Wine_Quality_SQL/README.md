README: A Guide to the Spanish Wines SQL Queries
What's this all about?
Hey there! This document is a quick and easy guide for the SQL queries I've put together. The whole point of these scripts is to help you explore and pull useful info from a dataset all about Spanish red wines. Think of this as your friendly instruction manual for playing with the data! It'll walk you through what's in the dataset and how to use the queries.

So, what's in the data?
We're looking at a dataset that's all about Spanish red wines (it's from a file called wines_SPA.csv). It's got about 7,500 different wines that were found by scraping various wine websites and even supermarkets.

To use the queries, you'll want to load this data into a table called spanish_wines.

Here’s a quick rundown of what each column means:

winery: The name of the place that made the wine.

wine: The actual name of the wine.

year: The year the grapes were picked.

rating: The average rating users gave the wine, on a scale of 1 to 5.

num_reviews: How many people left a review for the wine.

country: Where the wine is from (it'll always be "Spain" in this file).

region: The specific area in Spain the wine comes from.

price: The price of the wine in Euros (€).

type: The kind of grape used to make the wine.

body: A score from 1 to 5 for how rich and heavy the wine feels in your mouth.

acidity: A score from 1 to 5 for how "puckery" or tart the wine is. It's what makes you want another sip!

What can you find out?
The SQL scripts are ready to answer all sorts of questions. Here’s a little preview of what you can do!


Find wines with a really great rating.

List all the wineries in a specific region.

Get a list of budget-friendly wines.

Search for a specific type of wine from a certain year.

Check out the taste profile (body and acidity) for wines from one winery.

See which wines are the most popular based on how many reviews they have.


Figure out the average price of wine for each region.

Find out which winery has the best average rating.

See which grape varieties are the most common or get the most reviews.

Hunt for the most expensive wines that also have a specific taste.

Group wines into price categories like "Value" or "Luxury".

Pinpoint the single best-rated wine in every single region.