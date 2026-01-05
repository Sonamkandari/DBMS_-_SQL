# Interview Questions
---
**Q1: what is the difference between CHAR and VARCHAR2?**
- **Char:** char stores fixed-length data and pads extra spaces.
- **VARCHAR2:** VARCHAR2 stores variable-length data, saving storage space. 
---
**Q2: what is View in SQL?**
- A view is a virtual table created by a select query. It does not store data itself but presents data from one or more tables in a structured way. Views simplify complex queries, improve readability, and enhance security by restricting access to specific rows and columns.

- If any changes are made in the base table, they are automatically reflected in the view.
- An **updatable view** allows INSERT, UPDATE, or DELETE operations on the view, and those changes are reflected in the base table.
- We create an updatable view to allow modifications through the view.
- **Materialized View**: A materialized view is a database object that stores the result of a query physically on disk.
- 👉 Unlike a normal VIEW (virtual table), a materialized view actually stores data.
- if we had created views we can only apply DML command on it we can't apply DDL command on it
---
- ## Advantages of View
<img width="635" height="402" alt="image" src="https://github.com/user-attachments/assets/cf22f9ec-801c-4b18-89cb-d089a65e1c89" />

---
**Q3: what is the purpose of the UNIQUE Constraint?**
- The UNIQUE constraint ensures that all values in a column or a combination of columns are distinct. It prevents duplicate values and helps maintain data integrity.
- **Key Points to Remember**
- A table can have multiple UNIQUE constraints
- UNIQUE allows NULL values ->(Most DBMS allow multiple NULLs because NULL ≠ NULL)
- UNIQUE ensures data uniqueness, not row identity -> (That’s the job of PRIMARY KEY)
---
**Q4: What is a composite primary key?**
- A composite primary key uses two or more columns together to uniquely identify each row when one column alone isn’t sufficient.
---
**Q5: Explain the Difference between where and having clause ?**
- 🔹 **WHERE**
- Filters individual rows
- Applied before GROUP BY and aggregation
- Cannot use aggregate functions (SUM, COUNT, AVG, etc.)
- Best for reducing raw data early (date range, status, category)

🔹**HAVING**
- Filters groups
- Applied after GROUP BY
- Can use aggregate functions
- Used for conditions on aggregated results (totals, counts, averages)
---
**Q6: what are SQL Joins, and what are the differences between inner, left, right, and full join?**
- SQL joints combine rows from two tables based on the matching condition (typically keys) to answer questions that span both tables.
- **Inner join** returns only the matches that exist in both tables( **the intersection**).
- The **left join** returns all the rows from the left table and the matching rows from the right table. Where there is no match, right-side columns are null. 
- The **right join** is the mirror image of all the rows from the right table, plus matches from the left table when Absent.
- A full outer join returns all the rows from both tables, filling in NULL where a counterpart is missing.
---
**Q7: describe a primary key and how it differs from the unique key. ?
PRIMARY KEY**

-🔹 PRIMARY KEY
- Uniquely identifies each row in a table
- Implicitly enforces UNIQUE + NOT NULL
- Only one primary key per table
- Can be composite (multiple columns)
- Default target for FOREIGN KEY references
- 🔹 UNIQUE Key
- Ensures uniqueness of values
- NULL values are allowed
- Multiple UNIQUE constraints can exist in a table
- Used for enforcing business rules (email, phone number, etc.)
---
