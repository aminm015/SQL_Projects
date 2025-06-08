SQL Project: A Mini Freelance Platform Database
Hey there! Welcome to this little SQL project. Think of it as a simple, behind-the-scenes look at how a freelance platform like Upwork or Fiverr might work, all built with SQL. If you've ever wondered how these sites manage all their users, jobs, and reviews, this project breaks it down into the basic building blocks.

I created this to practice and demonstrate how to structure a database for a real-world scenario. You'll get to see exactly how tables for clients, freelancers, gigs, and proposals all connect and interact with each other. It's a great way to see fundamental SQL concepts like table creation, primary/foreign keys, and JOINs in action!

What's Inside? 📂
This project is broken down into three main SQL files, each with a specific job to do. It's best to run them in order!

Create Tables.sql: This script is the architect of our database. It builds the entire structure from the ground up, setting up all the tables (like Clients, Freelancers, Gigs, etc.). More importantly, it defines the data types for each column (like text, numbers, dates) and establishes the relationships between the tables using primary and foreign keys. It's the essential blueprint for everything!

Insert Values.sql: A database isn't much fun without data! This file populates our newly created tables with plenty of sample data. This step is super important because it allows us to test that our database structure works correctly and gives us realistic information to work with when we start asking questions.

Queries.sql: This is where the magic happens! This file is packed with a bunch of different questions we can ask our database. It's full of SELECT statements that pull out interesting information and show how to join the tables together. You'll find queries that answer questions like:

Which freelancers have the highest ratings?

What are the most expensive gigs currently available?

Which clients have posted the most jobs?

How many proposals has a specific gig received?

How to Use It 
Ready to try it out for yourself? It's super easy! Just follow these steps.

Set up your database: Create a new, empty database in your favorite SQL tool. Whether you're using MySQL Workbench, SQL Server Management Studio, DBeaver, or something else, there's usually a simple "Create Database" button or command to get you started.

Build the tables: Open the Create Tables.sql file and run the entire script in your new database. You'll see a bunch of empty tables pop up in the schema viewer. (It's important to run this file first!)

Add the data: Now, open the Insert Values.sql file and run that script. This will fill your tables with all the sample clients, freelancers, and gigs, bringing the database to life.

Ask away!: You're all set! Open the Queries.sql file. You can run any of the queries there to see the results. Even better, try tweaking them or writing some of your own to answer new questions you think of!

A Quick Look at the Database Schema 🗺
Here's a simple breakdown of the tables and the role each one plays in our mini freelance world:

Clients: Stores information about the people posting jobs. This is where every project on the platform begins.

Freelancers: Holds details for the talented freelancers looking for work. This is the platform's talent pool.

Gigs: This is the marketplace! It contains all the jobs that clients have posted and connects a Client to a specific job they need done.

Proposals: This table manages the bidding process. It's a crucial link between interested Freelancers and specific Gigs they want to work on.

Contracts: This is where we make it official! A contract represents a successful match, turning a proposal into a real, active job. It links a Client, a Freelancer, and a Gig together.

Reviews: The reputation system! After a contract is completed, this table captures the valuable feedback that clients and freelancers give each other, which helps build trust on the platform for everyone else.
