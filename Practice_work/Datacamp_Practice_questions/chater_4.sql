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


