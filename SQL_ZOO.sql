#SELECT basics

#1.The example uses a WHERE clause to show the population of 'France'. Note that strings (pieces of text that are data) should be in 'single quotes'; Modify it to show the population of Germany
SELECT population FROM world
  WHERE name = 'Germany'

#2.Checking a list: The word IN allows us to check if an item is in a list. The example shows the name and population for the countries 'Brazil', 'Russia', 'India' and 'China'. Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

#3.Which countries are not too small and not too big? BETWEEN allows range checking (range specified is inclusive of boundary values). The example below shows countries with an area of 250,000-300,000 sq. km. Modify it to show the country and the area for countries with an area between 200,000 and 250,000.
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

#QUIZZ

#1. Select the code which produces this table
#   name	    |population
#------------------------------
#   Bahrain	    |1234571
#------------------------------
#   Swaziland   |1220000
--------------------------------
#   Timor-Leste	|1066409

SELECT name, population
  FROM world
 WHERE population BETWEEN 1000000 AND 1250000

#2. SELECT name, population
#      FROM world
#      WHERE name LIKE 'Al%'

Albania	| 3200000
Algeria	| 32900000

#3. Select the code which shows the countries that end in A or L

SELECT name FROM world
 WHERE name LIKE '%a' OR name LIKE '%l'


#4. Pick the result from the query

name	| length(name)
Italy	| 5
Malta	| 5
Spain	| 5



#5. Here are the first few rows of the world table:
name	    | region	 | area	    | population	|gdp
Afghanistan	| South Asia | 652225	| 26000000	    |
Albania	    | Europe	 | 28728	| 3200000	    | 6656000000
Algeria	    | Middle East| 2400000	| 32900000	    | 5012000000
Andorra	    |Europe	     | 468	    | 64000	        |
...




#6. Select the code that would show the countries with an area larger than 50000 and a population smaller than 10000000

SELECT name, area, population
  FROM world
 WHERE area > 50000 AND population < 10000000



#7. Select the code that shows the population density of China, Australia, Nigeria and France

SELECT name, population/area
  FROM world
 WHERE name IN ('China', 'Nigeria', 'France', 'Australia')





#SELECT from WORLD Tutorial



#1. Read the notes about this table. Observe the result of running this SQL command to show the name, continent and population of all countries.

SELECT name, continent, population FROM world



#2. How to use WHERE to filter records. Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.

SELECT name
  FROM world
 WHERE population >=200000000



 #3. Give the name and the per capita GDP for those countries with a population of at least 200 million. HELP:How to calculate per capita GDP

SELECT NAME, GDP/POPULATION FROM WORLD WHERE POPULATION > 200000000



#4. Show the name and population in millions for the countries of the continent 'South America'. Divide the population by 1000000 to get population in millions.

SELECT NAME, POPULATION/1000000 FROM WORLD WHERE CONTINENT = 'SOUTH AMERICA'



#5. Show the name and population for France, Germany, Italy

SELECT name, population FROM world WHERE name IN ('France', 'Germany', 'Italy')


#6. Show the countries which have a name that includes the word 'United'

select name from world where name like '%united%'










#1. List each country name where the population is larger than that of 'Russia'. world(name, continent, area, population, gdp)
SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')
      