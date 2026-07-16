**Retail Sales Data Analysis**
Project Overview
This project demonstrates how raw retail sales data was prepared, cleaned, validated, and analyzed using Microsoft Excel before importing it into MySQL for further analysis. 
The objective was to ensure data accuracy, improve data quality, and generate meaningful business insights.

Problem Statement
Retail businesses generate large amounts of sales data that often contain duplicate records, missing values, inconsistent formatting, and data entry errors.
Without proper cleaning and validation, these issues can lead to incorrect business decisions.
This project aims to clean, organize, validate, and analyze retail sales data using Microsoft Excel to create a reliable dataset for SQL analysis and reporting.
**Dataset Information**
| Attribute     | Description                |
| ------------- | -------------------------- |
| Customer ID   | Unique customer identifier |
| Customer Name | Customer details           |
| Order ID      | Sales order number         |
| Product ID    | Product identifier         |
| Product Name  | Product information        |
| Category      | Product category           |
| Brand         | Product brand              |
| Quantity      | Number of products sold    |
| List Price    | Selling price              |
| Discount      | Discount offered           |
| Order Date    | Date of purchase           |
| Store Name    | Store information          |
| Staff Name    | Sales representative       |


The following data cleaning activities were performed:

**✔ Removed Duplicate Records**
Used Remove Duplicates
Eliminated repeated customer and order records
**✔ Handled Missing Values**
Identified blank cells
Replaced missing values where appropriate
**Removed incomplete records when necessary
✔ Corrected Data Types**
Converted columns into appropriate formats:
Date
Number
Currency
Text

**Data Validation**

Applied Excel Data Validation to ensure:
Valid dates
Numeric quantities only
Positive prices
Dropdown lists for categories
Prevent duplicate entries

**KPI Metrics**
Calculated important business KPIs.
| KPI                 | Formula              |
| ------------------- | -------------------- |
| Total Sales         | Quantity × Price     |
| Total Orders        | COUNT(Order ID)      |
| Total Customers     | DISTINCT Customer ID |
| Average Order Value | Total Sales / Orders |
| Highest Sales       | MAX()                |
| Lowest Sales        | MIN()                |
| Total Quantity Sold | SUM(Quantity)        |

-- SQL --
**Database Design**
The project uses a Relational Database Model.
Relationships include:
Customer → Orders
Orders → Order Items
Products → Order Items
Categories → Products
Brands → Products
Stores → Orders
Staffs → Orders
Stores → Stocks

**Data Preparation**

Before analysis, several preprocessing steps were performed.
Data Type Conversion
The project modifies several ID columns to maintain consistency across tables.
Example:
Customer ID
Product ID
Category ID
Brand ID
Store ID
Staff ID
Order ID

**Primary Keys**

Primary Keys were added for:
Brands
Categories
Customers
Orders
Products
Staffs
Stores

**Foreign Keys**

A Foreign Key relationship was created between

Order_Items
        ↓
Orders
Before adding the constraint, invalid Order IDs were handled by replacing unmatched values with NULL.
This demonstrates proper data validation before enforcing referential integrity.
SQL Concepts Used
The project demonstrates the following SQL concepts:
CREATE DATABASE
USE
SELECT
ALTER TABLE
MODIFY
PRIMARY KEY
FOREIGN KEY
UPDATE
INNER JOIN
GROUP BY
ORDER BY
LIMIT
Aggregate Functions
Calculated Columns

**Python Libraries Used**
Pandas
NumPy
Matplotlib
Seaborn
OpenPyXL

**Data Loading**
Loaded data from:

Excel
CSV
MySQL (optional)

**Data Cleaning**

Performed the following tasks:
Removed duplicate records
Handled missing values
Converted data types
Standardized text formatting
Removed unnecessary columns
Corrected inconsistent values

**Exploratory Data Analysis (EDA)**

Analyzed:
Dataset shape
Data types
Missing values
Duplicate records
Summary statistics
Correlation between variables

**Feature Engineering**
Created new columns such as:
Total Sales = Quantity × Price
Order Month
Order Year
Sales Category
Revenue Classification

**Analysis Performed**
**Sales Analysis**
Total Revenue
Monthly Sales Trend
Daily Sales Analysis
**Product Analysis**
Best Selling Products
Lowest Selling Products
Product Revenue
**Customer Analysis**
Top Customers
Purchase Frequency
Customer Spending
**Store Analysis**
Store-wise Revenue
Store Performance Ranking
**Category Analysis**
Highest Revenue Categories
Category-wise Sales

**Data Visualization**
Created visualizations using Matplotlib and Seaborn:
Bar Charts
Line Charts
Pie Charts
Histogram
Box Plot
Scatter Plot
Heatmap
Correlation Matrix

--Power Bi
**Data Preparation**

Before creating the dashboard:

Imported cleaned data from MySQL
Checked data types
Removed null values
Created relationships between tables
Built a star schema model
Added calculated columns and DAX measures

**Data Modeling**
Created relationships between:
Customers
Orders
Order Items
Products
Categories
Brands
Stores
Staff

This ensured accurate filtering and reporting across the dashboard.

**DAX Measures Created** 
Examples include:
Total Sales
Total Orders
Total Customers
Total Quantity Sold
Average Order Value
Total Profit (if available)
Sales Growth %
Top Product Revenue

**KPI Cards**
The dashboard displays:
💰 Total Sales
🛒 Total Orders
👥 Total Customers
📦 Total Quantity Sold
📈 Average Order Value

**Dashboard Visualizations**
The dashboard includes:
Monthly Sales Trend (Line Chart)
Store-wise Sales (Bar Chart)
Category-wise Revenue (Column Chart)
Brand Performance (Bar Chart)
Top 10 Selling Products
Sales by Store
Customer Distribution
Product Category Distribution
KPI Cards

<img width="1091" height="802" alt="image" src="https://github.com/user-attachments/assets/1fce1d81-3be7-4a33-9cb1-99124eb19ca1" />
<img width="1182" height="537" alt="image" src="https://github.com/user-attachments/assets/d7fe7bee-36b4-4a93-b360-e7a2008c0ea4" />
<img width="1067" height="915" alt="image" src="https://github.com/user-attachments/assets/f7fad314-2862-4be5-8aea-f0d3bc16bbce" />
<img width="1078" height="908" alt="image" src="https://github.com/user-attachments/assets/060196e4-7c0d-4325-bbc3-e9602c89dee1" />
<img width="1332" height="747" alt="image" src="https://github.com/user-attachments/assets/930229b4-b554-4828-b22b-4cbed857eb1c" />
<img width="1340" height="745" alt="image" src="https://github.com/user-attachments/assets/b9df46fa-58b6-4390-a067-93f5b55e6bec" />
<img width="1341" height="747" alt="image" src="https://github.com/user-attachments/assets/fb0dc4d1-7359-4397-a4ff-2f1211cd78f9" />

workflow
Raw Dataset
      │
      ▼
Microsoft Excel
(Data Cleaning, Validation, Pivot Tables)
      │
      ▼
MySQL
(Database Design, Joins, Business Queries)
      │
      ▼
Python
(Data Cleaning, EDA, Statistical Analysis, Visualization)
      │
      ▼
Power BI
(KPI Dashboard, Interactive Reports, Business Insights)
      │
      ▼
Business Decision Making
