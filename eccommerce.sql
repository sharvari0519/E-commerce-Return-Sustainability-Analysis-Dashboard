SELECT * FROM ecommerce.returns_sustainability_dataset;
use ecommerce;
select count(*) as totalorder from ecommerce.returns_sustainability_dataset ;
select SUM(Product_Price*order_Quantity) as totalrevenue from ecommerce.returns_sustainability_dataset;
select avg(Product_Price*order_Quantity) as total_average_value from ecommerce.returns_sustainability_dataset;
select sum(order_Quantity)as total_quantity from  ecommerce.returns_sustainability_dataset;
select Product_Category ,sum(Product_Price*Order_Quantity)as revenue from  ecommerce.returns_sustainability_dataset group by Product_Category order by revenue desc;
select Product_Category ,count(*) from ecommerce.returns_sustainability_dataset group by Product_Category order by Product_Category  desc;
select Product_Category,avg(Product_Price) from ecommerce.returns_sustainability_dataset group by Product_Category;
select Product_Category,sum(Discount_Amt)  from ecommerce.returns_sustainability_dataset group by Product_Category;
select Payment_Method,count(*)  as orders from ecommerce.returns_sustainability_dataset group by Payment_Method;
select Payment_Method,sum(Product_Price*Order_Quantity) as revenue from ecommerce.returns_sustainability_dataset group by Payment_Method;
select User_ID ,sum(Product_Price*Order_Quantity) as total_spent from ecommerce.returns_sustainability_dataset group by User_ID order by total_spent desc limit 10;
select Product_ID,sum(Order_Quantity) as total_sold from ecommerce.returns_sustainability_dataset group by Product_ID  order by total_sold desc limit 10;
select Product_ID ,max(Product_price) as  highest_price from  ecommerce.returns_sustainability_dataset group by Product_ID order by highest_price desc;
select avg(Order_Quantity) as average_quantity from ecommerce.returns_sustainability_dataset;
SELECT
MONTH(Order_Date) AS Months,
COUNT(*) AS Orders
FROM ecommerce.returns_sustainability_dataset
GROUP BY MONTH(Order_Date)
ORDER BY Months;
SELECT MONTH(order_date) AS Month,
SUM( Product_price * Order_Quantity) AS Revenue
FROM ecommerce.returns_sustainability_dataset
GROUP BY MONTH(order_date)
ORDER BY Month;
select * from ecommerce.returns_sustainability_dataset where Discount_Applied>20;
select User_ID ,count(*) as orders from ecommerce.returns_sustainability_dataset group by User_ID having count(*)>5;
select Product_Category,avg(Product_Price) from ecommerce.returns_sustainability_dataset group by Product_Category having avg(Product_Price>500);
SELECT SUM((Product_Price * Order_Quantity)-((Product_Price * Order_Quantity * Discount_Applied) / 100)) AS Net_Revenue FROM ecommerce.returns_sustainability_dataset;
SELECT YEAR(order_date) AS Year,
COUNT(*) AS Orders
FROM ecommerce.returns_sustainability_dataset
GROUP BY YEAR(order_date);
SELECT YEAR(order_date) AS Year,
SUM(Product_Price*Order_Quantity) AS Revenue
FROM ecommerce.returns_sustainability_dataset
GROUP BY YEAR(order_date);
SELECT *
FROM ecommerce.returns_sustainability_dataset
WHERE Order_Quantity>
(
SELECT AVG(Order_Quantity)
FROM ecommerce.returns_sustainability_dataset
);
SELECT
Product_Category,
SUM(Product_Price*Order_Quantity) AS Revenue
FROM  ecommerce.returns_sustainability_dataset
GROUP BY Product_Category
ORDER BY Revenue DESC;
SELECT Order_Date
FROM ecommerce.returns_sustainability_dataset
LIMIT 5;
UPDATE ecommerce.returns_sustainability_dataset
SET Order_Date = STR_TO_DATE(Order_Date, '%d-%m-%Y');
ALTER TABLE ecommerce.returns_sustainability_dataset
RENAME COLUMN `MONTH` TO `MONTHSS`;