# SQL_AND_DBMS

---
# Lecture -1
---
# Basics
* **Databases**: A database is a container used to store data.
  ![Databases](https://github.com/user-attachments/assets/1b5a5f19-2b96-4579-a7ea-8b29845e1344)
* **SQL**: SQL (Structured Query Language) is used to communicate with databases.
* **DBMS**: A Database Management System is software used to manage data.
* **Server**: A server is a machine where a database resides.

---

# Database Types

* **RDBMS**: Relational Database Management System
  ![RDBMS](https://github.com/user-attachments/assets/5d36ef08-a8cb-4143-8663-2f94586ddd48)
* **Key-Value Database**
* **Column-Based Database**: An advanced version of a database optimized for analytical queries.
* **Graph Database**: Focuses on the relationships between objects and how to connect data points.
* **Document Database**: Data is stored as complete documents. The structure is flexible; the goal is to store everything in one document.

<img width="916" height="515" alt="image" src="https://github.com/user-attachments/assets/6dbe5733-4f0b-4418-a6a7-8c3cbc383428" />

---

## Relational Databases

* Microsoft SQL Server
* MySQL
* PostgreSQL

## Database Structure

* A server contains multiple databases.
* Databases contain schemas.
* Schemas contain tables and columns.

## Data Types

* Numeric Data Types
* Text Data Types
* Date and Time Data Types
  ![Data Types](https://github.com/user-attachments/assets/282c9bbb-ed05-4cf8-b77f-60cfd892e14c)

---
# Lecture 2
---
## Types of SQL Commands
 ### DDL commands (Data Defination language command)
 
* **Note** :At the beginning, when the database is empty, we define new structures like tables using commands such as CREATE and ALTER. These commands are part of DDL (Data Definition Language), which is used to create or modify the structure of the database.
  <img width="572" height="455" alt="image" src="https://github.com/user-attachments/assets/8670a833-a1e7-4bf2-9eff-e4a50d76b770" />

### DML commands (Data Manipulation language  Commands)

### TCL Commands (Transmission Control language commands)
---
<img width="916" height="514" alt="image" src="https://github.com/user-attachments/assets/acd2f4bc-2bc5-4eef-8c0f-6259e0ab6e35" />

---
* Why we learn SQL

- To communicate with data — SQL is the standard language used to interact with databases.

- High demand in the industry — SQL skills are essential for roles like data analysis, data engineering, backend development, and more.

- Industry standard — SQL is widely used across companies and is the most common language for managing and querying relational databases.
---
<img width="787" height="516" alt="image" src="https://github.com/user-attachments/assets/ebade717-15fd-4cc7-960a-a766c0228faf" />
---

## Summary
<img width="956" height="528" alt="image" src="https://github.com/user-attachments/assets/33e4518b-6ac3-46dc-86ae-808cc7a64c9d" />

---
* learned about all the basics queries 
* select , where clause, having clause, order by , or Group by 
<img width="507" height="398" alt="image" src="https://github.com/user-attachments/assets/0c8d5dfa-02e3-46c3-b03a-d585f9a55f89" />

---
## 📌 SQL Important Points (Interview-Friendly)

### 🚩 SQL Clause
- A clause is a component of an SQL query (e.g., `SELECT`, `WHERE`, `GROUP BY`, `HAVING`).
- Each clause performs a specific function in the query.
- Clauses must follow the correct SQL order.

---

### 🚩 HAVING Clause
- Used to filter **aggregated/grouped** data.
- Applied **after** `GROUP BY`.
- Supports aggregate functions (`SUM`, `COUNT`, `AVG`, etc.).
- `WHERE` filters **before** aggregation; `HAVING` filters **after**.

---

### 🚩 Filtered Aggregated Data
- Refers to filtering data **after aggregation**.
- Can be done only using the **HAVING** clause.

---

### 🚩 HAVING – Key Rules
- Works with `GROUP BY` or aggregate functions.
- Used to apply conditions on aggregated values.
- Used for post-aggregation filtering.

---

### 🚩 DISTINCT Keyword
- Removes duplicate rows from the result.
- Returns only **unique** values.
- Works on one or multiple columns.
- Treats multiple `NULL` values as duplicates (keeps only one).


---
## ❗ Important

### 🤔 If we already have the WHERE clause for filtering, why do we need the HAVING clause?

- **WHERE** is used to filter rows **before** any aggregation happens.
- **HAVING** is used to filter results **after** the data has been aggregated (i.e., after `GROUP BY`).

---  
<img width="666" height="216" alt="image" src="https://github.com/user-attachments/assets/fa433ace-ddd6-4a8d-82f9-b07c8bd42dfe" />

- ---
### 🔹 DISTINCT Keyword — Key Points

- The **DISTINCT** keyword removes duplicate values from the result set.
- It ensures that **each value appears only once**.
- Acts like a filter that returns only **unique** rows.

#### Example:

```sql
SELECT DISTINCT country FROM customers;
```

---
### 🔹 TOP / LIMIT Clause

- The **TOP** (SQL Server) or **LIMIT** (MySQL, PostgreSQL) clause is used to **restrict the number of rows returned** by a query.
- Helpful when you only want a small subset of results, such as the first 5 or 10 rows.

---

### 🔹 What is a SQL Clause?

- A **SQL clause** is a part of an SQL statement that tells the database **what action to perform**.
- Examples of clauses include: `SELECT`, `WHERE`, `GROUP BY`, `HAVING`, `ORDER BY`, `LIMIT/TOP`.


<img width="551" height="555" alt="image" src="https://github.com/user-attachments/assets/97a4f75e-8eb8-434e-b527-27ec68640212" />

---
conclusion
<img width="642" height="404" alt="image" src="https://github.com/user-attachments/assets/3a443bfd-e30e-4bac-a37e-92821711f4ef" />
---
# SQL DML Commands |Inser, Update , & Delete |
- for example insert command can be used to insert new data inside a table in a database
# Manually Entry (Fisrt Method to insert Data)
<img width="626" height="246" alt="image" src="https://github.com/user-attachments/assets/a6c127a4-9ebf-4850-a780-5837cac905a1" />

- sysntax is:**Insert into table_name (Solumn1,column2,column3) values(value1,value2,value3)**
- **Note**: forxample if no columns are specified SQL expects values for all columns
- <img width="928" height="436" alt="image" src="https://github.com/user-attachments/assets/1754efe3-a994-4a80-a8f9-9e507e341d8f" />

# Inserting data using Another table (Another Method to insert Data)
- using a source table for inserting the data into a target table
- <img width="694" height="279" alt="image" src="https://github.com/user-attachments/assets/0f724c7c-48c5-46b9-919f-60099292f685" />

* SQL task copy data from 'Customers' table into 'persons'
* <img width="636" height="523" alt="image" src="https://github.com/user-attachments/assets/4afc75d5-a7e1-4f8f-b3d9-fb893ddb8ccd" />
* Modify (manipulate) your data
* Update table_name set column1=value1, column2= value2 where <condition>
* Delete commands
* <img width="638" height="335" alt="image" src="https://github.com/user-attachments/assets/0a0a7737-f802-4f0f-82ce-f6f855a68404" />

-- delete all data from tables persons
- if we want to delete everything (or all the data from the table ) we can use truncate command
- Truncate : it clears the whole table at once without checking or logging
- <img width="495" height="219" alt="image" src="https://github.com/user-attachments/assets/189fb180-562a-4099-a22b-e989dd7ce55a" />
---
<img width="904" height="445" alt="image" src="https://github.com/user-attachments/assets/b3324edd-c5cd-439c-bef3-ca693d316c62" />

---
# Comparison Operators
* -  equals = checks two values are equal
* - Not equals <>!= checks if two values are not equal
* - greater
* -  greater than or equals to operator
* - lesser than operator
* -  ess than or equals to operator
# Logical operator
* -  And operator : All condition must be true
* -  or operator : Atleast  one condition must be true aot of all the condition
* -  Not operator :reverse  operator it will excludes the matching values
# Range operator
* -  Between : check whether an values falls between a specific range or not
* -  Explicit comparisons clearly show that both boundries are included
# Membership Operator
* -  In Operator :  it gonna check if the value exixts in a list or not
* -   Not In
# Search operator
1) Like :we can use it to find or search for a pattern in text
   <img width="750" height="337" alt="image" src="https://github.com/user-attachments/assets/6684b7ec-ea19-4fa8-9e2e-08d96389810b" />

---
# Joins
<img width="945" height="506" alt="image" src="https://github.com/user-attachments/assets/3ea012a0-c79a-47dc-888f-6f659caacf0f" />

# what are joins
<img width="653" height="502" alt="image" src="https://github.com/user-attachments/assets/bf5ef8cf-b394-447b-8362-9b4aeadb69c6" />

# why we need SQL joins
### Recombine Data
- This means **merging or joining data** from multiple sources or tables into one combined dataset.
- <img width="908" height="461" alt="image" src="https://github.com/user-attachments/assets/7c57ce2c-068c-4228-a86c-283f367b32aa" /> 
- Example: Combining customer details from one table with their order history from another to get a full view of each customer.  

### Data Enrichment (Getting Extra Data)
- **Enhancing existing data** by adding extra information from external or internal sources.
-  <img width="881" height="439" alt="image" src="https://github.com/user-attachments/assets/d03a33de-1999-45f7-8979-6b1bdfa1bf90" />
- Example: Adding location, age group, or social media info to customer records to make the data more useful for analysis.  

### Check for Existence (Filtering)
- **Verifying or filtering data** to keep only the records that meet certain conditions.
- <img width="932" height="437" alt="image" src="https://github.com/user-attachments/assets/1739fc6c-6cf3-478e-8bda-0ff77f41aadf" />
- Example: Filtering out customers who don’t have an email address or checking if a product ID exists before processing it.
-  Summary
-  <img width="773" height="517" alt="image" src="https://github.com/user-attachments/assets/1570d949-ddff-4ad7-a21f-974c992e706c" />
### All the Types of joins
<img width="630" height="538" alt="image" src="https://github.com/user-attachments/assets/831849f2-4fe8-4a16-aaff-01629ce3091c" />

## Inner join' Return Only matching Rows From both tables
<img width="662" height="396" alt="image" src="https://github.com/user-attachments/assets/45c2d6b8-9bf3-4f6f-8188-d2cdac400431" />

--- how we implimented it
<img width="899" height="359" alt="image" src="https://github.com/user-attachments/assets/b962eadf-b076-410d-ba9d-c12e340f04d9" />
-** how does inner join work ?**
- In an INNER JOIN, each ID from the left table is compared with every ID in the right table. Only the rows with matching IDs in both tables are included in the output.
- we can use inner join either to combines data of multiple tables
- also we can use inner join only for filtering purposes
  ## Left Join
   - left   join will returns all the rows from left and only matching from right
   - Note here order of the data is very important we have always start with the correct table
  <img width="675" height="355" alt="image" src="https://github.com/user-attachments/assets/feea9fce-78de-4aad-91b7-e9a5b17b5371" />
## Right join
 - this is the totally opposite of the left join
 - It Return all the Rows from the right and only matching from left
   <img width="911" height="489" alt="image" src="https://github.com/user-attachments/assets/4187c0db-aead-42dc-867f-c707d0f95a3d" />
- **Note** : In place of right join, it is always preferred to use left join
- by changing the left and right tables
 ## Full join
 - Returns all rows from both tables
 - <img width="758" height="393" alt="image" src="https://github.com/user-attachments/assets/59ca29c2-86a9-45a7-b6d2-3a61f9ece73a" />

---
# Advance SQL  joins
- **Left Anti join**
- Returns row from left that has no match in right
- <img width="712" height="403" alt="image" src="https://github.com/user-attachments/assets/3046de1a-9977-48df-ba94-d0be516e70bc" />
  - we are getting the data from the left side where there are no match in the right side
  - - **syntax:** is you normally do the left join and then use the filter using the where clause

- **Right anti join**
- returns rows from right that has no match in left
<img width="628" height="355" alt="image" src="https://github.com/user-attachments/assets/6c34b641-f17c-4b52-8792-d4d53c0d5c07" />

- **Full Anti join**
- Return only rows that dont match in either tables
<img width="736" height="424" alt="image" src="https://github.com/user-attachments/assets/729076c2-8ab8-4bd8-b738-4be81c039bd5" />
---
 ## Note
- MySQL does not recognize the FULL JOIN keyword, unlike other database systems like PostgreSQL and SQL Server. When the MySQL parser encounters this syntax, it produces an error because it is an invalid command

# full anti join is used for checking -> (Check Existence)

- Get all customers along with their orders but only for customers who placed an order (without using IIner join)

## Cross join
- we tru to combine Every row from the left with Every row from right  All possible combinatitions

---
- summary
- <img width="727" height="360" alt="image" src="https://github.com/user-attachments/assets/bf70cbdb-32a0-4a3f-ba07-a5ca9292dce3" />
---
# multi join
## How to join multiple tables
<img width="736" height="351" alt="image" src="https://github.com/user-attachments/assets/04a9182f-3507-4280-b143-6157ba1b96ff" />

### Using SalesDB, Retrieve a list of all orders, along with the related customer, prduct and employee details

---
- 8|NOV|2025
- ## joins and set operators
- <img width="696" height="374" alt="image" src="https://github.com/user-attachments/assets/21294cf6-fee5-48bc-83f2-6cf4325f6c78" />
---
## when we use joins 
- when we required to join different columns we use joins
## when we use set operators 
- when we required to join different rows we use set operators
---
# syntax of set operators
<img width="577" height="261" alt="image" src="https://github.com/user-attachments/assets/c87b5777-8af1-49ce-9ab9-aa0ee6f8d8a2" />

---
# Rules of the set operators
- **Rule1: SQL Clauses**
- SET Operator can be used almost in all clauses WHERE|JOIN|GROUP BY|HAVING
- Order By is allowed only once at the end of the query
- <img width="596" height="394" alt="image" src="https://github.com/user-attachments/assets/396858bf-d24b-4828-ac5b-88d3a5dcc783" />
---
- **Rule2: Number of cloumns**
- The number of columns in each query must be the same
  
<img width="451" height="612" alt="image" src="https://github.com/user-attachments/assets/80500e92-7fbe-4cce-848d-9d86bc01ae3f" />
---

- In this case we have same number of rows in both the table
- But if there will not be same number of rows and columns  and we will try to use set operators there it will give an error
<img width="1388" height="833" alt="image" src="https://github.com/user-attachments/assets/8ed55825-5bbc-49c7-aa47-2def6e10f22d" />
---
# Rule 3 |Data Types
- Data types of columns in each quesry must be compatible

---
- note  there is no data type mismatch in between both tables rows and also number of co;umns are equal in the both the table
<img width="779" height="689" alt="image" src="https://github.com/user-attachments/assets/e5260a97-9620-4280-a71c-9ccd1ab608bd" />
---
<img width="487" height="140" alt="image" src="https://github.com/user-attachments/assets/35659fa5-64c2-42d2-a269-07b2c04b4dd8" />

- sql is going to comapare the first column with the first column of another table similarly first row of the table with first row of anothere table
- if we will do this this will trow an error
<img width="583" height="372" alt="image" src="https://github.com/user-attachments/assets/3c73cfb7-b07a-4789-b482-542a00e26172" />
--- 
- this is not true for in case of MySql dbms
- <img width="663" height="240" alt="image" src="https://github.com/user-attachments/assets/2e90761c-9f24-4676-8adf-6a18d7e0a17e" />
---
<img width="813" height="513" alt="image" src="https://github.com/user-attachments/assets/661c3d91-a397-4368-97c3-dfd769387f75" />

---
## UNION 
- Returns all district rows from queries
- Removes duplicate rows from the result
- <img width="730" height="498" alt="image" src="https://github.com/user-attachments/assets/3d7587b9-62aa-42c4-ba3f-c404114cdfb3" />

### OUTPUT:
<img width="431" height="134" alt="image" src="https://github.com/user-attachments/assets/f8a1ea2c-7b10-477d-9729-2361ad46f570" />

---

<img width="653" height="350" alt="image" src="https://github.com/user-attachments/assets/5e715b8a-1706-44db-9f84-1f87be5ad06d" />

---
- Sql compare each row very carefully and this is how sql will gerenerate the union of two tables the output will not contain any duplicate rows
- <img width="262" height="274" alt="image" src="https://github.com/user-attachments/assets/1f9f66da-5bea-4ce3-99a7-de7f8f5dec8f" />

---
## Practical example

<img width="493" height="96" alt="image" src="https://github.com/user-attachments/assets/07c4ad26-54f5-4e47-96cd-be7b919e415a" />

- OUTPUT
<img width="259" height="269" alt="image" src="https://github.com/user-attachments/assets/68cbea84-cd43-4be2-a03b-bcfc9b4a48ad" />

---
## Union ALL Operator
---

<img width="468" height="198" alt="image" src="https://github.com/user-attachments/assets/fabfc179-395b-4647-97e9-e36e2c9b559f" />

---
### why Union all is better than  union
<img width="455" height="185" alt="image" src="https://github.com/user-attachments/assets/bebf683f-1fbc-46f6-8c08-7647f30041f7" />

<img width="455" height="563" alt="image" src="https://github.com/user-attachments/assets/d9807a88-7886-40fc-9513-034dd9fd3bc8" />

---
<img width="554" height="342" alt="image" src="https://github.com/user-attachments/assets/716b0d38-4358-4db6-b218-20540cc60464" />

- Out put union all will return all the data even the duplicate rows
- <img width="639" height="366" alt="image" src="https://github.com/user-attachments/assets/67035c0e-b606-4fcd-97ce-c120eec89fc9" />
---
## Practical Example 
<img width="808" height="162" alt="image" src="https://github.com/user-attachments/assets/da21b810-8ac8-4fe5-b02f-c866c1f75d3d" />

OUTPUT
<img width="331" height="304" alt="image" src="https://github.com/user-attachments/assets/7eb64142-b154-4f6e-8be1-e0837d19cf8b" />

---
<img width="612" height="363" alt="image" src="https://github.com/user-attachments/assets/255e9289-ff5c-4c69-9158-b8a177089868" />

---
<img width="484" height="266" alt="image" 
  src="https://github.com/user-attachments/assets/c719bae3-bb95-4881-a413-ff3a66cc3006" />

---
  <img width="624" height="334" alt="image" src="https://github.com/user-attachments/assets/7fe5fb0b-20f0-4ffe-a0f8-84d214a7dc05" />

## output of except operator
<img width="532" height="362" alt="image" src="https://github.com/user-attachments/assets/98d59eef-80ba-42ad-ae1f-9dd8ba506a22" />

---
<img width="471" height="357" alt="image" src="https://github.com/user-attachments/assets/a1fe5b04-e942-4b92-8bc7-921b5358d94d" />

<img width="440" height="361" alt="image" src="https://github.com/user-attachments/assets/59973895-e0d3-4ab6-a508-fc9b772bd311" />
---

Practicle example

- <img width="313" height="244" alt="image" src="https://github.com/user-attachments/assets/6629d986-ced6-4699-b62f-181f0b8ebd1b" />

---
<img width="499" height="198" alt="image" src="https://github.com/user-attachments/assets/6e5aa192-e4d8-49b6-8fed-9d21b1a8f5d8" />

---
<img width="451" height="284" alt="image" src="https://github.com/user-attachments/assets/94cf5c5f-644a-4904-8a26-7059ed6a20c3" />

---
<img width="422" height="605" alt="image" src="https://github.com/user-attachments/assets/311e46d1-2caf-4001-bb01-f4c95a41fd31" />
---

- **How we use and impliment set operators in our real projects how they works**

- **Combine Information**
- <img width="370" height="341" alt="image" src="https://github.com/user-attachments/assets/ef231fe1-e0ea-4f8d-b6ea-1b09f6b731c0" />

- chances of incosnsistant data

- <img width="486" height="333" alt="image" src="https://github.com/user-attachments/assets/3b5b3aaa-bde8-432e-8405-098791b1c27f" />

-- **Another use case of Except operators is**
<img width="444" height="207" alt="image" src="https://github.com/user-attachments/assets/270805e6-2eb8-4a4d-a1ff-3873b0f39357" />

---
<img width="631" height="251" alt="image" src="https://github.com/user-attachments/assets/b0bd2f09-088d-40a8-82fb-f04c6bd335fc" />

<img width="631" height="251" alt="image" src="https://github.com/user-attachments/assets/afb4a5c0-10ee-4a15-a114-cefefed0cde0" />

-- **Deata completeness check**
<img width="460" height="200" alt="image" src="https://github.com/user-attachments/assets/5753d218-09f4-485d-b7b8-3cd25d24b4fc" />


<img width="468" height="296" alt="image" src="https://github.com/user-attachments/assets/4988ade9-4c31-419a-98ea-ef43ce150d18" />

---
- **Summary of this chapter**
<img width="478" height="359" alt="image" src="https://github.com/user-attachments/assets/6189f965-a8e3-45ec-89e5-783fff2d47f3" />

---
## CHAPTER-12 SQL FUNCTIONS
---
<img width="613" height="357" alt="image" src="https://github.com/user-attachments/assets/892882b3-ca02-4006-8363-46bdc5d784ef" />


---
# Lecture 22 (25-Nov-2025)
- Window functions
- 
<img width="754" height="341" alt="image" src="https://github.com/user-attachments/assets/ae3ffe6a-7983-4a81-8416-1326572c847a" />

- it something really close to group by but we didn't loose level of the details
  <img width="754" height="422" alt="image" src="https://github.com/user-attachments/assets/447a6e74-43d0-453c-8cf0-1510c65a4f70" />
---
**Row level Calculations**
<img width="830" height="517" alt="image" src="https://github.com/user-attachments/assets/b634530f-6b92-4809-b1b1-b2eed4b60995" />
---
# Difference between Window functions and Group by
<img width="930" height="504" alt="image" src="https://github.com/user-attachments/assets/18c6aeef-0193-4868-b5db-999da26d9e39" />
---
<img width="737" height="532" alt="image" src="https://github.com/user-attachments/assets/b8e071a8-fc25-4a04-8f45-bb58819eb94d" />

---
- why we need group by functionns
- why group by functions are not enough

--  
- there is a issue with group by because of which we had decided to shift on window functions
<img width="954" height="670" alt="image" src="https://github.com/user-attachments/assets/1402a372-aaa3-4846-8809-1b34c7578af7" />

---


WHERE c.code in ('PAK','IND')
	AND l.code in ('PAK','IND');

```
