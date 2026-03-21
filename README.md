# SQL-LEARNING 📚

A personal collection of SQL learning scripts and exercises using **PostgreSQL**, uploaded to GitHub for documentation and as a reference for my learning journey.

---

## 📖 About

This repository serves as a practical learning log for SQL. Each script covers a specific topic or concept, progressing from basic database creation to more advanced data manipulation. Keeping these scripts on GitHub helps me track my progress, revisit concepts, and maintain good documentation habits.

---

## 🎯 Purpose

- Document my SQL learning journey in a structured way
- Store practical, hands-on SQL scripts for future reference
- Build good habits around code documentation and version control
- Provide a resource that others who are learning SQL might find helpful

---

## 🗂️ Repository Structure

| File | Description |
|------|-------------|
| `1_DATASET_CREATION.sql` | Creates sample tables (`Categories`, `Products`, `Customer`, `Orders`) with relationships and inserts sample data |
| `1_DATASET_QUERYING.sql` | Practical SELECT queries covering filtering, sorting, and conditions |
| `2_DATA_MANIPULATION.sql` | INSERT, UPDATE, DELETE, TRUNCATE, and DROP operations |

---

## 🧠 Topics Covered

### Dataset & Schema Design
- Creating tables with primary keys, foreign keys, and constraints
- Defining appropriate data types (`SERIAL`, `VARCHAR`, `DECIMAL`, `TIMESTAMP`)
- Inserting sample data

### Querying Data
- `SELECT` statements (all columns and specific columns)
- Filtering with `WHERE`, `AND`, `OR`
- Sorting results with `ORDER BY` (ascending and descending)
- Combining multiple conditions

### Data Manipulation
- `INSERT INTO` — adding new records
- `UPDATE ... SET` — modifying existing records
- `DELETE FROM` — removing specific records
- `TRUNCATE` — clearing all table data efficiently
- `DROP TABLE` — removing a table entirely

---

## 🛠️ Database

These scripts are written for **PostgreSQL**. They can be run using tools such as:
- [pgAdmin](https://www.pgadmin.org/)
- [DBeaver](https://dbeaver.io/)
- [psql](https://www.postgresql.org/docs/current/app-psql.html) command-line tool

---

## 🚀 Getting Started

1. Install [PostgreSQL](https://www.postgresql.org/download/)
2. Create a new database (e.g., `sql_learning`)
3. Run the scripts in order:
   1. `1_DATASET_CREATION.sql` — set up the schema and sample data
   2. `1_DATASET_QUERYING.sql` — practice querying the data
   3. `2_DATA_MANIPULATION.sql` — practice manipulating the data

---

## 📝 Notes

- Scripts are numbered to indicate the recommended order of execution
- Comments are included inside the SQL files to explain each concept
- This repository will be updated as I continue learning new SQL topics

---

*Learning in public — one query at a time.* 🐘
