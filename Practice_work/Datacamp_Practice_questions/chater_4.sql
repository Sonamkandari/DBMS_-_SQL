
-- Datacamp Associate Data Engineer with SQL 

-- Joins / Types of joins

-- implimentation of left join
SELECT region, AVG(gdp_percapita) AS avg_gdp
FROM countries AS c
LEFT JOIN economies AS e
USING(code)
WHERE year = 2010
GROUP BY region
ORDER BY  avg_gdp  DESC
limit 10


implimentation of right join
-- Modify this query to use RIGHT JOIN instead of LEFT JOIN
SELECT countries.name AS country, languages.name AS language, percent
FROM languages
right JOIN countries
USING(code)
ORDER BY language;

-- implimentation of full join

SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
full join currencies
USING (code)
-- Where region is North America or name is null
WHERE region='North America' or name is null
ORDER BY region;

-- inner join
SELECT name AS country, code, region, basic_unit
FROM countries
-- Join to currencies
inner join  currencies
USING (code)
WHERE region = 'North America' 
	OR name IS NULL
ORDER BY region;

--- implimeted full join multiple time
SELECT 
	c1.name AS country, 
    region, 
    l.name AS language,
	basic_unit, 
    frac_unit
FROM countries as c1 
-- Full join with languages (alias as l)
full join languages as l
using(code)
-- Full join with currencies (alias as c2)
full join currencies as c2
on c1.code=c2.code
WHERE region LIKE 'M%esia';



-- Complete the code to perform an INNER JOIN of countries AS c with languages AS l using the code field to obtain the languages currently spoken in the two countries.

SELECT c.name AS country, l.name AS language
-- Inner join countries as c with languages as l on code
from countries as c
Inner join languages as l
on c.code=l.code

WHERE c.code IN ('PAK','IND')
	AND l.code in ('PAK','IND');

Change your INNER JOIN to a different kind of join to look at possible combinations of languages that could have been spoken in the two countries given their history.
Observe the differences in output for both joins.

SELECT c.name AS country, l.name AS language
FROM countries AS c        
-- Perform a cross join to languages (alias as l)
cross join languages as l 
-- You will determine the names of the five countries and their respective regions with the lowest life expectancy for the year 2010. Use your knowledge about joins, filtering, sorting and limiting to create this list!

SELECT 
	c.name AS country,
    region,
    life_expectancy AS life_exp
FROM countries AS c
-- Join to populations (alias as p) using an appropriate join
inner join populations as p
ON c.code = p.country_code
-- Filter for only results in the year 2010
where year =2010
-- Sort by life_exp
order by life_exp ASC
LIMIT 5

-- Return all cities with the same name as a country
select name FROM cities
intersect
select name 
from countries

-- Return all cities that do not have the same name as a country
select name 
from cities
except
select name 
from countries 
ORDER BY name;




