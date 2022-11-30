/* 
problem: https://www.hackerrank.com/challenges/revising-the-select-query

        01 - SELECT ALL
Query all columns (attributes) for every row in the CITY table.

The CITY table is described as follows:
-------------------------------
          CITY
Field       -      Type
-------------------------------
ID          -       NUMBER
NAME        -       VARCHAR(17)
COUNTRYCODE -       VARCHAR(3)
DISTRICT    -       VARCHAR(20)
POPULATION  -       NUMBER                  */
SELECT * FROM CITY;


/*       02 - SELECT BY ID
Query all columns for a city in CITY with the ID 1661.*/
SELECT * FROM CITY WHERE ID = 1661;


/*      03 - REVISING THE SELECT QUERY 1
Query all columns for all American cities in the CITY table with populations larger than 100000. 
The CountryCode for America is USA. */
SELECT *
FROM CITY
WHERE 
    COUNTRYCODE IN('USA') 
    AND POPULATION > 100000;


/*       04 - REVISING THE SELECT QUERY 2
Query the NAME field for all American cities in the CITY table with populations larger than 120000. 
The CountryCode for America is USA. */
SELECT NAME
FROM CITY
WHERE
    COUNTRYCODE = 'USA'
    AND POPULATION > 120000;


/*      05- JAPANESE CITIES' ATTRIBUTES
Query all attributes of every Japanese city in the CITY table. 
The COUNTRYCODE for Japan is JPN. */
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';


/*      06 - JAPANESE CITIES' NAMES
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN. */
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';



--------------------------------------------------------------------------------------


/*      07 - WEATHER OBSERVATION STATION 1
Query a list of CITY and STATE from the STATION table.

The STATION table is described as follows:
-------------------------------
          STATION
Field       -      Type
-------------------------------
ID          -       NUMBER
CITY        -       VARCHAR(21)
STATE       -       VARCHAR(2)
LAT_N       -       NUMBER
LAT_W       -       NUMBER              */

SELECT CITY, STATE
FROM STATION;


/*      08 - WEATHER OBSERVATION STATION 2
Queary the following two values from the STATION table:
1.  The sum of all values in LAT_N rounded to a scale of  decimal places.
2.  The sum of all values in LONG_W rounded to a scale of  decimal places.  */
SELECT 
    ROUND(SUM(LAT_N), 2), ROUND(SUM(LON_W), 2)
FROM STATION;


/*      09 - WEATHER OBSERVATION STATION 3
Query a list of CITY names from STATION for cities that have an even ID number. 
Print the results in any order, but exclude duplicates from the answer.*/
SELECT DISTRICT CITY
FROM STATION
WHERE MOD(ID, 2) = 0;


/*      10 - WEATHER OBSERVAGTION STATION 4
Find the difference between the total number of CITY entries in the table 
and the number of distinct CITY entries in the table.*/
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;


/*      11 - WEATHER OBSERVATION STATION 5
Query the two cities in STATION with the shortest and longest CITY names, 
as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, 
choose the one that comes first when ordered alphabetically.        */
SELECT CITY, LENGTH(CITY)
FROM STATION
WHERE LENGTH(CITY) IN (
  SELECT MAX(LENGTH(CITY))
  FROM STATION
  UNION
  SELECT MIN(LENGTH(CITY))
  FROM STATION
)
ORDER BY LENGTH(CITY) DESC, CITY ASC LIMIT 2;


/*      12 - WEATHER OBSERVATION STATION 6
Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. 
Your result cannot contain duplicates.      */
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) IN('a', 'e', 'i', 'o', 'u');


/*      13 - WEATHER OBSERVATION STATION 7
Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. 
Your result cannot contain duplicates.      */
SELECT DISTINCT CITY
FROM STATION
WHERE RIGHT(CITY,1) IN('a', 'e', 'i', 'o', 'u');


/*      13 - WEATHER OBSERVATION STATION 8
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) 
as both their first and last characters. Your result cannot contain duplicates.     */
SELECT DISTINCT CITY
FROM STATION
WHERE 
    LEFT(CITY,1) IN('a', 'e', 'i', 'o', 'u') 
    AND RIGHT(CITY,1) IN('a', 'e', 'i', 'o', 'u');


/*      13 - WEATHER OBSERVATION STATION 9
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.  */
SELECT DISTINCT CITY
FROM STATION
WHERE LEFT(CITY,1) NOT IN('a', 'e', 'i', 'o', 'u');