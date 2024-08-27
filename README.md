# SQL: From Database Design to Deployment and Data Analysis

## Project Overview

This project centers around designing and deploying a backend database system for a small fast-food restaurant. The aim is to store, monitor, and analyze business data related to products/items, orders, and inventory. The database, referred to as `Restaurant_DB`, will enable the restaurant owner to efficiently manage orders and inventory, and later derive valuable business insights through data analysis.

## Project Workflow

The project follows a step-by-step process:

1. **Requirement Gathering:** Identify and document the data requirements of the restaurant, including types of data to be stored (e.g., orders, items, inventory) and their relationships.
2. **Data Normalization:** Organize the data into tables to reduce redundancy and ensure data integrity, following normalization principles.
3. **ER Diagram:** Develop an Entity-Relationship (ER) diagram to visually represent the data model, showing entities, attributes, and relationships.
4. **Schema Design:** Translate the ER diagram into a database schema, defining tables, columns, data types, and constraints.
5. **Data Entry:** Create an Excel sheet with sample data for each table, along with SQL scripts to insert initial rows into the database.
6. **Data Analysis:** Perform SQL queries to extract insights, ranging from simple data retrieval to more complex analytical queries.

## Data Analysis

In the `Data Analysis.pdf` file, you'll find 10 SQL queries with accompanying screenshots of their execution on the `Restaurant_DB`. These queries demonstrate the following SQL functionalities:

- **Joins:** Combining data from multiple tables to provide comprehensive insights.
- **Where Conditions:** Filtering data based on specific criteria.
- **Group By:** Aggregating data based on specific columns to identify trends.
- **Having:** Filtering groups of data based on aggregate functions.
- **Aggregate Functions:** Using functions like `SUM`, `AVG`, and `MAX` to summarize data.
- **Limit:** Restricting the number of results returned.
- **Order By:** Sorting results based on specified columns.
- **Date Intervals:** Analyzing data over specific time periods to observe trends.

These queries are designed to showcase various analytical techniques for effectively extracting and analyzing data from the database.

## Tools Used

- **QuickDBD:** For creating the ER diagram. [Link](https://www.quickdatabasediagrams.com/)
- **Visual Studio Code:** Used for writing and editing the schema design manually.
- **MySQL Server:** The database management system used for storing and managing the data.
- **Docker:** Employed to run MySQL Server in a containerized environment, avoiding direct installation on the local machine.
- **Azure Data Studio:** A client tool used for managing the database, connected to the MySQL server running in the Docker container.

> **Note:** You can alternatively use `MySQL Workbench`, a comprehensive MySQL GUI tool for database design, development, administration, and maintenance.

## Project Files

- **ER_Diagram.png:** A visual representation of the database structure.
- **Conceptual_Schema.pdf:** A conceptual overview of the database schema.
- **Schema_Design.sql:** SQL script for creating the database schema.
- **Script_CreateDatabase&Tables.sql:** SQL script for creating the database and its tables.
- **Sample_Data.xlsx:** Excel sheet containing sample data for each table.
- **Script_InsertSampleData.sql:** SQL script for inserting sample data into the tables.
- **Queries_DataAnalysis.sql:** SQL queries used for analyzing the data.
- **Data_Analysis.pdf:** A document containing the SQL queries and screenshots of their execution results.
- **README.md:** This file, which provides an overview and instructions for the project.

## Instructions for Use

1. **Install MySQL Server:** If not already installed, download and install MySQL Server.
2. **Install MySQL Client:** Use a graphical interface or command-line tool to connect to and manage the MySQL server.
3. **Create Database and Tables:** Run the provided scripts to create the database and tables, or write your own queries to do so manually.
4. **Insert Sample Data:** Use the provided scripts or Excel sheets to insert sample data into the tables. Alternatively, you can write your own queries to populate the database.
5. **Perform Data Analysis:** With the database and tables set up and populated with data, you can perform queries to analyze the data. You can use the provided queries from the `Queries_DataAnalysis.sql` or create your own to explore different insights.


## Author:
Zuhal
