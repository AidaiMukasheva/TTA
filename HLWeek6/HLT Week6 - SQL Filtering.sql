use sakila;
-- Task 1 - Construct a query that counts the number of rows in Payment table
select payment_id, count(*)
from payment;

-- Task 2 - Modify your query from question 1 to count the number of payments made by each customer. 
select customer_id, sum(amount) as total_amt, count(*) as num_of_paymt
from payment
group by customer_id;

-- Task 3 - Modify your query from Task 2 to include only those customers having made at least 5 payments
select customer_id, count(*) as num_of_paymt
from payment
group by customer_id
having count(*) >=5;

-- Task 4 - 
create table Sales_Fact (
sales_id smallint unsigned,
year_no smallint unsigned,
month_no smallint unsigned,
tot_sales int);

insert into Sales_Fact
(sales_id, year_no, month_no, tot_sales)
values (1, 2019, 1, 19228), (2, 2019, 2, 18554), (3, 2019, 3, 17325), (4, 2019, 4, 13221), (5, 2019, 5, 9964), (6, 2019, 6, 12658), (7, 2019, 7, 14233), (8, 2019, 8, 17342), (9, 2019, 9, 16853), (10, 2019, 10, 17121), (11, 2019, 11, 19095), (12, 2019, 12, 21436), (13, 2020, 1, 20347), (14, 2020, 2, 17437), (15, 2020, 3, 16225), (16, 2020, 4, 13853), (17, 2020, 5, 14589), (18, 2020, 6, 13248), (19, 2020, 7, 8728), (20, 2020, 8, 9378), (21, 2020, 9, 11467), (22, 2020, 10, 13842), (23, 2020, 11, 15742), (24, 2020, 12, 18636);

select *
from Sales_Fact;

select year_no, month_no, tot_sales,
rank() over (order by tot_sales desc) sales_rank
from Sales_Fact;

-- Task 5 - Modify the query from Task 4
select *,
rank() over (partition by year_no order by tot_sales desc) sales_rank
from Sales_Fact;

-- Task 6 - Write the query that retrives all 2020 data ansd include a column which will contain the tot_sales value for previous month
select *, 
lag (tot_sales, 1) 	over (order by month_no) prev_wk_tot
from Sales_Fact
where year_no = 2020;




