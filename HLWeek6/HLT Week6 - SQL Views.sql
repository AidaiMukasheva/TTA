-- Task 1 - Create a view definition that can be used by the following query to generate the given results.
use sakila;

create view film_ctgry_actor
	as
select f.title, c.name, a.first_name, a.last_name
from film f
	inner join film_category as fc
    on f.film_id = fc.film_id
    inner join category c
    on fc.category_id = c.category_id
    inner join film_actor fa
    on fa.film_id = f.film_id
    inner join actor a
    on fa.actor_id = a.actor_id
where first_name = 'BOB' and last_name = 'FAWCETT'
order by 1;
    
select *
from film_ctgry_actor;

drop view film_ctgry_actor;

-- Task2 - 

create view total_country_paymnts
as
select country as countries,
	(select sum(p.amount)
    from city ct
    inner join address a 
    on ct.city_id = a.city_id
    inner join customer cs
    on a.address_id = cs.address_id
    inner join payment p 
    on cs.customer_id = p.customer_id
where ct.country_id = c.country_id)
tot_payments 
from country c;

select *
from total_country_paymnts;

drop view total_country_paymnts;