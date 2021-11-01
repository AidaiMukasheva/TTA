-- Task1
select insert('Hello! I am Aidai and I am 30 years old. I live in London.', 6, 0, ' everyone') string;
select substring('Hello! I am Aidai and I am 30 years old. I live in London.', 17, 9);
select substring('Good afternoon! I am aidain and I am 30 years old. I live in London.', 1, 14);

-- Task 2

select abs(-25.76823), sign(-25.76823);
select round(-25.76823,2);
select abs(-25.76823), sign(-25.76823), round(-25.76823,2);

-- Task3
select current_date(), current_time(), current_timestamp();
select extract(month from current_date());

