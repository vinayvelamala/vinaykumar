use sample_test;
select * from customers;

### Sample Superstore SQL Questions

#### Basic Queries:

#1. Retrieve all columns from the `Orders` table.
select * from orders;

#2. Select the first 10 records from the `Customers` table.
select * from customers
limit 10;

#3. Count the total number of orders placed.
select count(*) from orders;

#4. List unique customer names from the `Customers` table.
select * from customers;
SELECT DISTINCT Cust_Name FROM Customers;

#5. Find the order with the highest `Sales` value.
select * from orders;
select * from orders
order by sales desc
limit 1;

select order_id,sales from (select order_id,sales,rank() over (order by sales desc) as rank_order from orders)as rnk
where rank_order = 1;

select order_id,sales from orders
where sales = (select max(sales) from orders);

WITH RankedOrders AS (
    SELECT Order_ID, Sales, ROW_NUMBER() OVER (ORDER BY Sales DESC) as row_num
    FROM Orders
)
SELECT Order_ID, Sales
FROM RankedOrders
WHERE row_num = 1;


#### Filtering and Sorting:
#6. List all orders with `Sales` greater than $1000.
select * from orders;
select sales,(sales * 80) as dollers from orders
where (sales * 80) > 1000;


#7. Retrieve all customers from the state of "California".
select * from location;
select * from location
where state = 'California';

#8. List the top 5 orders by `Profit` in descending order.
select * from orders;
select order_id,sales,profit from orders
order by profit desc
limit 5;


#9. Find all orders placed in the year 2020.
select order_id,order_date,sales from orders
where order_date like '%2020';


#10. Retrieve orders with `Discount` between 10% and 20%.
select * from orders;
select order_id,order_date,sales,discount from orders
where discount between 0.10 and 0.20;

#### Aggregation and Grouping:
#11. Calculate the total `Sales` for each `Region`.
#12. Find the average `Profit` for each `Category`.
#13. Count the number of orders for each `Customer`.
#14. Retrieve the maximum `Sales` value for each `Sub-Category`.
#15. Calculate the total `Quantity` of items sold per `Category`.

#### Joins:
-- 16. Join the `Orders` and `Customers` tables to list all orders with customer names.
-- 17. Retrieve orders with their respective `Ship Mode` from the `Orders` table.
-- 18. Find customers who have placed more than 5 orders.
-- 19. List all orders with the `City` and `State` of the customer.
-- 20. Calculate the total `Sales` and `Profit` for each customer.

#### Advanced Queries:
-- 21. Calculate the cumulative `Sales` for each order.
-- 22. Find the average `Discount` for each `Region`.
-- 23. Retrieve the top 3 `Products` by `Sales` in each `Category`.
-- 24. List the top 10 `Customers` by total `Sales`.
-- 25. Find the `Ship Mode` with the highest average `Profit`.

#### Subqueries:
-- 26. Find the order with the lowest `Sales` using a subquery.
-- 27. List customers who placed orders in both "Technology" and "Furniture" categories.
-- 28. Retrieve orders where the `Sales` value is above the average `Sales`.
-- 29. List customers whose total `Profit` exceeds the overall average `Profit`.
-- 30. Find the `Product` with the second highest `Sales`.

#### Window Functions:
-- 31. Calculate the rank of each `Order` based on `Sales`.
-- 32. Find the running total of `Profit` for each `Region`.
-- 33. Retrieve the lagged `Sales` value for each order.
-- 34. Find the lead `Discount` value for each `Product`.
-- 35. Calculate the dense rank of `Customers` based on total `Sales`.

#### Miscellaneous:
-- 36. Find the total number of unique products sold.
-- 37. List the top 5 states by total `Sales`.
-- 38. Calculate the average `Quantity` of items sold per `Product`.
-- 39. Find the orders with a `Profit` margin (Profit/Sales) greater than 20%.
-- 40. Retrieve all products that have never been sold.

#### Complex Queries:
-- 41. Find the average `Sales` per month for each `Category`.
-- 42. List customers who have placed orders in every `Region`.
-- 43. Calculate the percentage contribution of each `Product` to total `Sales`.
-- 44. Retrieve orders with the highest `Sales` in each quarter.
-- 45. Find the total `Profit` for each year and each `Category`.

#### Advanced Aggregations:
-- 46. Calculate the moving average of `Sales` over the last 3 months.
-- 47. List the top 5 customers by total `Profit` for each year.
-- 48. Find the median `Sales` value for each `Sub-Category`.
-- 49. Calculate the total `Discount` given in each month.
-- 50. Retrieve the top 3 products by `Profit` in each `Region`.


