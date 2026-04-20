-- Basic
-- Database: Database is a way to store data in a formate which is easily accessable
-- Queary: Set of command we use on database
-- DBMS: Database Management System. We are not directly interect database through DBMS we interect on database
-- # SQL vs NoSQL Database

-- ## 📌 Overview
-- -- This document explains the key differences between SQL (Relational) and NoSQL (Non-Relational) databases, including their structure, features, and use cases.

-- ---

-- ## 🧾 SQL Database (Relational)

-- -- SQL databases store data in **tables (rows and columns)** with a fixed structure called a schema.

-- ### 🔹 Examples
-- - MySQL
-- - PostgreSQL
-- - Microsoft SQL Server
-- - Oracle

-- ### 🔹 Features
-- - Structured data format (tables)
-- - Fixed schema (predefined structure)
-- - Uses SQL (Structured Query Language)
-- - Supports relationships using JOINs
-- - Follows ACID properties (high reliability)

-- ### 🔹 Use Cases
-- - Banking systems
-- - E-commerce applications
-- - Accounting systems

-- ---

-- ## 📦 NoSQL Database (Non-Relational)

-- NoSQL databases store data in **flexible formats** such as documents, key-value pairs, graphs, or columns.

-- ### 🔹 Examples
-- - MongoDB
-- - Firebase Firestore
-- - Cassandra
-- - Redis

-- ### 🔹 Features
-- - Unstructured or semi-structured data
-- - Dynamic schema (no fixed structure)
-- - Horizontally scalable (handles large data easily)
-- - Faster for big data and real-time apps
-- - No complex JOIN operations

-- ### 🔹 Use Cases
-- - Social media applications
-- - Real-time chat apps
-- - Big data systems
-- - IoT applications

-- ---

-- ## ⚖️ SQL vs NoSQL Comparison

-- | Feature       | SQL Database              | NoSQL Database            |
-- |--------------|---------------------------|---------------------------|
-- | Structure     | Tables (rows & columns)   | Document / Key-Value etc. |
-- | Schema        | Fixed                     | Flexible                  |
-- | Language      | SQL                       | API / Query varies        |
-- | Scalability   | Vertical scaling          | Horizontal scaling        |
-- | Relationships | Strong (JOINs)            | Limited or no JOINs       |
-- | Best For      | Structured data           | Large & dynamic data      |

-- ---

-- ## 🎯 Summary
-- - **SQL** → Structured, reliable, strict schema
-- - **NoSQL** → Flexible, scalable, fast for big data

-- ---

-- database creation
create database startersql;

-- use database
use startersql;

-- database drop
drop database startersql;

-- create table 
create table users(
	id int primary key auto_increment,
    name varchar(100) not null,
    email varchar(100) unique not null,
    gender enum('male','female','other'),
    date_of_birth date,
    salary decimal(10,2),
    created_at timestamp default current_timestamp
    );
    
-- View table
select * from users;

-- drop table 
drop table users;

-- select specefic column only
select name from users;

-- rename table_name
rename table users to programmer;
rename table programmer to users;

-- Modify table useing alter table
-- rename column
alter table users rename column SALARY to salary;
select * from users;

-- add column
alter table users add column is_active boolean default true;
select * from users;

-- modify column position
alter table users modify column id int after salary;
alter table users modify column id int first;
select * from users;


-- change data column data type
alter table users modify column salary int;
show create table users;

-- drop column 
alter table users drop column is_active;
select * from users;

-- Drop Primary key(Unique identifire each table). If you want to drop primary key you to to drop auto_increment
alter table users drop primary key;
show create table users;

-- Drop auto-increment constraint
alter table users modify column id int;
show create table users;

-- Add primary key(2 way)
alter table users add constraint PK_id primary key (id);
show create table users;
alter table users add primary key (id);
show create table users;

-- change not null and null constraint using alter table
alter table users modify column name varchar(100) not null;
show create table users;

-- Default constraint (if user not insert value automatic set default value)
alter table users modify column is_active boolean default true;
select * from users;

-- Drop unique constraint(each identifire of each column)
alter table users drop index UK_unique;
show index from users;

-- add unique constraint(2 way)
alter table users add constraint UK_unique unique (email);
show index from users;
alter table users modify column email varchar(100) unique;

-- check constraint( add extra rules for data inserting)
alter table users add constraint dob_check check (date_of_birth > '1900-01-01');
show create table users;

-- drop check constraint 
alter table users drop check dob_check;
show create table users;

-- Database CRUD operation
-- manually data insert(you have to maintain order)

insert into users values(1,'muzahid','muzahid@gmail.com','male','2000-03-13',50000,default,default);
select * from users;

-- Insert by Specifying Column Names (not need to declear auto_increment and default colum. Mysql handle automitically)
insert into users(name,email,gender,date_of_birth,salary)
	values('mahin','mahin@gmail.com','male','2000-03-10',70000);
select * from users;

-- Insert by Specifying Column Names (Multiple row)
insert into users(name,email,gender,date_of_birth,salary)
	values('miraz','miraz@gmail.com','male','2000-04-10',80000),
		  ('prosit','prosit@gmail.com','male','2000-05-10',90000);
select * from users;

-- Read data from database
-- Read all data
select * from users;

-- column allius and set column name space
use sql_store;
select 
	customer_id,
    first_name,
    points,
    (points * 5) + 10 as 'discount amount'
from customers;

-- Find unique using distinct keyward
select distinct state from customers;

-- Read specific column
select name from users;

-- Equal, not equal Grater than, Less than and Grether than or equa , Less than or equal 
select * from users where id=10;
select * from users where id<>10;
select * from users where id!=10;
select * from users where id>10;
select * from users where id>=10;
select * from users where id<10;
select * from users where id<=10;

-- Read Null(if any value null show this row) or not null(show not null value only)
select * from users where gender is null;
select * from users where gender is not null;

-- Between(you can see all row whice salary range will match)
select * from users where salary between 50000 and 80000;

-- And(all condition will satisfy), Or(one condition satisfy get result)
select * from users where gender='male' and salary>50000;
select * from users where gender='male' or salary>50000;

-- In (you can see those id column only)
select * from users where id in(1,2,3,4);

-- limit(how many users row you want to show) and offset(how many row will skip)
select * from users limit 5;
select * from users limit 5 offset 10;
select * from users limit 10,5;

-- Order by(you can show data alphabatic desending or ascending order wise)
select * from users order by name asc;
select * from users order by name desc;

-- Like (you can search with specific value like (end with a, start with a, contain 'muzahid'
select * from users where name like('%a');
select * from users where name like('a%');
select * from users where name like('%an%');

-- Update (Apply all read operation )
update users
set name='Muzahid'
where id = 1;
select * from users;

-- Delete (apply all read operation)
delete from users
where id = 5;

