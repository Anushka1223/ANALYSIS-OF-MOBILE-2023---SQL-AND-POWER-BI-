create schema mobile_data;
use mobile_data;

-- Check mobile feature and price list--
select phone_name, price from mobile;

-- Find out the 5 most expensive phones--
SELECT * FROM MOBILE
 ORDER BY PRICE DESC
  limit 5;
 
 -- Find out the price of 5 most cheapest phones--
SELECT * FROM mobile 
order by price asc
limit 5;

-- list of top 5 samsung phones with price and all features--
select * from mobile where brands = "samsung"
order by price desc
limit 5;

-- Must have android phone list then top 5 high price android phones --
select*from mobile where Operating_System_Type ="Android"
ORDER BY PRICE DESC
LIMIT 5;

-- Must have android phone list then top 5 lower price android phones--
select * from mobile where operating_system_type = "android"
order by price asc
limit 5;

-- Must have IOS phone list then top 5 high price IOS phones--
select * from mobile where operating_system_type = "IOS"
order by price desc
limit 5;

-- Must have IOS phone list then top 5 lower price IOS phones--
select * from mobile where operating_system_type = "IOS"
order by price asc
limit 5;

-- Write a query which phone support 5G and also top 5 phone with 5G support--
select * from mobile where 5G_availability = "yes"
order by price desc
limit 5;

-- Total price of all mobile is to be found with brand name--
select brands, sum(price) from mobile group by brands;


