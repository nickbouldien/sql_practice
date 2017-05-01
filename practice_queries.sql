/*SELECT * FROM country WHERE name = 'United States'*/

/*SELECT name, surfacearea FROM country WHERE name = 'United States'*/

/*Select name, population FROM country WHERE continent = 'Africa' AND population < 30000000 AND lifeexpectancy > 45*/


/*SELECT * FROM country WHERE governmentform = 'Republic' OR name LIKE '%Republic%'*/

/*SELECT * FROM country WHERE governmentform = 'Republic' AND indepyear > 1945*/

-- SELECT * FROM country WHERE governmentform != 'Republic' AND indepyear > 1945

-- SELECT name, lifeexpectancy FROM country WHERE lifeexpectancy IS NOT NULL ORDER BY lifeexpectancy asc LIMIT 15

--  SELECT name, lifeexpectancy FROM country WHERE lifeexpectancy IS NOT NULL ORDER BY lifeexpectancy desc LIMIT 15

-- SELECT * FROM (SELECT name, population/surfacearea density FROM country) AS density
-- WHERE density > 0
-- ORDER BY density ASC LIMIT 15


-- SELECT MIN(population) FROM country  
-- WHERE population >0

-- SELECT * FROM country
-- ORDER BY population ASC  -- pittcairn


-- SELECT * FROM (SELECT name, surfacearea sa FROM country) AS sa
-- WHERE sa > 0
-- ORDER BY sa ASC LIMIT 10

-- SELECT * FROM (SELECT name, population pop FROM country) AS pop
-- WHERE pop > 0
-- ORDER BY pop ASC LIMIT 10

-- With small_countries as (SELECT * FROM country ORDER BY surfacearea asc LIMIT 10)
-- Select * FROM small_countries ORDER BY gnp desc

-- With small_countries as (SELECT country FROM country)
-- SELECT * FROM (SELECT name, gnp/NULLIF(population,0) capita FROM country) AS capita
-- WHERE capita != 0
-- ORDER BY capita asc LIMIT 10



--  With big_countries as (SELECT name,gnp, population FROM country ORDER BY surfacearea asc LIMIT 20)
--  SELECT * FROM (SELECT name, gnp/NULLIF(population,0) capita FROM big_countries) AS capita
--  WHERE capita != 0
--  ORDER BY capita asc LIMIT 10
--  

-- With big_countries as (SELECT name,gnp, population, surfacearea FROM country ORDER BY surfacearea asc LIMIT 20)
--  SELECT sum(surfacearea) FROM (SELECT surfacearea capita FROM big_countries) AS capita
--  WHERE capita != 0
--  ORDER BY capita asc LIMIT 10

-- WITH big_countries as (SELECT name, surfacearea FROM country ORDER BY surfacearea desc LIMIT 20)
-- SELECT SUM(surfacearea) AS SurfaceSum FROM big_countries 
-- 
-- 
-- SELECT continent, sum(country.surfacearea) AS cont_area FROM country
-- GROUP BY continent
-- ORDER BY cont_area desc

-- SELECT continent, sum(country.surfacearea) AS cont_area, sum(country.population) AS total_pop FROM country
-- GROUP BY continent
-- ORDER BY cont_area desc


-- SELECT continent, avg(country.gnp) AS avg_gnp FROM country
-- GROUP BY continent
-- ORDER BY avg_gnp desc


-- SELECT name, headofstate, population FROM country
-- GROUP BY country.headofstate, country.population, country.name
-- ORDER BY population DESC


-- SELECT name, headofstate, surfacearea FROM country
-- GROUP BY country.headofstate, country.surfacearea, country.name
-- ORDER BY surfacearea DESC

-- SELECT governmentform, count(*) as govt_count FROM country
-- GROUP BY country.governmentform  
-- ORDER BY govt_count desc


-- SELECT name, governmentform, surfacearea FROM country
-- GROUP BY country.governmentform, country.surfacearea, country.name
-- ORDER BY surfacearea desc limit 10


-- SELECT name, governmentform, gnp FROM country
-- GROUP BY country.governmentform, country.gnp, country.name
-- ORDER BY gnp desc limit 10







--  With big_countries as (SELECT name,gnp, population FROM country ORDER BY surfacearea asc LIMIT 20)
--  SELECT * FROM (SELECT name, gnp/NULLIF(population,0) capita FROM big_countries) AS capita
--  WHERE capita != 0
--  ORDER BY capita asc LIMIT 10
--  



-- WITH rich_countries AS (SELECT * FROM country ORDER BY gnp/NULLIF(population,0) desc) 
-- SELECT  name, population, gnp, rich_countries.governmentform FROM rich_countries
-- ORDER BY gnp desc LIMIT 10


-- SELECT * From country 
-- ORDER BY surfacearea desc LIMIT 239/20  



-- SELECT * FROM countrylanguage;
-- 
--  WITH lang_info AS (
--  SELECT c.code, c.name AS country, c.population, cl.percentage, cl.language AS lang
--  FROM country c Join countrylanguage cl ON c.code = cl.countrycode)
--  SELECT lang, lang_info.population * percentage as tot_speakers FROM lang_info
--  GROUP BY lang_info.lang, tot_speakers
--  ORDER BY tot_speakers desc 

 
-- multiply population * % that speak the language
-- add up the populations by language (mexico, spain, etc for spanish)
-- report language by total population that speaks it (descending)


-- WITH lang_info AS ( 
--  SELECT c.code, c.name AS country, c.population, cl.percentage, cl.language AS lang
--  FROM country c Join countrylanguage cl ON c.code = cl.countrycode)
--  SELECT lang, sum(population * percentage) as tot_speakers FROM lang_info
--  GROUP BY lang_info.lang
--  ORDER BY tot_speakers desc 




 -- SELECT c.code, count(ct.name) as cities
--  FROM country c Join city ct ON c.code = ct.countrycode
--   WHERE c.code = 'CHL'
--   GROUP BY c.code

 
--  SELECT name, population FROM country
--  WHERE code = 'CHN'



-- 
-- SELECT continent, count(name) as total_countries FROM country 
-- GROUP BY continent
-- ORDER BY total_countries DESC


-- SELECT name, indepyear  FROM country
-- WHERE indepyear < 1963
-- ORDER BY indepyear asc


-- SELECT sum(population) as world_population FROM country

-- SELECT continent, sum(population) as cont_pop
-- FROM country
-- GROUP BY continent
-- ORDER BY cont_pop DESC


-- SELECT continent, avg(lifeexpectancy) as cont_LE
-- FROM country
-- GROUP BY continent
-- ORDER BY cont_LE DESC 

-- SELECT count(*) as countries_with_z FROM country
-- WHERE name LIKE '%z%'


-- SELECT 2017-indepyear as jamaica_age FROM country
-- WHERE code = 'JAM'


SELECT count(*) as country_without_language FROM countrylanguage
WHERE isofficial = 'f'


