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


/*      03- JAPANESE CITIES' ATTRIBUTES
Query all attributes of every Japanese city in the CITY table. 
The COUNTRYCODE for Japan is JPN. */
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';


/*      04 - JAPANESE CITIES' NAMES
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN. */
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';



--------------------------------------------------------------------------------------


/*      04 - WEATHER OBSERVATION STATION 1
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


