create database satyug;

use satyug;

create table products (
product_id int,
product_name varchar(20),
product_price int,
stock_qty int
);

select * from products;

insert into products values
(1,"Laptop",34500,120),
(2,"Phone",12500,300),
(3,"Toy",2000,12),
(4,"Dolo",10,1000),
(5,"Lamp",200,550);

select * from products;

alter table products 
add column discount float;

select * from products;

alter table products
drop column discount;

select * from products;

drop table products;

select * from products;

insert into products values
(6,"cycle",4500,24);

select * from products;

use satyug;

update products 
set product_price = 200 
where product_id = 6;

select * from products;

delete from products where product_id = 4 ;

select * from products;

select product_name,product_price,stock_qty from products;

select * from products
where product_price >= 500;

select * from products 
order by stock_qty ;

select * from products 
order by stock_qty desc;

select count(*) from products;

select count(*) as total_data from products;

select sum(product_price) from products;

select sum(product_price) as total_price from products;

select avg(product_price) as avg_price from products;

select min(product_price) as min_price from products;

select max(product_price) as max_price from products;

select now() as current_date_time;

select year(now()) as current_year;

select month(now()) as current_month;

select day(now()) as current_day;

select hour(now()) as current_hour;

select minute(now()) as current_minute;

select second(now()) as current_second;

select date_add(now(), interval 10 day);

select dayname(now()) as current_day;

select * from products
union
select * from products2;

select * from products
union all
select * from products2;

/*
select * from products
intersect
select * from products2;
*/

select * from satyug_employee_data as ed
inner join satyug_salary_data as sd
on ed.salary_id = sd.salary_id;

select 
ed.Eid,
ed.Name,
ed.Designation,
ed.Dept,
ed.Salary_id,
sd.Salary
from satyug_employee_data as ed
inner join satyug_salary_data as sd
on ed.salary_id = sd.salary_id;

select 
ed.Eid,
ed.Name,
ed.Designation,
ed.Dept,
ed.Salary_id,
sd.Salary
from satyug_employee_data as ed
left join satyug_salary_data as sd
on ed.salary_id = sd.salary_id;

select 
ed.Eid,
ed.Name,
ed.Designation,
ed.Dept,
sd.Salary_id,
sd.Salary
from satyug_employee_data as ed
right join satyug_salary_data as sd
on ed.salary_id = sd.salary_id;

select 
ed.Eid,
ed.Name,
ed.Designation,
ed.Dept,
sd.Salary_id,
sd.Salary
from satyug_employee_data as ed
right outer join satyug_salary_data as sd
on ed.salary_id = sd.salary_id;

select 
ed.Eid,
ed.Name,
ed.Designation,
ed.Dept,
sd.Salary_id,
sd.Salary
from satyug_employee_data as ed
cross join satyug_salary_data as sd;

select 
ed.Eid,
ed.Name,
ed.Designation,
ed.Dept,
sd.Salary_id,
sd.Salary
from satyug_employee_data as ed
cross join satyug_salary_data as sd
on ed.salary_id = sd.salary_id;

/*inner join with cross join*/

use satyug; 

create view cross_join_result as 
select 
ed.Eid,
ed.Name,
ed.Designation,
ed.Dept,
sd.Salary_id,
sd.Salary
from satyug_employee_data as ed
cross join satyug_salary_data as sd
on ed.salary_id = sd.salary_id;

select * from cross_join_result;

create or replace view cross_join_result as
select * from satyug_employee_data;

select * from cross_join_result;

drop view cross_join_result;

select * from cross_join_result;

select * from products
where product_price >= 500;

create index idx_price
on products(product_price);

drop index idx_price
on products;

show tables;

-- single row sub-query

select product_name
from products
where product_id = (select min(product_id) from products);

select product_name
from products
where product_id 
in (select product_id from products where product_price > 500);

select product_name , stock_qty
from products
where (product_id , product_name)
in (select product_id, product_name from products where product_id = 1);

-- select * from world.country;

use world;

show tables;

select * from country;

select Continent, sum(population) as Total_population
from world.country
group by Continent;

select Continent, 
sum(population) as Total_population,
min(population) as Min_population,
max(population) as Max_population,
avg(population) as Avg_population
from world.country
group by Continent;

select continent,name,min(population) as min_popu
from world.country
group by continent,name
having min_popu = 7000;

-- select min(population)(select continent,min(population) 
-- from world.country
-- group by continent);

select Continent, sum(population) 
as Total_population
from world.country
group by Continent
order by total_population desc
limit 3;

select * from satyug.it_emp_salary;

select empposition, max(salary)
from satyug.it_emp_salary
group by empposition;








create database ananya;















create database customer;
use customer;

select concat(`first name`, ' ', `last name`) AS `full name`
from `customers-100`;



select count(*) 
as `2000`
from `customers-100`
where year(`subscription date`) = 2000;

select count(*) 
as `2021`
from `customers-100`
where year(`subscription date`) = 2021;

select count(*) 
as `2022`
from `customers-100`
where year(`subscription date`) = 2022;


select * from `customers-100`;

select `first name`, `last name`, `email`
from `customers-100`;


select 
`first name`,
`last name`,
`company`, 
`city`, 
`country`
from `customers-100`
where `company` = (
    select `company`
    from `customers-100`
    group by `company`
    order by count(*) desc
    limit 1
);


select 
`first name`, 
`last name`, 
`company`, 
`city`, 
`country`
from `customers-100`
where `city` = (
    select `city`
    from `customers-100`
    group by `city`
    order by count(*) desc
    limit 1
);


select 
`first name`, 
`last name`, 
`company`, 
`city`, 
`country`
from `customers-100`
where `country` = (
    select `country`
    from `customers-100`
    group by `country`
    order by count(*) desc
    limit 1
);


select 
`city`, 
`country`, 
count(*) 
from `customers-100`
group by `city`, `country`;


update `customers-100`
set `email` = 'xyz@gmail.com'
where `customer id` = 'DD37Cf93aecA6Dc';

update `customers-100`
set `email` = 'abc@gmail.com'
where `customer id` = '1Ef7b82A4CAAD10'; 


select count(*)
from `customers-100`
where `phone 2` 
is null or `phone 2` = '';








