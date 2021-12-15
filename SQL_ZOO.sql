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

#QUIZZ 1

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



#7. Two ways to be big: A country is big if it has an area of more than 3 million sq km or it has a population of more than 250 million. Show the countries that are big by area or big by population. Show name, population and area.
select name,population, area from world where area > 3000000 or population > 250000000

#8. Exclusive OR (XOR). Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area. Australia has a big area but a small population, it should be included. Indonesia has a big population but a small area, it should be included. China has a big population and big area, it should be excluded. United Kingdom has a small population and a small area, it should be excluded.
select name, population, area from world where (area > 3000000 or population > 250000000) and (area < 3000000 or population < 250000000)



#9. Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places.
select name, round(population/1000000,2), round(gdp/1000000000,2) from world where continent = 'South America'




#10. Show the name and per-capita GDP for those countries with a GDP of at least one trillion (1000000000000; that is 12 zeros). Round this value to the nearest 1000.
select name, round(gdp/population,-3) from world where gdp >= 1000000000000


#11. Greece has capital Athens. Each of the strings 'Greece', and 'Athens' has 6 characters. Show the name and capital where the name and the capital have the same number of characters. You can use the LENGTH function to find the number of characters in a string

SELECT name, capital
  FROM world
 WHERE len(name) = len(capital)



#12. The capital of Sweden is Stockholm. Both words start with the letter 'S'. Show the name and the capital where the first letters of each match. Don't include countries where the name and the capital are the same word. You can use the function LEFT to isolate the first character. You can use <> as the NOT EQUALS operator.
SELECT name, capital
FROM world
WHERE left(name,1) = left(capital,1) and name != capital



#13.
#Equatorial Guinea and Dominican Republic have all of the vowels (a e i o u) in the name. They don't count because they have more than one word in the name.

#Find the country that has all the vowels and no spaces in its name.

#You can use the phrase name NOT LIKE '%a%' to exclude characters from your results.
#The query shown misses countries like Bahamas and Belarus because they contain at least one 'a'


SELECT name 
   FROM world
WHERE name LIKE '%a%' and name like '%e%' and name like '%i%' and name like '%o%' and name like '%u%'
  AND name NOT LIKE '% %'




#QUIZZ 2


#1. Select the code which gives the name of countries beginning with U

SELECT name
  FROM world
 WHERE name LIKE 'U%'


#2. Select the code which shows just the population of United Kingdom?

SELECT population
  FROM world
 WHERE name = 'United Kingdom'


#3. Select the answer which shows the problem with this SQL code - the intended result should be the continent of France:

SELECT continent 
   FROM world 
  WHERE 'name' = 'France'
'name' should be name


#4. Select the result that would be obtained from the following code:

SELECT name, population / 10 
  FROM world 
 WHERE population < 10000

Nauru	|  990


#5. Select the code which would reveal the name and population of countries in Europe and Asia

SELECT name, population
  FROM world
 WHERE continent IN ('Europe', 'Asia')



#6. Select the code which would give two rows

SELECT name FROM world
 WHERE name IN ('Cuba', 'Togo')


#7. Select the result that would be obtained from this code:

SELECT name FROM world
 WHERE continent = 'South America'
   AND population > 40000000

Brazil
----------
Colombia



#SELECT from Nobel Tutorial

#1. Change the query shown so that it displays Nobel prizes for 1950.

SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950


#2. Show who won the 1962 prize for Literature.

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'


#3. Show the year and subject that won 'Albert Einstein' his prize.

select yr, subject from nobel where winner = 'Albert Einstein'


#4. Give the name of the 'Peace' winners since the year 2000, including 2000.

select winner from nobel where subject = 'Peace' and yr >= 2000



#5. Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive

select yr, subject, winner from nobel where subject = 'Literature' and yr between 1980 and 1989



#6. Show all details of the presidential winners:

#Theodore Roosevelt
#Woodrow Wilson
#Jimmy Carter
#Barack Obama

SELECT yr, subject, winner FROM nobel where winner in ('Theodore Roosevelt',
'Woodrow Wilson',
'Jimmy Carter',
'Barack Obama')


#7. Show the winners with first name John

select winner from nobel where winner like 'John%'


#8. Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.

select * from nobel where (subject = 'Physics' and yr = 1980) or (subject = 'Chemistry' and yr = 1984)



#9. Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine

select yr, subject, winner from nobel where yr=1980 and subject not in ('Chemistry', 'Medicine')



#10. Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) together with winners of a 'Literature' prize in a later year (after 2004, including 2004)

select * from nobel where (subject = 'Medicine' and yr < 1910) or (subject = 'Literature' and yr >= 2004)



#11. Find all details of the prize won by PETER GRÜNBERG -- Non-ASCII characters

select * from nobel where winner = 'PETER GRÜNBERG'


#12. Find all details of the prize won by EUGENE O'NEILL

select * from nobel where winner = 'EUGENE O''NEILL'



#13. Knights in order -- List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.

select winner, yr, subject from nobel where winner like 'Sir%' order by yr desc, winner



#14. The expression subject IN ('Chemistry','Physics') can be used as a value - it will be 0 or 1. Show the 1984 winners and subject ordered by subject and winner name; but list Chemistry and Physics last.

SELECT winner, subject
FROM nobel
WHERE yr=1984
ORDER BY subject IN ('Chemistry','Physics'), subject, winner





#NOBEL QUIZZ 

#1. Pick the code which shows the name of winner's names beginning with C and ending in n

SELECT winner FROM nobel
 WHERE winner LIKE 'C%' AND winner LIKE '%n'


#2. Select the code that shows how many Chemistry awards were given between 1950 and 1960

SELECT COUNT(subject) FROM nobel
 WHERE subject = 'Chemistry'
   AND yr BETWEEN 1950 and 1960


#3. Pick the code that shows the amount of years where no Medicine awards were given

SELECT COUNT(DISTINCT yr) FROM nobel
 WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject = 'Medicine')


#4. Select the result that would be obtained from the following code:


Medicine	|  Sir John Eccles
Medicine	|  Sir Frank Macfarlane Burnet



#5. Select the code which would show the year when neither a Physics or Chemistry award was given

SELECT yr FROM nobel
 WHERE yr NOT IN(SELECT yr 
                   FROM nobel
                 WHERE subject IN ('Chemistry','Physics'))


#6. Select the code which shows the years when a Medicine award was given but no Peace or Literature award was

SELECT DISTINCT yr
  FROM nobel
 WHERE subject='Medicine' 
   AND yr NOT IN(SELECT yr FROM nobel 
                  WHERE subject='Literature')
   AND yr NOT IN (SELECT yr FROM nobel
                   WHERE subject='Peace')


#7. Pick the result that would be obtained from the following code:


Chemistry	|  1
Literature	|  1
Medicine	|  2
Peace	    |  1
Physics	    |  1





#SELECT within SELECT Tutorial


#1. List each country name where the population is larger than that of 'Russia'.
#world(name, continent, area, population, gdp)

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Romania')





#2. Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.







#3. List the name and continent of countries in the continents containing either Argentina or Australia. Order by name of the country.









#4. Which country has a population that is more than Canada but less than Poland? Show the name and the population.









#5. Germany (population 80 million) has the largest population of the countries in Europe. Austria (population 8.5 million) has 11% of the population of Germany. Show the name and the population of each country in Europe. Show the population as a percentage of the population of Germany.

#The format should be Name, Percentage for example:

#   name	   percentage
#   Albania	   3%
#   Andorra	   0%
#   Austria	   11%
#   ...	       ...



#6. Which countries have a GDP greater than every country in Europe? [Give the name only.] (Some countries may have NULL gdp values)





#7. Find the largest country (by area) in each continent, show the continent, the name and the area:




#8. List each continent and the name of the country that comes first alphabetically.


#9. Find the continents where all countries have a population <= 25000000. Then find the names of the countries associated with these continents. Show name, continent and population.



#10. Some countries have populations more than three times that of any of their neighbours (in the same continent). Give the countries and continents.









      