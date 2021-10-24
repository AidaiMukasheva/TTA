-- 1. create relational database
create database world;
use world;
-- drop database world;
-- 2. A table with a primary key and different datatypes.
create table countries (
	country_id smallint unsigned,
    country_name varchar (20),
    country_capital varchar (20),
    continent varchar (20),
    government varchar (20),
    population_mln decimal (6,2),
    gdp_per_capita int,
    iso2 enum ("GB","US","CN","AF","SE","AU", "NG","BR", "IS","IN", "CA"),
	 constraint pk_person primary key (country_id)
);

-- 3. Viewing and showing table structures.
explain countries;
desc countries;

-- 4. Entering records into table and viewing them.
insert into countries
	(country_id, country_name, country_capital, continent, government, population_mln, gdp_per_capita, iso2)
values (1, "UK", "London", "Europe", "Parliament", 67, 40284, "GB"), (2, "USA", "Washington, D.C", "North America", "President", 329, 63543, "US"), (3, "China", "Beijing", "Asia", "President", 1402, 105, "CN"), (4, "Afghanistan", "Kabul", "Asia", "President", 39, 508, "AF"), (5, "Sweden", "Stockholm", "Europe", "Parliament", 10.3, 51925, "SE"), (6, "Australia", "Canberra", "Australia", "Parliament", 25.7, 51812, "AU"), (7, "Nigeria", "Abuja", "Africa", "President", 206, 2097, "NG"), (8, "Brazil", "Brasilia", "South America", "President", 212.6,6796, "BR"), (9, "Iceland", "Reykjavik", "Europe", "Parliament",0.36,59260, "IS"),(10, "India", "New Delhi", "Asia", "Parliament", 1380, 1900, "IN"), (11, "Canada", "Ottawa", "North America", "Parliament", 38, 43241, "CA");

select *
from countries;

-- 5. Updating a record.
update countries
set government = "Parliament"
where country_id = 2;

select *
from countries;

update countries
set government = "President"
where country_id = 2;

select *
from countries
where country_id = 2;

-- 6. Deleting a record

delete from countries
where country_id = 5;

select *
from countries;

-- This code gives error message
-- delete from countries
-- where government = "President";

insert into countries
	(country_id, country_name, country_capital, continent, government, population_mln, gdp_per_capita, iso2)
values (5, "Sweden", "Stockholm", "Europe", "Parliament", 10.3, 51925, "SE");

select *
from countries;

-- 7.Create a second table that references the first table's primary key.
create table gov_ofic_name (
	country_id smallint unsigned,
    fname varchar (20),
    lname varchar (20),
    gender varchar (20),
    constraint pk_gov_ofic_name primary key (country_id, fname),
    constraint fk_gov_ofic_name_country_id foreign key (country_id)
    references countries (country_id));
  
explain gov_ofic_name;

insert into gov_ofic_name
	(country_id, fname, lname, gender)
values (1, "Boris", "Johnson", "Male"), (2, "Joe", "Biden", "Male"), (3, "Xi", "Jin Ping", "Male"), (4, "Hamid", "Karzai", "Male"), (5, "Stefan", "Lovfen", "Male"), (6, "Scott", "Morrison", "Male"), (7, "Muhammadu", "Buhari", "Male"), (8, "Jair", "Bolsonaro", "Male"), (9, "Gudni", "Th. Johonnesson", "Male"),(10, "Ram Nath", "Kivind", "Male"), (11, "Justin", "Trudeau", "Male");

select *
from gov_ofic_name
where country_id = 5;

    



