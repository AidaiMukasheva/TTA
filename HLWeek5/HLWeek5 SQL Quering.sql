use sakila;

-- Task 1 - Fill in the blanks for the following query to obtain the following results

select c.first_name, c.last_name, a.address, ct.city
from customer c
inner join address a 
	on c.address_id = a.address_id
inner join city ct
	on a.city_id = ct.city_id
where a.district = 'California';

-- Task 2 - Wrtite a query that returns a title of every film in which an actor with the first name John appeared

select title
from film f
	inner join film_actor fa
    on f.film_id = fa.film_id
    inner join actor a
    on fa.actor_id = a.actor_id
where a.first_name = 'John'; 

-- Task 3 - Construct a query that returns all addresses which are in the same city. 

select a1.address as address1, a2.address as address2, a1.city_id, a2.city_id
from address a1
	inner join address a2
    on a1.city_id = a2.city_id and a1.address_id < a2.address_id;
    


