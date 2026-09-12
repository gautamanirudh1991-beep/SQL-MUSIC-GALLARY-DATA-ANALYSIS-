# SQL-MUSIC-GALLERY-DATA-ANALYSIS
SQL project to analyze an online music gallery
This project analyzes a digital music store database (Chinook-style schema) to answer real, stakeholder-driven business questions covering employee seniority, revenue trends, top customers, city-level profitability, and genre-based customer segmentation.

🗂️ Dataset
The project uses a Chinook-style digital music store schema with the following key tables:
employee	    Store staff, including job titles and reporting hierarchy
customer	    Customer profile details (name, email, location)
invoice	      Purchase invoices, including totals and billing location
invoice_line	Line-item detail linking invoices to individual tracks
track	        Song/track catalog
genre	        Music genre reference table

🛠️ Tools & Concepts Used
* SQL — joins, aggregate functions, subqueries, filtering, sorting
* Core concepts demonstrated:
     GROUP BY / ORDER BY / LIMIT for ranking and top-N analysis
  
     JOIN across multiple related tables (customer → invoice → invoice_line → track → genre)
  
     Subqueries with IN for multi-table filtering
  
     Aggregate functions (SUM, COUNT) for revenue and volume analysis
  
     DISTINCT and pattern matching (LIKE) for clean, targeted result sets

