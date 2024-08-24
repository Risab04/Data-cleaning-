-- Group by
select gender , avg(age), max(age)
from employee_demographics group by gender;

select occupation,avg(salary) from employee_salary group by occupation;

-- order by
select * from employee_demographics order by first_name asc;
select * from employee_demographics order by first_name desc;
select * from employee_demographics order by gender,age ;

