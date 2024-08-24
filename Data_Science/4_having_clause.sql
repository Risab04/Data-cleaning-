-- having
use parks_and_recreation;
select gender ,avg(age), max(age)
from employee_demographics group by gender having avg(age)> 40;
-- ref 
select * from employee_salary;
select occupation from employee_salary where occupation like '%manager';

select occupation from employee_salary where occupation like '%manager'
group by occupation having avg(salary)>60000;