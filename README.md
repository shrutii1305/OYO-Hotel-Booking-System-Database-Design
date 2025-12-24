# OYO-Hotels Booking System Database Design
Relational database design for an OYO hotel booking system using MySQL

![ETB_DBMS-OYO-Hotel-Booking-System](ER_diagram.png)

## Overview
1. This project is a MySQL-based relational database established that models a simplified version of an online hotel booking company, specifically OYO. 
2. Manage data for hotels, hotel rooms, customer profiles, booked rooms, payment records for booked rooms, customer reviews about booked rooms, staff members who worked at each hotel, amenities associated with each property, and loyalty program options from these hotels. 
3. This project is centered on the design of a clear database, having appropriate relationships between tables within the database, as well as the creation of relevant SQL statement queries used to analyze the data contained within the database.
## Objectives
The objective of this project is to design and implement a relational database system for an OYO-style hotel management platform using SQL. The project aims to:

⦁ Store and manage hotel, room, and customer information.

⦁	Handle bookings, payments, and customer reviews efficiently.

⦁	Maintain hotel staff and loyalty program data.

⦁	Apply core SQL concepts such as DDL, DML, joins, aggregate functions, subqueries, and date functions.

⦁	Simulate real-world hotel booking and management operations.

## Tools Used
MySQL,
MySQL Workbench,
SQL
## Database Tables
This database consists of many tables. The tables include hotel detail information , room detail information specific by hotel type, customer detail information , booking detail record information by customer, payment transaction information , customer feedback on hotels, staff employed by hotels, an inventory of amenities that hotels provide , and a listing that links up hotels with those amenities . The database also contains customer loyalty program information .
## Table Relationship
1. A single hotel may offer a variety of accommodations (Rooms). 
2. A single customer may book several dates/times (Multiple Bookings). 
3. Every Booking has exactly one Payment associated with it. (Payments).
 4. Each Booking is eligible for one Review (Reviews). 
5. A single hotel may employ many people (Multiple Staff Members). 
6. Hotels and Amenities exist in a Many to Many association.

## ER Diagram

An ER diagram is a graphical depiction of the:
1.	All related entities alongside the associated attributes.
2.	The associated primary and foreign keys.
3.	Relationships between tables.
4.	The included analysis.
5.	SQL queries from this project are used to analyze the:
6.	Revenue produced for every hotel.
7.	Booking information along with Customer and Hotel Details.
8.	Generally average ratings of hotels.
9.	Individual booking history and current booking status.
10.	Available amenities at each respective hotel.
## Project Structure
1.	oyo-sql-project/
2.	oyo_database.sql
3.	queries.sql
4.	ER Diagram.png
5.	README.md
## Conclusion
This project demonstrates a strong understanding of relational database concepts and SQL querying.
It effectively models a real-world hotel booking system using structured tables and well-defined relationships.
