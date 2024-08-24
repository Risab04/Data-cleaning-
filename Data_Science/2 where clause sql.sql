-- where clause 
use parks_and_recreation;
select * from employee_salary where first_name = 'leslie';

select * from employee_salary where salary >= 50000;

select * from employee_demographics where birth_date > '1985-01-01';


-- AND OR NOT -- LOGICAL OPERATOR 

select * from employee_demographics where birth_date > '1985-01-01'
AND gender = 'male';

select * from employee_demographics where birth_date > '1985-01-01'
or gender = 'male';

select * from employee_demographics where (first_name = 'tom' and age = 36) 
or age > 60;

-- LIKE STATEMENT
-- % and _

select * from employee_demographics where first_name like '%er%';

select * from employee_demographics where first_name like 'a___';





