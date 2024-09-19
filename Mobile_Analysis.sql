CREATE DATABASE mobile;
use mobile;

SELECT*FROM mobile;

-- 01 check mobile features and price list --
SELECT Phone_name,Price FROM mobile;

-- 02 find out the price of 5 most expensive phones
SELECT Phone_name , price FROM mobile 
ORDER BY Price 
DESC LIMIT 5; 

-- 03 find out the price of 5 most cheapest phones
SELECT * FROM mobile
ORDER BY price 
ASC LIMIT 5; 

-- 04 list of top samsung phones with price and all features
SELECT *FROM mobile
where Brands like '%Samsung%'
ORDER BY price DESC
LIMIT 5;

-- 05 must have android phone list then top 5 high price android phones
SELECT*FROM mobile
WHERE Operating_System_Type =  "Android"
ORDER BY price DESC
LIMIT 5 ;

-- 06 must have android phone list then top 5 lower price android phones
SELECT*FROM mobile WHERE Operating_System_Type ="Android"
ORDER BY price ASC 
LIMIT 5 ;

-- 07 must have IOS phone list then top 5 high price IOS phones.alter
SELECT*FROM mobile
WHERE Operating_System_Type = 'IOS' 
ORDER BY price DESC 
LIMIT 5; 

-- 08 MUST have IOS phone list then top 5 lower price IOS phones
SELECT*FROM mobile WHERE Operating_System_Type = 'IOS'
ORDER BY price ASC 
LIMIT 5;

-- 09 Write a quary which phone support 5g and alos top 5 phone with 5g support
SELECT*FROM mobile WHERE 5G_Availability = "Yes"
ORDER BY price DESC
LIMIT 5;

-- 10 Total price of all mobile is to be found with brand name
SELECT Brands, sum(Price) FROM mobile GROUP BY Brands;