# SQL-LEARNING 📚

Hands-on SQL practice scripts built with **PostgreSQL**.

This repository is a structured learning path that progresses from schema creation through querying, data manipulation, aggregation, built-in functions, analytical (window) functions, and views with stored procedures.

## Purpose

- Practice SQL fundamentals and advanced features with real examples
- Keep learning scripts organized for quick revision
- Track progress while learning SQL step by step

## Repository Files

| # | File | Topics Covered |
|---|------|----------------|
| 1 | `1_DATASET_CREATION.sql` | Create tables (`Categories`, `Products`, `Customer`, `Orders`), define primary/foreign keys, and insert sample data |
| 2 | `1_DATASET_QUERYING.sql` | Basic `SELECT` queries, filtering with `WHERE`, `AND`, `OR`, and sorting with `ORDER BY` |
| 3 | `2_DATA_MANIPULATION.sql` | `INSERT`, `UPDATE`, `DELETE`, `TRUNCATE`, and `DROP` |
| 4 | `3_ADVANCED_DATA_QUERYING.sql` | `JOIN`s, `UNION` / `UNION ALL`, `CASE`, `GROUP BY`, and `HAVING` |
| 5 | `3_DATA_AGGREGATION_FUNCTIONS.sql` | `COUNT`, `SUM`, `MAX`, `MIN`, `AVG`, and `STDDEV` |
| 6 | `4_DATABASE_FUNCTIONS.sql` | Math functions (`ABS`, `ROUND`, `SQRT`) and date functions (`CURRENT_DATE`, `EXTRACT`, `DATE_PART`) |
| 7 | `5_ANALYTICAL_FUNCTIONS.sql` | Window functions: `RANK`, `DENSE_RANK`, `ROW_NUMBER`, `LAG`, `LEAD`, running totals, and moving averages with `OVER` / `PARTITION BY` |
| 8 | `6_VIEWS_AND_STORED_PROCEDURES.sql` | Creating and querying views, and writing stored procedures to encapsulate reusable logic |
| 9 | `7_INDEXES_AND_PERFORMANCE.sql` | Creating standard, unique, and composite indexes, analyzing query performance with `EXPLAIN ANALYZE`, and inspecting index usage via `pg_stat_user_indexes` |
| 10 | `8_USERS_AND_ROLES.sql` | Creating roles and users with `CREATE ROLE` / `CREATE USER`, assigning privileges (`superuser`, `createdb`, `createrole`, connection limits, expiry), granting and revoking permissions with `GRANT` / `REVOKE`, and managing access via role hierarchies |
| 11 | `9_NULL_VALUES.sql` | Handling `NULL` with `IS NULL` / `IS NOT NULL` filters and understanding `NULL` behaviour in boolean expressions |
| 12 | `10_REAL_WORLD_DEBUGGING.sql` | Real-world SQL debugging: identifying `NULL` values propagating through calculations, tracing the source across joined tables, and applying targeted fixes |

## Topics Covered

- Table creation with primary keys and foreign keys
- Querying and filtering data
- Modifying and removing data
- Joining tables and combining result sets
- Aggregation and grouped analysis
- Built-in mathematical and date functions
- Analytical (window) functions for ranking and running calculations
- Views and stored procedures for reusable, simplified queries
- Indexes for performance optimization and query analysis
- User and role management with fine-grained permission control
- Handling `NULL` values and understanding `NULL` in expressions
- Real-world debugging: tracing and fixing `NULL` propagation in queries

## Getting Started

1. Install [PostgreSQL](https://www.postgresql.org/download/).
2. Create a new database (for example, `sql_learning`).
3. Run the SQL files in the order listed below:
   1. `1_DATASET_CREATION.sql`
   2. `1_DATASET_QUERYING.sql`
   3. `2_DATA_MANIPULATION.sql`
   4. `3_ADVANCED_DATA_QUERYING.sql`
   5. `3_DATA_AGGREGATION_FUNCTIONS.sql`
   6. `4_DATABASE_FUNCTIONS.sql`
   7. `5_ANALYTICAL_FUNCTIONS.sql`
   8. `6_VIEWS_AND_STORED_PROCEDURES.sql`
   9. `7_INDEXES_AND_PERFORMANCE.sql`
   10. `8_USERS_AND_ROLES.sql`
   11. `9_NULL_VALUES.sql`
   12. `10_REAL_WORLD_DEBUGGING.sql`

## Notes

- Files are numbered to reflect the recommended learning order.
- SQL comments inside each file explain every query and concept.
- The repository will continue to grow as new SQL topics are explored.
