-- String function 

select length('risab');

select  first_name, length(first_name) from employee_demographics order by 2 ;

select first_name, (first_name) from employee_demographics;
select lower(first_name) from employee_demographics;

select trim('           sky          ');

select first_name , left(first_name,3),
right(first_name,3),
substring(first_name,2,3),
substring(birth_date,6,2)as month
from employee_demographics;

select first_name, replace(first_name,'a','z') from employee_demographics;

select first_name,locate('li',first_name)from employee_demographics;

select first_name, last_name, concat(first_name,' ' ,last_name)
 from employee_demographics;
