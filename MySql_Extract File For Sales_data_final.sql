CREATE DATABASE SALES
USE SALES
CREATE TABLE SALES1(
	order_id VARCHAR(15) NOT NULL, 
	order_date VARCHAR(15) NOT NULL, 
	ship_date VARCHAR(15) NOT NULL, 
	ship_mode VARCHAR(14) NOT NULL, 
	customer_name VARCHAR(22) NOT NULL, 
	segment VARCHAR(11) NOT NULL, 
	state VARCHAR(36) NOT NULL, 
	country VARCHAR(32) NOT NULL, 
	market VARCHAR(6) NOT NULL, 
	region VARCHAR(14) NOT NULL, 
	product_id VARCHAR(16) NOT NULL, 
	category VARCHAR(15) NOT NULL, 
	sub_category VARCHAR(11) NOT NULL, 
	product_name VARCHAR(127) NOT NULL, 
	sales DECIMAL(38, 0) NOT NULL, 
	quantity DECIMAL(38, 0) NOT NULL, 
	discount DECIMAL(38, 3) NOT NULL, 
	profit DECIMAL(38, 8) NOT NULL, 
	shipping_cost DECIMAL(38, 2) NOT NULL, 
	order_priority VARCHAR(8) NOT NULL, 
	`year` DECIMAL(38, 0) NOT NULL
);
SET SESSION sql_mode = ''
LOAD DATA INFILE 
'E:/sales_data_final.csv'
into table sales1 
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows 
SELECT * FROM SALES1

SET SQL_SAFE_UPDATES = 0;

SELECT STR_TO_DATE(ORDER_DATE,'%m/%d/%y') FROM SALES1;

ALTER TABLE SALES1
ADD COLUMN ORDER_DATE_NEW DATE AFTER ORDER_DATE; 

UPDATE SALES1
SET ORDER_DATE_NEW = STR_TO_DATE(ORDER_DATE,'%m/%d/%Y');

SELECT * FROM SALES1

ALTER TABLE SALES1
ADD COLUMN SHIP_DATE_NEW DATE AFTER SHIP_DATE; 

UPDATE SALES1
SET SHIP_DATE_NEW = STR_TO_DATE(SHIP_DATE,'%m/%d/%Y');

SELECT * FROM SALES1

ALTER TABLE SALES1
ADD COLUMN FLAG1 DATE AFTER ORDER_ID;

UPDATE SALES1
SET FLAG1 = NOW()

SELECT * FROM SALES1

ALTER TABLE SALES1
ADD COLUMN DAY_NEW INT;

ALTER TABLE SALES1
ADD COLUMN MONTH_NEW INT;

ALTER TABLE SALES1
ADD COLUMN YEAR_NEW INT;

SELECT * FROM SALES1

UPDATE SALES1 SET MONTH_NEW = MONTH(ORDER_DATE_NEW);

UPDATE SALES1 SET DAY_NEW = DAY(ORDER_DATE_NEW);

UPDATE SALES1 SET YEAR_NEW = YEAR(ORDER_DATE_NEW);

SELECT * FROM SALES1

SELECT * FROM SALES1 WHERE SHIP_DATE_NEW = '2011-01-05';

SELECT * FROM SALES1 WHERE SHIP_DATE_NEW > '2011-01-05';

SELECT * FROM SALES1 WHERE SHIP_DATE_NEW < '2011-01-05';

SELECT * FROM SALES1 WHERE SHIP_DATE_NEW BETWEEN '2011-01-05' AND '2011-02-05';

SELECT NOW();

SELECT CURDATE();

SELECT CURTIME();

SELECT YEAR_NEW, AVG(SALES) FROM SALES1 GROUP BY YEAR_NEW

SELECT YEAR_NEW, SUM(SALES) FROM SALES1 GROUP BY YEAR_NEW

SELECT YEAR_NEW, MIN(SALES) FROM SALES1 GROUP BY YEAR_NEW

SELECT YEAR_NEW, MAX(SALES) FROM SALES1 GROUP BY YEAR_NEW

SELECT (SALES*DISCOUNT+SHIPPING_COST) AS CTC FROM SALES1;

SELECT ORDER_ID,DISCOUNT, IF(DISCOUNT > 0, 'YES','NO') AS DISCOUNT_FLAG FROM SALES1

SELECT * FROM SALES1;

ALTER TABLE SALES1
DROP COLUMN DAY_NEW

SELECT * FROM SALES1;

ALTER TABLE SALES1
DROP COLUMN DAY_NEWW

SELECT COUNTRY,SALES, IF(SALES > 100, 'YES','NO') AS BEST_SALE FROM SALES1

SELECT SALES,QUANTITY,DISCOUNT,SHIPPING_COST, (SALES*QUANTITY*DISCOUNT+SHIPPING_COST) AS CTC FROM SALES1
ALTER TABLE SALES1
DROP COLUMN DISCOUNT_FLAG

ALTER TABLE SALES1
ADD COLUMN FLAG_NEW VARCHAR AFTER (30);

UPDATE SALES1
