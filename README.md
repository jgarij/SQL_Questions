🗄️ SQL Practice Problems – From Basics to Advanced
📌 Overview

This repository contains my solutions to a wide range of SQL practice problems, organized from basic to advanced levels.
The aim of this project is to build strong expertise in writing optimized SQL queries and applying them to solve real-world data problems.

I have practiced and solved 150+ SQL problems that cover everything from fundamental queries to complex analytical use cases.

🛠️ Topics Covered

SQL Basics: SELECT, WHERE, ORDER BY, DISTINCT

Aggregations: GROUP BY, HAVING, aggregate functions (SUM, COUNT, AVG)

Joins: INNER, LEFT, RIGHT, FULL joins

Subqueries: Scalar subqueries, correlated subqueries

Common Table Expressions (CTEs): Simple and Recursive CTEs

Window Functions: ROW_NUMBER, RANK, DENSE_RANK, LAG, LEAD, NTILE, Frame Clause

Advanced SQL: Date/time functions, conditional expressions, query optimization

📁 sql-practice
 ┣ 📜 SQL-Basics.sql                # Beginner level queries
 ┣ 📜 SQL-Intermediate.sql          # Intermediate concepts
 ┣ 📜 SQL-Advance.sql               # Advanced SQL queries
 ┣ 📜 CombinationOfBasicToAdvance.sql # Mixed-level practice
 ┗ 📜 README.md


🚀 Example Queries

🚀 Example Queries
1️⃣ Retrieve employees who earn more than the average salary
SELECT name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

2️⃣ Find the second highest salary using DENSE_RANK
SELECT name, salary
FROM (
    SELECT name, salary, DENSE_RANK() OVER (ORDER BY salary DESC) AS rnk
    FROM employees
) t
WHERE rnk = 2;

3️⃣ Recursive CTE to display employee hierarchy
WITH RECURSIVE EmployeeHierarchy AS (
    SELECT id, name, manager_id
    FROM employees
    WHERE manager_id IS NULL
    UNION ALL
    SELECT e.id, e.name, e.manager_id
    FROM employees e
    INNER JOIN EmployeeHierarchy eh ON e.manager_id = eh.id
)
SELECT * FROM EmployeeHierarchy;

🏆 Achievements

Solved 200+ SQL problems covering beginner to advanced topics.

Built structured files for step-by-step SQL mastery.

Strengthened expertise in window functions, recursive queries, and optimization techniques.

Created a personal SQL knowledge base that can be reused for interviews and real-world projects.

🔗 How to Use

Clone the repository:

git clone https://github.com/yourusername/sql-practice.git


Open any .sql file in your SQL environment (MySQL, PostgreSQL, etc.).

Run queries and test with your own datasets.

✨ This repository serves as my SQL portfolio project and showcases my journey from basics to advanced concepts.

