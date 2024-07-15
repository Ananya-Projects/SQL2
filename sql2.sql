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








