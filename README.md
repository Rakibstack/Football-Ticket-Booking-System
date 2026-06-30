# ⚽ Football Ticket Booking System - Database Design

## 📌 Project Overview

This project is a relational database design for a **Football Ticket Booking System**.

The system manages football fans, tournament matches, and ticket booking transactions.

The main purpose of this project is to practice:

* Database design
* ERD modeling
* Primary Key & Foreign Key relationships
* Data integrity constraints
* SQL queries
* JOIN operations
* Subqueries
* Aggregation
* NULL handling
* Pagination

---

## 🛠️ Technologies Used

* PostgreSQL
* SQL
* Beekeeper Studio
* Draw.io (ERD Design)

---

## 🗂️ Database Schema

The database contains three main tables:

### 1. Users Table

Stores all registered users including football fans and ticket managers.

Columns:

* `user_id` (Primary Key)
* `full_name`
* `email`
* `role`
* `phone_number`

---

### 2. Matches Table

Stores tournament match information and ticket availability.

Columns:

* `match_id` (Primary Key)
* `fixture`
* `tournament_category`
* `base_ticket_price`
* `match_status`

---

### 3. Bookings Table

Stores ticket purchase records and connects users with matches.

Columns:

* `booking_id` (Primary Key)
* `user_id` (Foreign Key)
* `match_id` (Foreign Key)
* `seat_number`
* `payment_status`
* `total_cost`

---
## 📁 Project Structure

```
football-ticket-booking-db/

│
├── schema.sql
│
├── seed.sql
│
├── queries.sql
│
└── README.md

```

---

## 🧱 SQL Files Description

### schema.sql

Contains:

* Database table creation
* Primary keys
* Foreign keys
* Constraints

### seed.sql

Contains:

* Sample users data
* Sample matches data
* Sample booking records

### queries.sql

Contains SQL solutions for:

* Filtering data
* Pattern matching
* NULL handling
* INNER JOIN
* LEFT JOIN
* Subquery
* Sorting and Pagination

---

## 🚀 Query Concepts Practiced

| Concept         | Example                    |
| --------------- | -------------------------- |
| WHERE Filtering | Available matches          |
| LIKE / ILIKE    | User search                |
| COALESCE        | NULL handling              |
| INNER JOIN      | Booking details            |
| LEFT JOIN       | Users without booking      |
| Subquery        | Above average booking cost |
| LIMIT/OFFSET    | Pagination                 |

---

## 🎯 Learning Outcome

Through this project, I improved my understanding of:

* Relational database architecture
* Entity relationships
* Data consistency
* Writing optimized SQL queries
* Real-world database modeling

---

## 👨‍💻 Author

Rakibul Hasan

Web Developer
