# 📘 MySQL Learning Roadmap

This learning path is designed to help build a **strong foundation in MySQL**, understand **real-world database design**, and develop **job-ready SQL skills**.  

It combines:
- 🎓 University learning American International University-Bangladesh (AIUB)
- 💻 Practical tutorials (Code with Harry)
- 🚀 Professional-level concepts (Code with Mosh)

---

## 🎯 Goal
By following this roadmap, you will be able to:
- Understand database fundamentals
- Write efficient SQL queries
- Design relational databases
- Handle real-world database problems
- Prepare for interviews and backend development roles

---

## 📚 Learning Sources

### 🎓 AIUB (Academic Foundation)
Focus on core database concepts:
- DBMS fundamentals
- Relational model
- ER diagrams
- Keys (Primary, Foreign, Candidate)
- Normalization (1NF, 2NF, 3NF)
- Basic SQL operations

---

### 💻 Code with Harry (Practical Learning)
Focus on hands-on SQL practice:
- MySQL installation & setup
- Basic queries (SELECT, INSERT, UPDATE, DELETE)
- Filtering & sorting data
- Joins (INNER, LEFT, RIGHT)
- Subqueries
- Constraints & indexing basics

---

### 🚀 Code with Mosh (Professional Level)
Focus on advanced and industry concepts:
- Data modeling & design patterns
- Advanced joins & complex queries
- Transactions (COMMIT, ROLLBACK)
- Concurrency control
- Performance optimization
- Indexing deep dive
- Best practices for real-world applications

---

## 🧠 Learning Strategy

1. 📖 Start with **AIUB** → Build strong theoretical foundation  
2. 🧪 Practice with **Code with Harry** → Strengthen SQL basics  
3. 🏢 Learn from **Code with Mosh** → Master real-world and advanced concepts  

---

## 🏗️ Recommended Practice Projects

- E-commerce database system 🛒  
- Railway ticket booking system 🚆  
- Job portal database system 💼  
- Inventory management system 📦  

---

## 🏁 Outcome

After completing this roadmap, you will:
- Be confident in MySQL and SQL queries  
- Understand real-world database design  
- Be ready for backend development roles  
- Perform well in technical interviews  

---

## ⭐ Tip
Practice regularly and build real projects instead of only watching tutorials. Hands-on experience is the key to mastering SQL.

# 📘 MySQL Basic Notes

This section contains basic MySQL concepts and commands for beginners.

---

## 🧠 Basic Concepts

### 📌 Database
A database is a way to store data in a format that is easily accessible.

### 📌 Query
A query is a set of commands used to interact with a database.

### 📌 DBMS
DBMS (Database Management System) is software used to manage databases.  
We do not interact directly with the database; instead, we interact through a DBMS.

# SQL vs NoSQL Database

## 📌 Overview
This document explains the key differences between SQL (Relational) and NoSQL (Non-Relational) databases, including their structure, features, and use cases.

---

## 🧾 SQL Database (Relational)

SQL databases store data in **tables (rows and columns)** with a fixed structure called a schema.

### 🔹 Examples
- MySQL
- PostgreSQL
- Microsoft SQL Server
- Oracle

### 🔹 Features
- Structured data format (tables)
- Fixed schema (predefined structure)
- Uses SQL (Structured Query Language)
- Supports relationships using JOINs
- Follows ACID properties (high reliability)

### 🔹 Use Cases
- Banking systems
- E-commerce applications
- Accounting systems

---

## 📦 NoSQL Database (Non-Relational)

NoSQL databases store data in **flexible formats** such as documents, key-value pairs, graphs, or columns.

### 🔹 Examples
- MongoDB
- Firebase Firestore
- Cassandra
- Redis
- Neo4j

### 🔹 Features
- Unstructured or semi-structured data
- Dynamic schema (no fixed structure)
- Horizontally scalable (handles large data easily)
- Faster for big data and real-time apps
- No complex JOIN operations

### 🔹 Use Cases
- Social media applications
- Real-time chat apps
- Big data systems
- IoT applications

---

## ⚖️ SQL vs NoSQL Comparison

| Feature       | SQL Database              | NoSQL Database            |
|--------------|---------------------------|---------------------------|
| Structure     | Tables (rows & columns)   | Document / Key-Value etc. |
| Schema        | Fixed                     | Flexible                  |
| Language      | SQL                       | API / Query varies        |
| Scalability   | Vertical scaling          | Horizontal scaling        |
| Relationships | Strong (JOINs)            | Limited or no JOINs       |
| Best For      | Structured data           | Large & dynamic data      |

---

## 🎯 Summary
- **SQL** → Structured, reliable, strict schema
- **NoSQL** → Flexible, scalable, fast for big data


---

## 🗄️ Database Commands

### ➕ Create Database
```sql
CREATE DATABASE startersql;
```
## 🛠️ Use Database

To select and start working with the database, use the following SQL command:

```sql
USE startersql;
```
## 🗑️ Drop Database

To permanently delete the database, use the following SQL command:

```sql
DROP DATABASE startersql;
```
## 🛠️ Create Table

The following SQL command creates a `users` table:

```sql
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('male', 'female', 'other'),
    date_of_birth DATE,
    salary DECIMAL(10,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## 🛠️ Show Table

To view all records from the users table:

```sql
select * from users;
```

## 🛠️ Drop Table

To delete the users table permanently:

```sql
DROP TABLE users;
```

## SQL Data Types Explained

A quick reference guide for commonly used SQL data types when designing database schemas.

## Numeric Types

* **INT**: Integer type, used for whole numbers (e.g., `1`, `500`, `-20`).
* **DECIMAL(10, 2)**: Stores exact numeric data values, essential for financial data. 
    * The first number (**10**) is the *precision* (total number of digits).
    * The second number (**2**) is the *scale* (number of digits after the decimal point).
* **BOOLEAN**: Stores `TRUE` or `FALSE` values. Often used for status flags like `is_active`.

## String & Character Types

* **VARCHAR(100)**: Variable-length string. It can store up to **100** characters. It is more space-efficient than `CHAR` as it only uses the space needed for the actual string.
* **ENUM**: A string object with a value chosen from a list of permitted values defined during table creation.
    * *Example:* `gender ENUM('Male', 'Female', 'Other')`

## Date & Time Types

* **DATE**: Stores date values without time.
    * *Example:* `date_of_birth DATE` (Format: `YYYY-MM-DD`)
* **TIMESTAMP**: Stores both date and time. It is frequently used to track when a row was created or last updated, as it can be automatically set to the current system time.

---
## Constraints
Constraints are rules applied to columns to limit the type of data that can go into a table.

* **AUTO_INCREMENT**: Automatically generates a unique number for each new row (usually used with Primary Keys).
* **PRIMARY KEY**: A combination of `NOT NULL` and `UNIQUE`. Uniquely identifies each row in a table.
* **NOT NULL**: Ensures that a column cannot have a `NULL` (empty) value.
* **UNIQUE**: Ensures all values in a column are different from one another.
* **DEFAULT**: Sets a default value for a column if no value is specified during insertion.
    * *Example:* `created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP`
    * *Example:* `is_active BOOLEAN DEFAULT TRUE`
* **CHECK**: Used to limit the value range that can be placed in a column. It acts as a logical validation tool.
    * *Example:* `CHECK (salary > 0)` ensures no negative paychecks.

---

## Example Table Schema

```sql
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL,
    gender ENUM('Male', 'Female', 'Other'),
    date_of_birth DATE,
    balance DECIMAL(10, 2) DEFAULT 0.00,
    is_active BOOLEAN DEFAULT TRUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```
# SQL Table Modification Guide

This document provides examples of how to use the `ALTER TABLE` statement to modify the structure of an existing table.

## Table of Contents
1. [Rename a Column](#1-rename-a-column)
2. [Add a New Column](#2-add-a-new-column)
3. [Modify Column Position](#3-modify-column-position)
4. [Change Column Data Type](#4-change-column-data-type)
4. [drop column](#5-drop-column)

---
### 1. Rename a Column
To change the name of an existing column without changing its data type.

```sql
-- Rename column 'SALARY' to 'salary'
ALTER TABLE users RENAME COLUMN SALARY TO salary;

-- Verify changes
SELECT * FROM users;
```

### 2. To add a new column to the table.
In this example, we add a boolean flag with a default value.


```sql
-- Add 'is_active' column with a default value of true
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT true;

-- Verify changes
SELECT * FROM users;
```
### 3. Modify Column Position
In MySQL, you can reposition columns using AFTER or FIRST keywords.
```sql
-- Move 'id' column to appear after the 'salary' column
ALTER TABLE users MODIFY COLUMN id INT AFTER salary;

-- Move 'id' column to be the very first column in the table
ALTER TABLE users MODIFY COLUMN id INT FIRST;

-- Verify layout
SELECT * FROM users;

```
### 4. Change Column Data Type
To change the data type of a column (e.g., from DECIMAL or VARCHAR to INT).
```sql
-- Change the data type of 'salary' to INT
ALTER TABLE users MODIFY COLUMN salary INT;

-- Check the new table structure
SHOW CREATE TABLE users;

```
### 5. Drop column
drop column from users table
```sql
alter table users drop column is_active;
-- -- Verify layout
SELECT * FROM users;

```

## 🔹 Drop Primary Key
To drop a primary key, you may need to remove AUTO_INCREMENT first
```sql
ALTER TABLE users DROP PRIMARY KEY;

SHOW CREATE TABLE users;
```
## 🔹 Drop AUTO_INCREMENT Constraint
```sql
ALTER TABLE users MODIFY COLUMN id INT;

SHOW CREATE TABLE users;
```
## 🔹 Add Primary Key (2 Ways)
```sql
-- Using constraint name
ALTER TABLE users 
ADD CONSTRAINT PK_id PRIMARY KEY (id);

SHOW CREATE TABLE users;

-- Direct method
ALTER TABLE users 
ADD PRIMARY KEY (id);

SHOW CREATE TABLE users;
```
## 🔹 Modify NULL / NOT NULL Constraint
```sql
ALTER TABLE users 
MODIFY COLUMN name VARCHAR(100) NOT NULL;

SHOW CREATE TABLE users;
```
## 🔹 Default Constraint
Automatically assigns a value if none is provided
```sql
ALTER TABLE users 
MODIFY COLUMN is_active BOOLEAN DEFAULT TRUE;

SELECT * FROM users;
```
## 🔹 Drop Unique Constraint
Removes uniqueness restriction from a column
```sql
ALTER TABLE users DROP INDEX UK_unique;

SHOW INDEX FROM users;
```
## 🔹 Add Unique Constraint (2 Ways)
```sql
-- Using constraint name
ALTER TABLE users 
ADD CONSTRAINT UK_unique UNIQUE (email);

SHOW INDEX FROM users;

-- Direct method
ALTER TABLE users 
MODIFY COLUMN email VARCHAR(100) UNIQUE;
```
## 🔹 Check Constraint
Adds validation rule for data insertion
```sql
ALTER TABLE users 
ADD CONSTRAINT dob_check 
CHECK (date_of_birth > '1900-01-01');

SHOW CREATE TABLE users;
```
## 🔹 Drop Check Constraint
```sql
ALTER TABLE users 
DROP CHECK dob_check;

SHOW CREATE TABLE users;
```
# 📦 Database CRUD Operations (MySQL)
## Insert Operation 

## 🔹 Manual Data Insert (Maintain Column Order)

> ⚠️ You must follow the exact column order defined in the table.

```sql
INSERT INTO users 
VALUES (1, 'muzahid', 'muzahid@gmail.com', 'male', '2000-03-13', 50000, DEFAULT, DEFAULT);

SELECT * FROM users;
```
## Insert by Specifying Column Names
✅ No need to declare AUTO_INCREMENT or DEFAULT columns — MySQL handles them automatically.
```sql
INSERT INTO users (name, email, gender, date_of_birth, salary)
VALUES ('mahin', 'mahin@gmail.com', 'male', '2000-03-10', 70000);

SELECT * FROM users;
```
## 🔹 Insert Multiple Rows
🚀 Efficient way to insert multiple records in a single query.
```sql
INSERT INTO users (name, email, gender, date_of_birth, salary)
VALUES 
    ('miraz', 'miraz@gmail.com', 'male', '2000-04-10', 80000),
    ('prosit', 'prosit@gmail.com', 'male', '2000-05-10', 90000);

SELECT * FROM users;
```
# 📖 Database Read Operations (MySQL)

## 🔹 Read All Data
```sql
SELECT * FROM users;
```
## Table collumn allias and column name between space
column allius and set column name space
```sql
use sql_store;
select 
	customer_id,
    first_name,
    points,
    (points * 5) + 10 as 'discount amount'
from customers;
```
## find unique value
Find unique using distinct keyward
```sql
select distinct state from customers;
```

## Read Specific Column
```sql
SELECT name FROM users;
```
## 🔹 Comparison Operators
```sql
SELECT * FROM users WHERE id = 10;
SELECT * FROM users WHERE id <> 10;
SELECT * FROM users WHERE id != 10;
SELECT * FROM users WHERE id > 10;
SELECT * FROM users WHERE id >= 10;
SELECT * FROM users WHERE id < 10;
SELECT * FROM users WHERE id <= 10;
```
## 🔹 NULL & NOT NULL
Check if a column contains NULL values or not
```sql
SELECT * FROM users WHERE gender IS NULL;
SELECT * FROM users WHERE gender IS NOT NULL;
```
## 🔹 BETWEEN
Filter data within a range
```sql
SELECT * FROM users 
WHERE salary BETWEEN 50000 AND 80000;
```
## 🔹 🔹 AND / OR Conditions
AND → All conditions must be true
OR → At least one condition must be true
```sql
SELECT * FROM users 
WHERE gender = 'male' AND salary > 50000;

SELECT * FROM users 
WHERE gender = 'male' OR salary > 50000;
```
## 🔹 IN Operator
Filter multiple values in a column
```sql
SELECT * FROM users 
WHERE id IN (1, 2, 3, 4);
```
## 🔹 LIMIT & OFFSET
Control number of rows returned
```sql
SELECT * FROM users LIMIT 5;
SELECT * FROM users LIMIT 5 OFFSET 10;
SELECT * FROM users LIMIT 10, 5;
```
## 🔹 ORDER BY
Sort data in ascending or descending order
```sql
SELECT * FROM users ORDER BY name ASC;
SELECT * FROM users ORDER BY name DESC;
```
## 🔹 LIKE Operator
Pattern-based search
```sql
-- Ends with 'a'
SELECT * FROM users WHERE name LIKE '%a';

-- Starts with 'a'
SELECT * FROM users WHERE name LIKE 'a%';

-- Contains 'an'
SELECT * FROM users WHERE name LIKE '%an%';
```
# SQL REGEXP Examples

This document demonstrates the usage of `REGEXP` in SQL for pattern matching within string columns.

---

## 1. Find customers whose last name contains `hd` or `id`

```sql
SELECT *
FROM customers
WHERE last_name REGEXP '[h-i]d';
```
## 2. Find customers whose first name contains elka or ambur
```sql
SELECT * 
FROM customers
WHERE first_name REGEXP 'elka|ambur';
```
## 3. Find customers whose last name ends with ey or on
```sql
SELECT *
FROM customers
WHERE last_name REGEXP 'ey$|on$';
```
## 4. Find customers whose last name starts with my or contains se
```sql
SELECT *
FROM customers
WHERE last_name REGEXP '^my|se';
```
## 5. Find customers contains last name b followed by r, or u
```sql
SELECT *
FROM customers
WHERE last_name REGEXP 'br|bu';
```
# ✏️ Database Update Operations (MySQL)

## 🔹 Basic Update

> Update specific row using a condition

```sql
UPDATE users
SET name = 'Muzahid'
WHERE id = 1;

SELECT * FROM users;
```
```sql
-- Update using comparison
UPDATE users 
SET salary = 60000 
WHERE id > 5;
```
```sql
-- Update using AND condition
UPDATE users 
SET salary = 70000 
WHERE gender = 'male' AND salary < 50000;
```
```sql
-- Update using OR condition
UPDATE users 
SET salary = 80000 
WHERE gender = 'male' OR salary < 40000;
```
```sql
-- Update using BETWEEN
UPDATE users 
SET salary = 75000 
WHERE salary BETWEEN 50000 AND 70000;
```
```sql
-- Update using IN
UPDATE users 
SET name = 'Updated User' 
WHERE id IN (1, 2, 3);
```
```sql
-- Update using NULL check
UPDATE users 
SET gender = 'other' 
WHERE gender IS NULL;
```
```sql
-- Update using LIKE
UPDATE users 
SET name = 'Mr. User' 
WHERE name LIKE 'm%';
```
# 🗑️ Database Delete Operations (MySQL)

## 🔹 Basic Delete

> Delete a specific row using a condition

```sql
DELETE FROM users
WHERE id = 5;
```
##🔹 Delete with Conditions (Using Read Operations)
You can apply all WHERE conditions just like in SELECT
```sql
-- Delete using comparison
DELETE FROM users 
WHERE id > 10;
```
```sql
-- Delete using AND condition
DELETE FROM users 
WHERE gender = 'male' AND salary < 50000;
```
```sql
-- Delete using OR condition
DELETE FROM users 
WHERE gender = 'male' OR salary < 40000;
```
```sql
-- Delete using BETWEEN
DELETE FROM users 
WHERE salary BETWEEN 50000 AND 70000;
```
```sql
-- Delete using IN
DELETE FROM users 
WHERE id IN (1, 2, 3);
```
```sql
-- Delete using NULL check
DELETE FROM users 
WHERE gender IS NULL;
```
```sql
-- Delete using LIKE
DELETE FROM users 
WHERE name LIKE 'm%';
```

## Join
In SQL, JOINs are used to combine rows from two or more tables based on related
columns — usually a foreign key in one table referencing a primary key in another.
# 1. Inner join
Returns only the matching rows from both tables.
```sql
select order_items.order_id,products.name,order_items.quantity,order_items.unit_price
from order_items
inner join products on order_items.product_id=products.product_id;
```
# 2. Join accross database
join table from outsider database
```sql
select order_items.order_id,products.name,order_items.quantity,order_items.unit_price
from order_items
inner join sql_inventory.products on order_items.product_id=sql_inventory.products.product_id;
```
# 3. self join
A Self JOIN is a regular join, but the table is joined with itself.
```sql
SELECT a.employee_id, a.first_name as username,b.first_name as manager
from employees a
inner join employees b on a.reports_to=b.employee_id;
```
# 4. join multiple table
```sql
select orders.order_id,customers.first_name,customers.last_name,order_statuses.name
from orders
inner join customers on orders.customer_id=customers.customer_id
inner join order_statuses on orders.status=order_statuses.order_status_id;
```
# 5. composit join(two or mode primary key add to create a unique indentifire that's called composite key)
```sql
select * 
from order_items
join order_item_notes on order_items.order_id=order_item_notes.order_id and
						order_items.product_id=order_item_notes.product_id;
```
# 6. Implicit join 
```sql
select o.order_id,c.first_name
from orders o, customers c
where o.customer_id=c.customer_id;
```
# 7. Cross join
```sql
select o.order_id,c.first_name
from orders o, customers c
```

## 8. outer join(left and right)
outer join takes left table all data right join takes right table all data
```sql
select products.product_id,products.name,order_items.quantity
from products
left join order_items on products.product_id =order_items.product_id;
```
## 9. Natural join
```sql
select customers.first_name
from customers 
natural join orders;
```
## 10. using clause
```sql
select customers.first_name
from customers 
join orders using(customer_id);
```
### Union and union all(collaborate two select statement)
number of column and their data type will be same.
When performing cross-category reporting.
```sql
select name from customers
union
select name from clients;
```
## Duplicate table
```sql
create table invoices_archived as
select * from invoices;
truncate table invoices_archived;
insert into invoices_archived
select * from invoices
where date> '2019-01-01'

create table invoices_archived as
select * from inboices;
```
## Aggrigate function(sumarrized data)
sum(),avg(),upper(),lower(),count(),max(),min(),length(),mod(),group by,concat(),if()

# sum()
Returns the total sum of a numeric column.
```sql
SELECT SUM(salary) AS total_salary FROM employees;
```

# avg()
Returns the average value of a numeric column.
```sql
SELECT AVG(salary) AS avg_salary FROM employees;
```

# upper()
Definition: Converts text to uppercase.
```sql
SELECT UPPER(name) FROM employees;
```

# lower()
Definition: Converts text to lowercase.
```sql
SELECT SUM(salary) AS total_salary FROM employees;
```
# count()
Definition: Counts the number of rows.
```sql
SELECT COUNT(*) FROM employees;
```

# max()
Definition: Returns the maximum value.
```sql
SELECT MAX(salary) FROM employees;
```

# min()
Definition: Returns the minimum value.
```sql
SELECT min(salary) FROM employees;
```

# length()
Definition: Returns the length of a string (in bytes).
```sql
SELECT LENGTH(name) FROM employees;
```

# mod()
Definition: Returns the remainder of a division.
```sql
SELECT MOD(10, 3);  -- Output: 1
```

# Group by
Definition: Groups rows that have the same values into summary rows.
```sql
SELECT department, COUNT(*) 
FROM employees
GROUP BY department;
```

# concat
Definition: Joins two or more strings.
```sql
SELECT CONCAT(first_name, ' ', last_name) AS full_name 
FROM employees;
```

# if()
Definition: Returns a value based on a condition.
```sql
SELECT 
    name,
    IF(salary > 50000, 'High', 'Low') AS salary_status
FROM employees;
```

# round()
Definition: Rounds a number to a specified number of decimal places.
```sql
SELECT ROUND(5.678, 2);   -- Output: 5.68
SELECT ROUND(5.673, 2);   -- Output: 5.67
SELECT ROUND(5.5);        -- Output: 6
```

# ceil
Definition: Returns the smallest integer greater than or equal to the number (always rounds UP).
```sql
SELECT CEIL(5.1);   -- Output: 6
SELECT CEIL(5.9);   -- Output: 6
SELECT CEIL(-5.1);  -- Output: -5
```

# floor
Definition: Returns the largest integer less than or equal to the number (always rounds DOWN).
```sql
SELECT FLOOR(5.9);   -- Output: 5
SELECT FLOOR(5.1);   -- Output: 5
SELECT FLOOR(-5.1);  -- Output: -6
```
