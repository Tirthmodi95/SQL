SHOW DATABASES
USE SAKILA;
SELECT * FROM CUSTOMER; 
SELECT * FROM ADDRESS;
SELECT FIRST_NAME, LAST_NAME FROM CUSTOMER;
SELECT FIRST_NAME, LAST_NAME, ADDRESS_ID FROM CUSTOMER;
SELECT DISTINCT FIRST_NAME FROM CUSTOMER;
SELECT DISTINCT ACTIVE FROM CUSTOMER;
SELECT FIRST_NAME FROM CUSTOMER WHERE LAST_NAME = 'DAVIS';
SELECT FIRST_NAME, LAST_NAME FROM CUSTOMER WHERE ACTIVE = 0;
SELECT FIRST_NAME, LAST_NAME FROM CUSTOMER WHERE ACTIVE = 1;
SELECT FIRST_NAME, LAST_NAME EMAIL FROM CUSTOMER WHERE ADDRESS_ID < 20;
SELECT * FROM CUSTOMER WHERE ADDRESS_ID < 20;
SELECT * FROM CUSTOMER WHERE ADDRESS_ID = 20;
SELECT FIRST_NAME, LAST_NAME FROM CUSTOMER WHERE ADDRESS_ID BETWEEN 20 AND 25;
SELECT FIRST_NAME, EMAIL, ADDRESS_ID FROM CUSTOMER WHERE FIRST_NAME = 'IAN' AND LAST_NAME = 'STILL';
UPDATE CUSTOMER SET FIRST_NAME = 'TIRTH' WHERE LAST_NAME = 'SMITH';
SELECT * FROM CUSTOMER WHERE FIRST_NAME = 'TIRTH';
SELECT STORE_ID, FIRST_NAME, LAST_NAME, EMAIL, ADDRESS_ID FROM CUSTOMER WHERE NOT STORE_ID = 2;
SELECT FIRST_NAME, LAST_NAME, EMAIL FROM CUSTOMER ORDER BY FIRST_NAME DESC;
SELECT FIRST_NAME, LAST_NAME, EMAIL FROM CUSTOMER ORDER BY FIRST_NAME;
SELECT FIRST_NAME, LAST_NAME, EMAIL FROM CUSTOMER ORDER BY FIRST_NAME ASC;
SELECT FIRST_NAME, LAST_NAME, EMAIL FROM CUSTOMER WHERE FIRST_NAME = 'AUSTIN' LIMIT 20;
SELECT FIRST_NAME, LAST_NAME, EMAIL FROM CUSTOMER WHERE ACTIVE=1 LIMIT 10;
SELECT MIN(ADDRESS_ID) FROM CUSTOMER;
SELECT MAX(ADDRESS_ID) FROM CUSTOMER;
SELECT SUM(CUSTOMER_ID) FROM CUSTOMER;
SELECT AVG(CUSTOMER_ID) FROM CUSTOMER;
SELECT COUNT(EMAIL) FROM CUSTOMER;
SELECT FIRST_NAME, LAST_NAME, EMAIL FROM CUSTOMER WHERE ADDRESS_ID = (SELECT MIN(ADDRESS_ID) FROM CUSTOMER);
SELECT * FROM CUSTOMER WHERE FIRST_NAME LIKE 'A%';
SELECT * FROM CUSTOMER WHERE FIRST_NAME LIKE '%A';
SELECT * FROM CUSTOMER WHERE FIRST_NAME LIKE '%OR%';
SELECT * FROM CUSTOMER WHERE LAST_NAME LIKE '%PR%';
SELECT * FROM CUSTOMER WHERE FIRST_NAME LIKE 'A%O';
SELECT * FROM CUSTOMER WHERE CUSTOMER_ID IN (1,2,3);
SELECT * FROM CUSTOMER WHERE CUSTOMER_ID NOT IN (1,2,3);
SELECT * FROM CUSTOMER WHERE CUSTOMER_ID BETWEEN 1 AND 20;
SELECT * FROM CUSTOMER WHERE CUSTOMER_ID NOT BETWEEN 1 AND 570;
SELECT FIRST_NAME AS FIRST, LAST_NAME AS LAST FROM CUSTOMER;
SELECT COUNT(CUSTOMER_ID) FROM CUSTOMER GROUP BY ACTIVE;
SELECT COUNT(CUSTOMER_ID), ACTIVE FROM CUSTOMER GROUP BY ACTIVE;

USE WORLD;
SELECT * FROM COUNTRY;
SELECT * FROM COUNTRY WHERE CONTINENT = 'EUROPE';
SELECT DISTINCT CONTINENT FROM COUNTRY;
SELECT NAME, CONTINENT FROM COUNTRY WHERE SURFACEAREA = (SELECT MIN(SURFACEAREA) FROM COUNTRY);
SELECT NAME, CONTINENT FROM COUNTRY WHERE SURFACEAREA = (SELECT MAX(SURFACEAREA) FROM COUNTRY);
SELECT MAX(SURFACEAREA) FROM COUNTRY;
SELECT NAME, REGION, SURFACEAREA FROM COUNTRY GROUP BY CONTINENT;
SELECT CONTINENT, COUNT(NAME) FROM COUNTRY GROUP BY CONTINENT;
SELECT NAME, CONTINENT FROM COUNTRY WHERE SURFACEAREA = (SELECT MAX(SURFACEAREA) FROM COUNTRY) or
POPULATION = (SELECT MAX(POPULATION) FROM COUNTRY);

