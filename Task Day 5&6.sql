-- Question 3 Find quantity of the products ordered 
select ProductName ,
sum(OrderQty) as total_ordered_quantity 
from functions_sample.sales_data
group by ProductName
order by total_ordered_quantity desc  
;

-- which product is ordered in least quantity 

with CTE as(
select ProductName ,
sum(OrderQty) as total_ordered_quantity
from functions_sample.sales_data
group by ProductName )
select * ,rank () over (order by total_ordered_quantity asc)
 from CTE 
 limit 1;






-- Question 5
select customerName, count(SalesOrderID) no_of_orders
from functions_sample.sales_data
group by 1
order by no_of_orders desc
limit 5;

-- Queston 6 

with CTE as (
select CustomerName 
, count(SalesOrderID) order_count
from functions_sample.sales_data 
group by CustomerName)
select *,dense_rank() over (order by order_count desc) as rnk from CTE 
limit 10
;

-- Question 7
select 
CustomerName 
,count(salesOrderID) order_count 
from functions_sample.sales_data
group by 1 
having order_count < 50
order by order_count asc ;

-- Question 8 

select 
date_format(orderdate, '%y/%m') month_year ,
round(sum(SalesAmount) ) as curr_salesAmount
from functions_sample.sales_data
group by 1
order by 1,2
limit 5;

-- Question 9 

with CTE as (select 
date_format(orderdate, '%y/%m') month_year ,
round(sum(SalesAmount) ) as curr_salesAmount
from functions_sample.sales_data 
group by 1)
select month_year , curr_salesAmount ,
lag (curr_salesAmount) over (order by Month_year) as previous_month_sales
, case when curr_salesAmount > lag (curr_salesAmount) over (order by Month_year) then ' increase '
else 'decrease' end as sales_status from CTE 
limit 10 ;