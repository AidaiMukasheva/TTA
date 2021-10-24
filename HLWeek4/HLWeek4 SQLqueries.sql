-- 1. Retrieve the actor ID, fname and lname. Sort by lname and fname

use sakila;

select *
from actor;

select actor_id, last_name, first_name
from actor;

-- Sort by Last name 
select actor_id, last_name, first_name
from actor
order by last_name asc;

-- Sort by first name 
select actor_id, first_name, last_name
from actor
order by first_name asc;

-- 2. Retrieve actor ID, fname, lname for all actors whose lname = "Williams" or "Davis"
select last_name, first_name
from actor
where (last_name = "Williams") or (last_name =  "Davis");

-- 3. Write a query agains the rental table that returns the IDs of the customers who rented a film on 5th of July 2005

select customer.customer_id,
	date(rental.rental_date) rental_time
from customer customer
	inner join rental rental
	on customer.customer_id = rental.customer_id
where date(rental.rental_date) = "2005-07-05"
order by customer_id asc;

-- 4. Fill in the blanks

select c.email, r.return_date
from customer c 
	inner join rental r
    on c.customer_id = r.customer_id
where date (r.rental_date) = "2005-06-14"
order by date (r.return_date) desc;







