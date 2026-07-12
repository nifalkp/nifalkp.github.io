create database walmart_sales;
use walmart_sales;
CREATE TABLE sales (
    store INT,
    date DATE,
    weekly_sales DECIMAL(12,2),
    holiday_flag TINYINT,
    temperature DECIMAL(5,2),
    fuel_price DECIMAL(5,3),
    cpi DECIMAL(10,7),
    unemployment DECIMAL(5,3)
);
select * from sales limit 10
select year(date) as year,month(date) as month, sum(weekly_sales)as total_sales
from sales
group by year(date),month(date)
order by year,month;
select store,sum(weekly_sales)as total_sales,avg(weekly_sales) avg_sales
from sales
group by store
order by  total_sales desc
limit 10;
select store,avg(weekly_sales)as store_avg
from sales
group by store
order by store_avg desc
limit 5;
select holiday_flag,avg(weekly_sales)as avg_sales, count(*) as weeks
from sales
where store=20
group by holiday_flag;
SELECT holiday_flag, AVG(weekly_sales) AS avg_sales
FROM sales
GROUP BY holiday_flag;
SELECT AVG(temperature) AS avg_temp, AVG(fuel_price) AS avg_fuel, 
       AVG(cpi) AS avg_cpi, AVG(unemployment) AS avg_unemployment
FROM sales
WHERE store = 20;
SELECT AVG(temperature) AS avg_temp, AVG(fuel_price) AS avg_fuel, 
       AVG(cpi) AS avg_cpi, AVG(unemployment) AS avg_unemployment
FROM sales;
SELECT YEAR(date) AS year, MONTH(date) AS month, SUM(weekly_sales) AS total_sales
FROM sales
GROUP BY YEAR(date), MONTH(date)
ORDER BY total_sales DESC
LIMIT 1;
SELECT YEAR(date) AS year, MONTH(date) AS month, SUM(weekly_sales) AS total_sales
FROM sales
GROUP BY YEAR(date), MONTH(date)
ORDER BY total_sales ASC
LIMIT 1;
SELECT * FROM sales;