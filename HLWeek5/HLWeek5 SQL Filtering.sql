use sakila;

-- Task 1 - Which of the payment IDs will be returned by the following filetr conditions?
select payment_id
from payment
where customer_id <> 5 and (amount >8 or date (payment_date) = '2005-08-23');

-- Task 2 - Which of the payment IDs will be returned by the following filetr conditions?
select payment_id
from payment
where customer_id = 5 and not (amount >6 or date (payment_date) = '2005-06-19');

-- Task 3 - Construct a query that retrives all rows from payment table where the amount is either 1.98, 7.98, 9.98
select *
from payment 
where amount = 1.98 or amount = 7.98 
	or amount = 9.98;

-- Task 4 - Construct a query that find all customers whos last name contains A in the second position and W anywhere after A
 select *
 from customer
 where last_name like '_A%W';



